run_analysis <- function()
{
        
        # Reads data from both data set
        # lee los datos de ambos conjunto de datos
        
        id_sub_tr<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
        id_sub_te<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
        id_actv_tr<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
        id_actv_te<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
        mesure_tr<-read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
        mesure_te<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
        names_mesure<-read.table("./UCI HAR Dataset/features.txt",header=FALSE)
        
        # Build the data set
        # construye los data set
        
        dstr<-id_sub_tr
        dste<-id_sub_te
        
        #put label identifier of the subject
        #coloca la etiqueta al identificador del sujeto
        colnames(dstr)[1]="id_sub"
        colnames(dste)[1]="id_sub"
        
        # Adds the ID and activity data
        # agrega el identificador y datos de la actividad
        dstr$id_actv<-id_actv_tr$V1
        dste$id_actv<-id_actv_te$V1
        
        # Adds the names of the labels of each activity in the espcificado names_mesure
        # agrega los nombres de la etiquetas de cada actividad según los espcificado en names_mesure
        for (i in 1:561 ){
                name2<-c("")
                name2<-paste(name2,c(as.character(names_mesure[i,2]),sep=""))
                dstr$v1<-mesure_tr[,i]
                colnames(dstr)[2+i]=name2
        }
        
        for (i in 1:561 ){
                name2<-c("")
                name2<-paste(name2,c(as.character(names_mesure[i,2]),sep=""))
                dste$v1<-mesure_te[,i]
                colnames(dste)[2+i]=name2
        }
        
        # Merge the two sets
        # une los dos conjuntos
        dst_add <- rbind(dstr, dste)
        
        # Extract only the means of mean and std
        # Extrae solo las medias de mean y std
        dst_def<-dst_add[,grep('*mean*|*std*|id_sub|id_actv',names(dst_add))] 
        
        # Build the required data on 5
        # construye los datos requeridos en 5
        df5 <- data.frame()
        
        for (i in 1:30){
                for (j in 1:6){
                        df<-dst_def[dst_def$id_sub==i & dst_def$id_actv==j,]
                        d<-df[,grep('*mean*|*std*',names(df))] 
                        m<-colMeans(d)
                        mp<-c(id_sub=i,id_actv=j)
                        v<-c(mp,m)
                        df5 <- rbind(df5, v) 
                }
                
        }
        
        # Allocate the appropriate labels
        # asigna la etiquetas apropiadas
        names(df5)<-names(dst_def)
        for (i in 3:81)
        {
                names(df5)[i]<-paste("AV_",names(dst_def)[i],sep="")
        }
        
        df5
}