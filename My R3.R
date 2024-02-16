#join (merge) data frames (inner, outer,left,righ)

df1 = data.frame(CustomerId=c(1:6),Product=c(rep("Oven",3),rep("Television",3)))
df1
df2=data.frame(CustomerId=c(2,4,6,7),State=c(rep("California",3),rep("Texas",1)))
df2

#merging happens based on the common name in both the data sets
# Inner join
df<-merge(x=df1,y=df2,by="CustomerId")
df

# outer join
df<-merge(x=df1,y=df2,by="CustomerId",all=TRUE)
df

x<-c(8,'Oven','California') #cbind is used to combine column wise
df3<-rbind(df,x)#it is used to combine rows in data frame
df3

#left outer join
df<-merge(x=df1,y=df2,by="CustomerId",all.x=TRUE)
df

#Right outer join
df<-merge(x=df1,y=df2,by="CustomerId",all.y=TRUE)
df

#cross join
df<-merge(x=df1,y=df2,by=NULL)
df


data("iris")
view(iris)

#Apply functions
#Returns a vector or array or list af values obtained by
#Applying a function to margins of an array or matrix or data frames
#apply(df ,1 or 2,function)

z=apply(iris[,1:4],2,mean) # 2 for column wise # 1 for row wise
z

##lapply function takes list, vector or dataframe as inpput and return on;y list as output
#lapply(df,function)
x=lapply(iris[,1:4],mean)
x

##sapply function takes list, vector or data frame as input. it is similar to lapply
#function but returns only vector as output

y=sapply(iris[,1:4],mean)
y

data("iris")
iris$Sepal.Length

attach(iris)
Sepal.Length

detach(iris)
Sepal.Length

#tapply
tapply(Sepal.Length,Species,mean) #mean of sepal.length of all 3 species

tapply(Sepal.Width, Species, median)
mean(iris$Sepal.Length)

data("mtcars")
view(mtcars)
mtcars
mtcars$mpg
mpg

nrow(mtcars)#no.of rows in mtcars
row.names(mtcars) #row names
ncol(mtcars) #no.of columns
colnames(mtcars) #column names in mtcars
names(mtcars)
dim(mtcars) #dimension names (row names and cloumn names)
dimnames(mtcars) #dimension names (row names and column names)

head(mtcars,10) #top 10 observations
tail(mtcars,10) #bottom 10 observations

data('mtcars')
min(mtcars$mpg, na.rm=T) #na.rm---> Remove NA values
max(mtcRs$mpg, na.rm=T)
range(mtcras$mpg,na.rm=T) #Return both min and max

#mean & median
mean(mtcars$mpg,na.rm=T) # average
median(mtcars$mpg,na.rm=T) #middle most value in the data set after arranging in the ascending or descending order
range(mtcars$mpg,na,rm=T)
mode(mtcars$hp)

library(modeest)
mlv(mtcars$hp,method="mfv")

x=factor(mtcars$cyl)
x
table(x)

##Handy dplyr verb:
#filter--> filter()
#select-->select()
#Arrange--> arrange()

install.packages('dplyr')
library(dplyr)
#Structure:
#First argument is a Dataframe
#subsequent argument say what to do with data frame
#Always return a data frame

# you can use "," or "&" to use and condition
#filter(df,condition)
mtcars[,c(2,10)]#extract entire rows and in columns 2 and 10
filter(mtcars,cyl==8)

filter(mtcars,cyl==8,gear==5)

filter(mtcars,cyl==8|gear==5) #AND gate & and OR gate |

#select method
sel=select(mtcars,mpg,cyl,gear)
sel

filter(select(mtcars,mpg,cyl,gear),cyl==4)
#use ":" to select multiple continguous columns
#and use "contains" to match columns by name

select(mtcars,carb,mpg:disp,gear)

#syntax:
#arrange(dataframe,orderby)
arrange(mtcars,cyl)
arrange(select(mtcars,cyl,gear),cyl)
arrange(select(mtcars,cyl,gear),cyl,gear)
arrange(select(mtcars,cyl,gear),desc(cyl))
arrange(select(mtcars,cyl,gear),cyl,desc(gear))

#visualizations
data("mtcars")
view(mtcars)
plot(mtcars$mpg,mtcars$disp) #relationshio b/w variable scatterplot
plot(mtcars$disp,mtcars$hp)

#Histogram(Univariante)
hist(mtcars$mpg)

#boxplot(to identify outliers)
boxplot(mtcars$hp)

install.packages("ggplot2")
library(ggplot2)
pairs(mtcars)
pairs(mtcars[,1:7])

