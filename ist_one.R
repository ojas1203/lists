x <- list(foo = 1:4, bar = 0.6,baz = "hello")
x[(1:3)]
x <- read.table("/Users/ojasvikumar/Desktop/R_language/hw1_data.csv",header=T,sep=",")
x
x[2,3]
x[47,2]
x[-1:-3,]
x[-1,]
nrow(x)
x[nrow(x)-1:nrow(x),]
x[nrow(x)-1:153,]
x<-matrix(1:6,2,3)
x
x[1,2]
x[1,2,drop=FALSE]
x[1,,drop=FALSE]
#####Partial Matching###
x<-list(ardwork = 1:5)
x$a
x[["a"]]
x[["a",exact = FALSE]]
x<-c(1,2,NA,7,8)
bad<-is.na(x)
bad
x[!bad]
x<-c(1,2,NA,7,8)
y<-c(1,2,NA,7,8)
good<-complete.cases(x,y)
good
x[good]
l<-x[good]
length(l)
x <- read.table("/Users/ojasvikumar/Desktop/R_language/hw1_data.csv",header=T,sep=",")
good<-complete.cases(x)
good
length(good)
x[good,][1:100,]
leng=x[good,][1:10,]
leng
length(leng)
x<-(1:4)
y<-(4:7)
x+y
x>2
x+y<11
x/y
mean(x)
median(x)
x <- read.table("/Users/ojasvikumar/Desktop/R_language/hw1_data.csv",header=T,sep=",")
x
x[152:153,]
x[47,1]
Ozone<-x[1]
bad<-is.na(Ozone)
y<-Ozone[bad]
length(y)
mean(Ozone,na.rm = TRUE)
x <- read.table("/Users/ojasvikumar/Desktop/R_language/hw1_data.csv",header=T,sep=",")
m<-complete.cases(x)
s<-x[[m]]
Ozon<-x$Ozone>31
Ozon
Tem<-x$Temp>90
Solar<-x$Solar.R
good<-complete.cases(Ozon,Tem,Solar)
y<-Solar[good]
mean(y,na.rm = TRUE)
mon<-x$Month 
Tem<-x$Temp
z<-x[x[,"Month"] == 6,]#select a particular coloumn from table during condition
z
y=z[4]
y
mean(z[4])
m<-complete.cases(mon,Tem)
m