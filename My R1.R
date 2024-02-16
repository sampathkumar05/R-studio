5+6
5-6
5*6

1:10
1:50
50:1
print(100:1)


a = seq(1,10,by=2)
a


b=rep(1,10)
b

c=rep(1:5,5)
c

print("Welcome to R programming language")

print(22.5+12.7)
22.5+12.7




length <- 5
width <- 7
area <- length + width
area

# ctrl+l to clear the console or brush symbol in console
# In R the index values always starts with 1

'''
datatypes in R
1)numeric 
  a.double
  b.integer
2)character
3)logical - True,False
4)complex
  the combination of real and imaginary number
5)vector  
6)list
7)matrixs
8)array
9)factor 
10)data frame
'''

a=TRUE
a
class(a)
is.logical(a)

b<-10
b
class(b)
is.numeric(b)

c<-2L #any number ends with L is called integer
c
class(c)
is.integer(c)

d<-"sampath"
d
class(d)
is.character(d)


#logical vector
  #To store the multiple values into a single variable
  #using 'c'

a<-c(TRUE,FALSE,TRUE,FALSE)
a
class(a)


b<-c(1,2L,TRUE)
#   (numeric,integer,logical)
b
class(b)
#class will be choosen according to the priority wise

d<-c(2L,TRUE,3+4i)
d
class(d)

# numeric vector
e<-c(0,1,2,5.3,6.444,6,-8, c(7,8,9))
e
class(e)

g<-c(2L,5L,7)
g
class(g)

h<-c(2L,34,0L,6.64,4.55)
h
class(h)

# character
i<-c(2L,34,0L,'Basics')
i
class(i)


# complex 
j<-5+9i
j
class(j)

# character vector
k<-c("Right now",'it is','10:15 am')
k
class(k)

#accessing vector elements by their index or subscripts
a<-c(TRUE,FALSE,TRUE,FALSE)
a
a[1:3] #values from index 1 to 3
a[c(1,3)] #values of index 1 and 3


# viewing vectors in tabular format
k<-c("Right now",'it is','10:15 am')
view(k)

#vector                                      
#represent c
#multiple values
#datatype based on priority

#list
#represent list
#multiple values
#no.of datatype  as output

# list-can contain many different types of elements inside it like vectors,
# functions and even another list inside it
h<-list(23,21.3,c(1,2,3),'hello',sin) #adding the sin gives u the class as list
h
view(h)
class(h)
h[1]
h[2]
h[3]
h[3][1]
h[1:3]

g<-c(23,21.3,c(2,3,5),'hello',sin)
#vector with primitive function (sin)--->list
g
class(g)
view(g)
g[6]

h<-c(23,21.3,list(1,2,3),'hello')
h
class(h)


#vector(list)--->seperate's index
#list(vector)---> don't seperate index
#c(c)--->split
#list(c)--->don't split


h<-c(23,21.3,c(1,2,3),'hello',3+5i,2L)
h
class(h)


h<-c(23,21.3,c(1,2,3),'hello',3+5i,2L,mean)
h
class(h)

h<-list(23,21.3,c(1,2,3),'hello',3+5i,2L)
h
class(h)


# Accessing list elements by their index
h[[1]]
h[1]
h[[3]][2]


# Matrix - two dimentional (row*col) rectangular data set
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All col in a matrix must have the same type of mode(numeric,character,etc..)
# and the same length

i<-matrix(c(10,11,12),nrow=3,ncol=2,byrow=FALSE)
i
class(i)

#accessing the elements of a matrix
i[3,2]
  #3rd row , 2nd col
i[c(2,3),c(1,2)]
  #2nd and 3rd row, 1st and 2nd column


#Array - while matrices are confined to 2 dimensions, arrays can be of any number of dimentions
j<-array(c("r","pragramming","session"),dim=c(2,5,5)) #row,col,how many arrays
j
class(j)
#accessing the array
j[,,4] #4th array
# accessing  individual element from an array

j[2,5,4] #2nd row, 5th col and 4th array


# factor - variable which can take certain values (levels) and not any
# removing the duplicates & arranging in alphabetical order
k<-c("red","green","blue","red","red")
x<-factor(k)
class(x)
x

#DATAFRAME
# Unlike a matrix in data frame each column can contain different modes of data
# It is a list of vectors of equal length
m<-data.frame(gender=c("male","male","female"),height=c(152,171.5,165),weight=c(81,93,67), age=c(42,38,64))
m
class(m)

view(m)

#accessing col of a data frame
m[1]
m[3]
#accessing elements of a data frame
m$height
m$age
m$gender[3]
m[2]
m[[2]]
m[[2]][2]
m[c(2,0)]

m[c(1,2),c(2,3)] #accessing multiple items from a data frame

# end of data types

#variables or objects in R

#valid & invalid variables types

#valid
var_name2. <- 1 #has letters, numbers , dot and underscore
.var_name2 <- 2 #can start with a dot(.) but the dot(.) should not be followed by a number
var.name <- 3

#invalid
var_name% <- 4 #only dot(.) and underscore is allowed
2var_name <- 5 #cannot start with a number
.2var_name <-6 #should not be a dot followed by number
_var_name <- 7 #cannot start with _

# variable assignment
#the variables can be assigned values using leftward, rightward and equal to operator
# = 
# <-
# <<-
# ->
# ->>

# assignment using leftward operator
var.1<-c("r","praogramming")
var.1

#rightward
c(TRUE,4L)-> var.2
var.2

#equal
var.3=c(0,1,2,3)
var.3

# finding variables in environment
?ls #to know the explanation

ls()
a<-3
ls(pattern='var') #displays variables with var text in it
ls(all.name=TRUE) #also displays hidden(strating with .) variables 

#deleting the variables
a
rm(a) #will remove all variables with var text in it
a

# opertors in R
# 5 = arithematic,relational,logical,assignment,miscellaneous

# Arithematic operators
n <- c(1,2.4,6)
o<-c(3,4.7,9)
p<-c(1.9,5,8)

#1) addition
n+o+p

#2)sub
n-o
n-o-p

#3)mul
n*o*p

#4)div
  #quetient---> %/%
  #reminder--->%%
n/o

13%%4

13%/%4

# ^ power
2^3


#Relational operators - returns boolean values
q<-c(1,3,4,3,2)
r<-c(2,4,4,5,2)
#1) > greater than
q[1]>r[2]

#2) < less than
q<r

#3) == equal
q==r

#4)>= 
q>=r

#5)<=
q<=r

#6) !=
q!=r


# relational operator
# condition : all numbers greater than 1 are considered as logical value true
s<-c(3,1,TRUE,2+2i)
t<-c(4,1,FALSE,2+3i)

#1)& element wise logical AND
s&t

#2) | element wise logical OR
s|t

#3) ! logical NOT
!(s&t)
!(s|t)

#logical operators (&& || considers only 1st elements of the vectors and give the vector output)
#single element as output

#4) && logical AND
u<-c(3,0,TRUE,2+2i)
v<-c(1,3,TRUE,2+2i)
u&&v

#5) || logical OR
x<-c(0,0,TRUE,2+2i)
y<-c(0,3,TRUE,2+3i)
x||y

#Assignment operators

#1) left assignment <- or == or <<-
v1<-c(3,1,TRUE,2+3i)
v2<<-c(3,1,TRUE,2+3i)
v3=c(3,1,TRUE,2+3i)
v1
v2
v3

#2) right assigmnent -> or ->>
c(3,1,TRUE,2+3i)->v4
c(3,1,TRUE,2+3i)->>v5
v4
v5

#Miscellaneous operators
#1) : colon operator-it creates the series of numbers in sequence for a vector
v6<-1.3:10.3
v6

#2) %in%-an element belongs to a vector
v7<-c(8,9,10)
v8<-c(12,13,14)
t<-1:10

v7 %in% t
v8 %in% t

#3) %*% - multiply a matrix with its transpose
v9<-matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
v9
t(v9) #transpose 
v9t<-v9 %*% t(v9)

v9t
