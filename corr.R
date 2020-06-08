corr<-function(directory,threshold=0){
  myfiles<-list.files(directory,full.names = TRUE)
  
  data<-vector(mode='numeric', length=0)
  
  for(i in 1:length(myfiles)){
    temp<- read.csv(myfiles[i],header=TRUE)
    
    temp<-temp[complete.cases(temp),]
    csum<-nrow(temp)
    
    if(csum>threshold){
      data<-c(data, cor(temp$nitrate,temp$sulfate))
    }
  }
  return(data)
}