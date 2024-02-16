# decision making statements in R
# If statement
#systax:
if(test_expression)
  {
  statements
  }

x <- 4 
if(x>0)
{
  print("positive number")
  print(x)
}

#If Else statement
#syntax:
if(test_expression)
{
  statement1
}else
{
  statement2
}

x <- 7
if(x>0)
{
  print("Non-negative number")
} else
{
  print("Negative number")
}

#Nested if else statement
#syntax:
if(test_expression1)
{  
  statement1
}else if(test_expression2)
{
  statement2
}else if(test_expression3)
{
  statement3
}else statement4


x<-2
if(x==0)
{
  print("zero")
} else if (x>0)
{
  print("positive number")
} else
  print("Negative number")


# There is an easier way to use if..else statement specifically for vectors in R program
# syntax: ifelse (test_expression,x,y)
a=c(5,7,2,9)
ifelse(a%%2==0,"even","odd")  

a/2
a%%2

client<-c("private","public","other",'private')
ifelse(client=='private',1.12 , ifelse(client=='other',1.06,1))

# ifelse(condition,true,ifelse(condition,1,ifelse(condition,2,3)))
# loops in R
# while loop
# syntax
while(test_expression)
{
  statement
}

i<-1
while(i<6)
{
  print(i)
  i=i+1
}


#repeat loop
#syntax
repeat{
  commands
  if(condition){
  break
  }
}

v<-"hello"
cnt<-2
repeat{
  print(v)
  cnt<-cnt+1
  
  if(cnt>5){
    break
  }
}

#for loop
#syntax:
for(value in vector){
  statements
}
  
v<- LETTERS[1:4]
v
for(b in v){
  print(b)
}

for(i in 1:length(v)){
  print(v[i])
}

# loop control statements
# break statement - terminates the loop statement and transfers execution to the statement
# immediately following the loop
#next statement- useful when we want to skip the current iteration of a loop without

v<-LETTERS[1:6]
for (i in v){
  if(i=='E'){
    next
  }
  print(i)
}


#Function
#syntax
function_name<-function(arq_1,arq_2,...){
  function body
}

#user-defines function
new.function<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}

#calling a function
new.function(10)

#calling a function without an argument
hi<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
hi()

#calling a function with default argument
#create a function with arguments
first<-function(a=3,b=6){
  result<-a*b
  print(result)
}

#call the function without giving any argument.
first()

#call the function with giving new values of the argument
first(5,7)

#lazy evaluation of function
#create a function with arguments
new.function<-function(a,b){
  print(a^2)
  print(a)
  print(b)
}
#Evaluate the function without supplying one of the arguments.
new.function(12,3)

##unless u call the function u can't see the output

#mode of r
mysamples<-c(29,4,5,7,29,19,29,13,25,19)
mean(mysamples)
median(mysamples)
mode(mysamples)
library(modeest)
mlv(mysamples,method="mfv") #most frequent values


#IMPORTING THE CARS DATASET
data=read.csv(file.choose())
view(data)
summary(data)
data1 = read.csv(file.choose())
