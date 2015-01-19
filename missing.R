missing<-function()
  
{
  # method of changing NA values to impute them to 0. Assume if there was no recording then value mustve been 0. New resulting dataframe hould be f
  
  #set current directory to coursera/Reprod
  
  a<-read.csv("activity.csv",header= TRUE)
  b<-na.omit(a)
  c<-aggregate(steps~interval, data=b, FUN=mean)
  e<-cbind(c[,2],c[,1])
  colnames(e)<-c("steps","interval")
  
  print(head(a))
  print(head(b))
  print("this is it)")
  print(head(e),3)
 
  
  a1<-data.frame()    # this is a new data frame we are creating to replace the current "steps" column. 
  a2<-data.frame()
  row<-nrow(a)
  
  for (i in 1:row)
  {
    if(is.na(a[i,1]))
    {
      
      a1[i,1]<-0
    }
  else
    {
      a1[i,1]<-a[i,1]
    }
    
  }
  
  f<-cbind(a1,a$date,a$interval)
  print("head of a1")
  print((f))
 colnames(f)<-c("steps","date","interval")
  
}


