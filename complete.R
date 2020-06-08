complete<-function(directory,id){
  myfiles<-list.files(path=directory,pattern = '*.csv',  full.names = TRUE)
  data_csv<- data.frame()
  
  for(i in id){
    temp_data<-read.csv(myfiles[i],header = TRUE)
    temp_data<-na.omit(temp_data)
    
    nobs<-nrow(temp_data)
    
    data_csv<-rbind(data_csv,data.frame(i,nobs))
  }
  return(data_csv)
}