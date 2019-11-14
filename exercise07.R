#exercise 07

#1
gitoddrows<-function(x){
  oddrows<-x[seq(1, nrow(x), 2),] 
  return(oddrows)
}
gitoddrows(iris)
#2
numspecies<-function(x,spec){
  n<-nrow(x[x$Species==spec,])
  return(n)
}
numspecies(iris,"versicolor")
#3
width<-function(x,val){
  widthvalue<- x[x$Sepal.Width>val,]
  return(widthvalue)
}
width(iris,3.5)
#4
makefile <- function(x,spec){
  speciesname <- x[x$Species==spec,]
  write.csv(x=speciesname, file=paste(spec, '.csv', sep = ''))
}
makefile(iris,"setosa")
