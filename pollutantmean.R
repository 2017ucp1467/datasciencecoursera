pollutantmean<-function(directory,pollutant,id=1:332){
  myfiles<-list.files(path=directory,pattern = '*.csv',  full.names = TRUE)
  data_csv<- data.frame()
  
  for(i in id){
    temp_data<-read.csv(myfiles[i],header = TRUE)
    data_csv<-rbind(data_csv, temp_data)
  }
  return(mean(data_csv[,pollutant], na.rm= TRUE))
}