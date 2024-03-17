#### History and Features ####
"
  - r is for statistical analysis , developed by ross lhaka and Robert G. 
  in 1993
  - r , well developed, simple , effective programming language , has condition
  - loops user defined recursive functions
  - array list vectors '
  - data analysis either graphically and direcly printing
  
  - it is # 1 recommended for data science 
"

#### Data Types ####
" 
  There are 6 classes of vector object or six data types of vectors 
  1.Logical
  2.Numeric
  3.Integer
  4.Complex
  5.Character
  6.Raw
  ## NOTE :  To run the code uncomment the code section and run it. ##
"

# 1.Logical (TRUE, FALSE)
v <- TRUE
print(class(v))


# 2. Numeric
v <- 22.3
print(class(v))

# 3. Complex 
v <- 2 + 3i
print(class(v))

# 4. Integer 
v <- 2L
print(class(v))

# 5. Character 
v <- 'inside quotes'
print(class(v))

# 6. Raw
v <- charToRaw('this')
print(class(v))
# rawToChar(v)


##### Vectors #####
" 
  when you want to create vectors with more than one element we use c()
  function , which means combine 
"
# create a vector 
apple <- c('red','blue','yellow')
print(class(apple)) # will show us what is the class of vector



##### Lists #####
" 
 List is an R-object which contains many different types of elements inside it
 like vectors, function and even another lists inside it 
"
# Create a list
lis1 = list(c(2,4,5),21.3,sin)
print(lis1)





##### Matrices #####
"
   matrix is a two dimensional rectangular dataset. it can be created using a 
   vector input to the matrix function
"
# create a matrix
M = matrix(c('a','a','b','c','b','a'),nrow=2,ncol=3,byrow = TRUE)
print(M)


##### Arrays #####
"
  While matrices are confined to two dimensions, array can be on any number of 
  dimensions. The array function takes dim attributes which creates number of 
  dimensions required.
"
a <- array(c('green','blue'),dim=c(3,3,2))
print(a)


##### Factors #####
"
Factors are r objects which are created using a vector. it stores vector along 
with the distinct values of elements in the vector as labels. The labels are
always character irrespective of whether it is numeric or character or boolean
etc. in the input vector in whihc they are useful in statistical modelling
"
# create a vector
apple_colors <- c('green','green','yellow','red','red','red','green')
# create a factor object
factor_apple <- factor(apple_colors)
print(factor_apple)
print(apple_colors)


##### Data Frames #####
"
  Data frames are tabular data objects. Unlike matrix in data frame each column
  can contain different modes of data. the first column can be numeric while the
  second column can be character and third can be logical. It is a list of 
  vectors of equal length
"
# create a data frame
BMI <- data.frame(
  gender=c("Male","Male","Female"),
  height=c(152,171.5,165),
  weight=c(81,67,78),
  Age = c(42,38,26)
)
print(BMI)


##### R Variables ##########
"
  A valid variable name consists of letters, numbers or a dot or underline characters.
  variable name can start with a letter or dot not followed by a number
  
  var_name2 - valid
  var_name%  - not valid
  2var_name - not valid
  .var_name - valid
  _var_name - valid
  .2var_name - not valid
  
  the variables can be printed using `print()` and `cat()` funtions 
  cat functions combines all inputs but print does not 

"

# Assigning values to variables 
var.1  <- 0 # creat a variable and assign it 0
# we can also use equals instead of `<-`

# or we can assing values like this using `->` 
c(1,2,3) -> var.2
print(var.1)
print(var.2)

cat(var.1,var.2)

# lets try checking the data types of a variable 

cat("the variable of var.1 class (type) is  : ",class(var.1))

# to find variables we have `ls()` function
print(ls()) # ls() shows all variables  in our program
print(ls(pattern="var")) # if the name starts with var
# creating a hidden variable
.secret = "nothing"
print(ls()) # hidden variables are not shown 
print(ls(all.names = TRUE)) # now also hidden variables will be found
# Deleting variables using `rm()` function 
rm(.secret)
#.secret # i deleted a hidden variables you  can also try other 
# lets delete all variables in one line 
# rm(list=ls()) # removing all the variables in one shot



#### Operators ####

"
There are following types of operators in r :  
  1. Arithmetic
  2. Relational Operators
  3. Logical Operators
  4. Assignment Operators
  5. Miscallaneous Operators
"
##### 1. Arithmetic Operators ##########
" 
  a.Addition 
  b.Subtraction 
  c.Multipulication 
  d.Division 
  e.Floor Division 
  f.Remainder 
"
v <- c(2,5.5,6)
t <- c(8,3,4)

###### a.Addition ######

print(v+t)

###### b.Subtraction #####

print(v-t)


###### c.Multiply #####

print(v*t)



###### d.Divide #####

print(v/t)



###### e.remainder (%%) #####

print(v%%t) 



###### f.floor division #####
print(v%/%t) 
###### g.Exponent (Raised Power ^) #####

print(v^t)




##### 2. Relational Operators #######
"
it includes all operators which are used fro conditional checking these are 
known as conditional operators
 > (greater)
 < (lesser)
 <= (lesser or equal)
 >=(greater or equal)
 == (equals )
 != (not equals)
"
print(v>t)


##### 3. Logical Operators #######
"
& - Logical (and)
| - logical (or) 
! - not
we can combine two conditions or expression with these logical operators 

"
## & - both must be true then result will be true else false
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)
## or - one condition is true result is true
print(v|t)

## not - result is false if true if true it false 
print(!v)

## && result is same as & but checks one element of vector only
# print(v&&t)
## ||
# print(v||t)


##### 4. Assignment Operators #######
"
 = 
 ->
 <- 
 ->>
 <<- 
 are all assignment operators used to assign values to a variables 
"
##### 5. Miscallaneous Operators #######
"
For a specific purpose and not general mathematics or logical computation
: creates a series of numbers from start to end
%in%  check if element belongs to vector
%*% multiply two matrices
"
v<- 2 : 8
print(v)
v1 <- 8
v2 <- 12
t <- 1:10

print(v1 %in% t)
print(v2 %in% t)

M = matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
t = M%*%t(M) 
print(t) # t() is the transpose function




##### R Decision - Making #####
x <- 10
###### if else ####

if(is.integer(x)){
  print("x is a integer")
}else if (is.numeric(x)){
  print("x is numeric ")
}else{
  print("x is nothing")
}

###### switch case ####
# x refers to 10 so tenth case would be truthy so default casee should be 
# execcted here
switch (x,
    
  "first" = print("x is 1"),

  "second" = print("x is 2")
  )


##### Loops #####
###### Repeat Loop ####
i = 0
repeat{
  print("i am in repeat looop")
  i = i + 1
  if(i == 10){
    print("done ")
    break
  }
}
###### While Loop ####
i = 2
while(i < 7){
  print("something never change ")
  i = i + 1
}


###### For Loop ####
v <- LETTERS[1:4]
for (i in v){
  print(i)
}

##### Loop Control Statements #####
###### break statement ####
"
to exit an loop immediately we use loops
"
i = 0
repeat{
  print("Inside Repeat,\b... Waiting For Break To Encounter...\n Else Run Again")
  if(i==8){
    break
  }
  i = i + 1
}

###### next statement #### 
"in other programming languages we have continue there but here we have next
it doesn't break the loop but skips one iterations
"
v <- LETTERS[1:5]
for (i in v){
  if(i=='D'){
    next # note that D will not be printed because we are skipping here
  }
  print(i)
}


##### Functions ######
###### Built-in Functions #####
# create a sequence 
print(seq(32,44))
# find the mean of numbers 
print(mean(25:82))
# find the sum of numbers 
print(sum(34,5,890808))
print(sum(1:100))

###### user Defined Functions ####
# creating own functions 
my.function <- function(a){
  for (i in 1:a){
    b<- i^2
    print(b)

  }
}
# calling a functions 
my.function(10)

## we have lot a more in functions but we have already done it 
## like deafult arguments



##### Strings #####
# creating strings

a <- "i am a String"
print(a)

b <- 'single quotes enclosed string'
print(b)

a <- "if we'have to use double quotes inside a double quotes string then do this \""
print(a)
# do the same if in single quotes

## paste functions concats strings 
paste(a,b,sep="-",collapse = "")

## Strings Formatting, note format function can be applied to any otherdata type
format(23.1221321,digits=7) # display 7 digits only
format(c(1,13.3324),scientific = TRUE)
format(23.47,nsmall=5)
format(6) # will display it as string
format(13.7,width=6) # will display it as string within 7 spaces in front 
# extra spaces are placed at front
# let's try it with a string 

result <- format("Hello",width=8,justify='c')
# no of chars in string 


result

nchar(result)
toupper(result)
tolower(result)
substring("Extract",5,7)


##### Vectors #####
"
Even if we just one value in r its a vector called atomic vector

"
print("abc") # atomic vector of type char
# other thing likes int numeric are also atomic vector of respective type

# sequence vector
v <- 5:13
print(v)
print(seq(5,9,by=0.9)) # by is step 
# accessing vector elements 
t <- c("sun","mon","tue","wed","thu","fri","sat")
u <- t[c(2,3,6)]
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

y<-t[c(0,0,0,0,0,0,1)]
print(y)

## Vector Manipulation
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# vector addition
add.result <- v1 + v2
print(v1+v2)
# vector subtraction
sub.result <- v1 - v2
print(sub.result)
# sorting
sort(v1)
sort(v1,decreasing = TRUE)



##### Lists #####
"
Lists are r objects which contain element of different types
"

list_data <- list("red","green",c(21,32,11),TRUE,51.23,119.1)
print(list_data)

list_data <- list(c("Jan","Feb","Mar"),matrix(c(3,9,4,1,-2,8),nrow=2),
                  list("green",12.3))
print(list_data)

# Giving names to elements in list 
names(list_data)<- c("1st Quarter","A matrix","A inner list")

print(list_data)

## Accessing Elements
print(list_data[1])
print(list_data[3])
print(list_data$`A matrix`)


## MANIPULATION

# adding elements
list_data[4]<- "new element"

print(list_data[4])
# remove the last element
list_data[4] <- NULL

print(list_data[4])
# update the 3rd element
list_data[3]<-"updated element"
print(list_data[3])


## Merging two lists
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# merge tow lists
merged.list <- c(list1,list2)
print(merged.list)

# list to vector 
list<- list(1:5)
print(class(list))
v1 <- unlist(list1)
print(class(v1))


##### Matrices #####
"
Matrices are the R objects in which the elements are arranged in 2d rectangular
layout
elements are of same type
  `matrix()` functions is used
  
"

M <- matrix(c(3:14),nrow = 4,byrow = TRUE)
print(M)
N <- matrix(c(3:14),nrow=4,byrow=FALSE)
print(N)
## row names and column names instead of 1 ,2 3
rownames = c("row1","row2","row3","row4")
colnames = c("col1","col2","col3")

P <- matrix(c(3:14),nrow=4,byrow=TRUE,dimnames = list(rownames,colnames))
print(P)

## Accessing Elements of matrix
print(P[1,3]) # 1st row and thrid  column
print(P[1:2,1:2])
print(P[2,])

# MATRIX ADD AND SUB
mat1 <- matrix(c(3,9,-1,4,2,6),nrow=2)
print(mat1)
mat2 <- matrix(c(5,2,0,9,3,4),nrow = 2)

## simply we add with + 
## sand we use - to sub
## we can also / and * 

##### Arrays #####
"
Arrays Store Data of more than 2 dimensions 
but can store of same type
"
# create two vectors 
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

result <- array(c(vector1,vector2),dim=c(3,3,2))
print(result)
# naming rows and columns 
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <-c("MAT1","MAT2")

result <- array(c(vector1,vector2),dim=c(3,3,2),dimnames=list(row.names,column.names,matrix.names))
print(result)

## accessing elements of arrays

print(result[1,1,1])
print(result[-1,-1,2])

##### Factors #####
"
Factors are the data types whihc are used to categorize the data and store it as levels. They can store both strings and iintegers.
"
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))
factor_data <- factor(data)
print(factor_data)

print(is.factor(factor_data))

## generating factor levels 
v <- gl(3,4,labels = c("Tampa","Seattle","Boston"))
print(v)






##### Data Frames #####
"
is a table or two dimensional array like structure in which each column contain values of one variable and each row contains one set of valeus from each column
- col names shouldn't be empty
- row names should be unique
- numeric factor, character can be stores in columns
- each column should contain same number of data items 


"
emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick","Dan","Michell","roman reigns","Gary"),
  salary = c(623.3,515.3,611.0,729.0,843.25),
  
  start_data = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
  
  stringsAsFactors = FALSE
)
print(emp.data)
# structure of data frame 
str(emp.data)
# summary
print(summary(emp.data))
# accessing and sub dataframe 
emp.data[1:2,]
emp.data[c(3,5),c(2,4)]
## expanding data frame 
# addding column
emp.data$dept <- c("IT","Operatinos","IT","HR","Finance")
print(emp.data)
# adding rows `rbind`

emp.newdata <- data.frame(
  emp_id = c(6:8),
  emp_name = c("Rashmi","Pranab","Aj styles"),
  salary = c(255,722,1000),
  
  start_data = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Opeartions","Finance"),
  stringsAsFactors = FALSE
)
# binding the two data frames
emp.final <- rbind(emp.data,emp.newdata)
print(emp.final)



##### Packages #####
"
R packages are a collection of R functions, compiled code and sample data. they are stored in directory `library` in R environment.
"
# .libPaths() # where are our librarie stores
# library() # all packages names 
# search() # what packages am i using (are loaded)
# install a package 
# install.packages("Package Name")

##### Data reshaping #####
"
Data reshaping in r is about changing the way data is organized into rows and columns. Most time data processing in R is done by taking the input as data frame ... 
"
###### Joining Columns and Rows in Dat Frame #####
"
we can join multiple vectors to create a dataframe using  `cbind()` also merge two data frame using `rbind()`
"

city <- c("Tampa","las vegas","new york","london")
state <- c("FL","WA","CT","CO")
zipcode <- c(33090,3232,12123,3243)
# combine
addresses <- cbind(city,state,zipcode)
print(addresses)
new.addresses <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c(9090,09809),
  stringsAsFactors = FALSE
)
all.addresses <- rbind(addresses,new.addresses)
print(all.addresses)

## merging tow data frames using merge functions 
library(MASS)
merged.Pima <- merge(x = Pima.te,y=Pima.tr,
                     by.x=c("bp","bmi"),
                     by.y=c("bp","bmi")
                     )
print(merged.Pima)
nrow(merged.Pima)
## melting and casting ` melt()` and `cast()`
# print(ships)
# library(MASS)
# molten.ships <- Melt(ships,id=c("type","year"))
# print(molten.ships)
# cast is not also here - not working melt and cast 





##### R Files #####
print(getwd())
setwd("C:\\Users\\plesi\\OneDrive\\Desktop\\Data Science Code\\Pandas_Data_Analysis")
###### CSV Files ######
print(getwd())
data <- read.csv("car-sales.csv")
print(data)
# analyze the data 
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
print(max(data$Odometer..KM.))
###### Excel Files ######
# install.packages("xlsx")
# library(xlsx)
# data <- read.xlsx("exported-exercise-car-sales.xlsx",sheetIndex =1)


###### Biary Files ######
## writing Binary files ##
write.table(mtcars,file="mtcars.csv",row.names = FALSE,na="",col.names = TRUE,sep=",")
## we have already covered in prev file 



###### Databases ######
## connection
library(DBI)
library(RSQLite)
con<-dbConnect(SQLite(),dbname="my_data.db")
# writing to database
# dbWriteTable(con,"my_table",data)
# reading from database
result <- dbSendQuery(con,"select * from my_table")
# dbReadTable(con,"my_table")
dbDisconnect(con)
print(result)
# we need to fetch the data now 
data.from.db <- fetch(result)
print(data.from.db)


##### R Charts and Diagrams #####
###### Pie Chart #####
x <- c(21,62,10,53)
labels <- c("London","Ny","Singapore","mumbai")

pie(x,labels,main="Pie chart",col=rainbow(length(x)))
legend("topright",labels,cex=0.8,fill=rainbow(length(x)))

## 3d pie plot
library(plotrix) # install it first

pie3D(x,labels=labels,main="Pie Chart 3d",explode=0.1)

###### Bar Plots ######
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
barplot(H,
        names.arg=M,xlab="Month",ylab="revenue",col="blue")

colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# create the matrix of the values.

values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow=3,ncol=5,byrow = TRUE)

barplot(values,main="Total Revenue",names.arg=months,xlab="Month",ylab="Revenue",col=colors)

legend("topright",regions,cex = 0.4,fill=colors)


###### Box Plots ######
"
measures how welll distrubuted is the data in the data set
divides data set into three parts quartiles 

"
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(
  mpg~cyl,
  data=mtcars,
  xlab="Number of Cylinders",
  ylab="Miles per gallon",main="Mileage Data",
  notch=TRUE,
  varwidth=TRUE,
  col=rainbow(3),
  names=c("high","medium","low")
)

###### histograms #####
v <- c(9,13,21,8,36,22,12,41,31,33,19)

hist(v,xlab="Height",col="yellow",border="red",xlim=c(0,40),ylim=c(0,5),breaks = 5)

###### line graphs #####
v <- c(7,12,28,3,41)
plot(v,type="o",col="red",xlab="Month",ylab="rain fall",main="rain fall line plot")
## plotting multiple lines in chart
t <- c(14,7,6,19,3)
lines(t,type="o",col="blue")


###### Scatter Plots ######
"
shows many points plotted on a cartesian plane 

"
input <- mtcars[,c('wt','mpg')]
plot(x = input$wt,y=input$mpg,
     xlab="Weight",
     ylab="Mileage",
     xlim=c(2.5,5),
     ylim=c(15,30),
     main="Weight vs Mileage"
     )

## creating scatter plot matrices
pairs(~wt+mpg+disp+cyl,data=mtcars,main="Scatter plot matrix")



##### Statistics ######
"
Statistical analysis in r is performed by using many inbuild funtions most of these functions are part of r base package these functions take R vector...
"
###### Mean ######
"
sum of values and dividing with number of values in data series (average)
"
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <- mean(x)
print(result.mean)
## trim options 
result.mean <- mean(x,trim=0.3) # remove the 0.3% values from both left and right 
print(result.mean)

## na function
result.mean<-mean(x,na.rm=TRUE) # remove not avalialbe values or null values else mean will be null if we have null value


###### Median ######
"
the middle most value in data series is called the median `median()` function is used
"
median.result <- median(x)
print(median.result)

###### Mode ######
"
value that has highest number of occurences 
r does not have standard built in function to calculate mode but we can create our own funtion to calc mode
"
getmode <- function(v){
  uniqv<-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
v<- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
result <- getmode(v)
print(result)
charv <- c("o","it","it","the","o","the","the")
result <- getmode(charv)
print(result)


#### Regression Analysis ####
"
is a very widely used statistical tool to establish r elationship model between 
two variables .
one of these variable is called predicator  variable whose value is gathered through experiments

"
##### Linear Regression #####
"
In Linear Regression These two variables are related throught an equation, 
y = ax+b 
`lm()` function is used to create a linear model
"
x<- c(151,174,138,186,128,136,179,163,152,131)
y<- c(63,81,56,91,47,57,76,72,62,48)

relation = lm(y~x)
print(relation)
# lets predict the value of y now 


y_preds <- predict(relation,data.frame(x=170))
print(y_preds)

## lets do it graphically
plot(y,x,col="blue",main="Height and Weight Regression Analysis",abline(lm(x~y),cex=1.2,pch=16,),xlab="Weight in Kg",ylab="height in cm")



##### Multiple Regression #####
"
Extension of linear Regression into relationship between more than two variable sin simple realtion we have two variables but we have multiple variables 
on basis of multiple variables one variable is predicted
"
input <- mtcars[,c("mpg","disp",'hp',"wt")]
model <- lm(mpg~disp+hp+wt,data=input)
print(model)

##### Logistic Regression ######
"
the logistic regression is a regression model in which the response variable (predicted variable) has categorical values such as true false
`glm()` function is used in case of Logistic Regression
"

input <- mtcars[,c("am","cyl",'hp',"wt")]
am.data <- glm(formula=am~cyl+hp+wt,data=input,family=binomial)
print(am.data)


##### Normal Distribution #####
"
 in random collection of data from independent sources it is generally observed that the distribution of data is normal....etc
four normal distributions functions in r
`dnorm()`
`pnorm()`
`qnorm()`
`rnorm()`
"
### Dnorm
x <- seq(-10,10,by=.1)
y<-dnorm(x,mean=2.5,sd=0.5)
plot(x,y)
### pnorm - probability normal distributed (CDF(cumulative distribution function))
x <- seq(-10,10,by=.2)
y<-pnorm(x,mean=2.5,sd=2)
plot(x,y)

### qnorm
x <- seq(0,1,by=0.02)
y <- qnorm(x,mean=2,sd=1)
plot(x,y)

### r norm random distribution normal

y <- rnorm(50)
hist(y,main="Normal Distribution")

##### Binomial Distribution #####
"
the binomial distribution model deals with finding the probability of success of an event which has only two possible outcomes 
four functions for binomial distribution in r
`dbinom()`
`pbinom()`
`qbinom()`
`rbinom()`
"
### dbinom
x <- seq(0,50,by=1)

y<- dbinom(x,50,0.5)
plot(x,y)
### pbinom
x <- pbinom(26,51,0.5)
print(x)
### qbinom
x <- qbinom(0.25,51,1/2)
print(x)

## rbinom
x <- rbinom(8,150,.4)
print(x)


##### Poisson Regression #####
"
Involves regression models in which the response variable (predicted value) is in the form of counts and not factorial numbers

"
output <- glm(formula=breaks~wool+tension,data=warpbreaks)
print(output)

##### Time Series Analysis #####
"
is a series of data points in which each data point is associated with a timestamp. A simple example is the price of stock in stock market at different points of time on a given day.

`ts()` function is used for time series analysis
"
rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)

## rainfall time seris
rainfall.timeseris <- ts(rainfall,start = c(2012,1),frequency=12)
print(rainfall.timeseris)
plot(rainfall.timeseris)

##### Decision Trees #####
"
Decision Tree is a graph to represent choices and their results in form of a tree, The nodes in the graph represent an event or choice and the edges of graph represent the decision rules or conditions
Examples may be : email spam filter whether an email is spam or not
- note install the party package first then run the code
`ctree()` function is used whihc is part of party package

random forest -  large number of deiciosn trees are created

"
library(party)
input.data <- readingSkills[c(1:105),]
# create the tree
output.tree <-ctree(
  nativeSpeaker ~ age + shoeSize+score,data=input.data
)
plot(output.tree)
##### Chi Square Test #####
" 
it si a method to determine if two categorical varibles have significant correlation between them note varialbes should be categorial 
`chisq.test()` functions is used
"
library(MASS)
car.data <- data.frame(Cars93$AirBags,Cars93$Type)

car.data = table(Cars93$AirBags,Cars93$Type)

print(car.data)
# perform chi square test
print(chisq.test(car.data))
