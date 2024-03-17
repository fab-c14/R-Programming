
############################# U1 ###################################

# R programming - Ross Lhaka and R gentleman - auckland,newzeland 1990's 
# comphrensive r archive network (CRAN) <- Packages and central repo

# R - stats and meth graphical, open source, data structures (vectors,...),interactive environment,Functional Programming(purely),package system,cross platform compatbility

## Basic Syntax For R
# <- instead of = 
# character <- instead of string
# logic <- instead of Boolean


### DATA TYPES 
## Numeric
age <- 35
height <- 6.2

## Characters
name<-"faisal"
city<-"srinagar"

## logic(boolean)
is_student = TRUE
is_working = FALSE

## vectors (imp)
num_vect <- c(1,2,3,4,5)
char_vect <- c("apple","banana")

## matrices 

mat_data <- matrix(c(1,2,3,4),nrow=2,ncol=2)
## Lists 
my_list <- list(name="faisal",age=19,city="srinagar")

## Data Frames
data_frame <- data.frame(Name=c("faisal","someone","another name"),age=c(25,30,19))


## Factor 
gender <- factor(c("male","female","male","female"))

## Null
emp <- NULL # missing values


### Operators  +,-,*,.,%%(modulus)
2 %/% 2 # FLoor division # %*% -> matrix mutlipulication


## Special Operator 
# %in%
2 %in% num_vect

# : (used to create a sequence)

## Exercise View All The Operators 

### DECISION MAKING
## if elseif else
age <- 25 
if (age < 18){
  print("minor")
}else{
  print("major")
}

## Switch Case
day<-"Monday"
switch(day,
       "Monday" = print("start"),
       "Friday" = print("Good"),
       print("this is default case")
)

### Loops 

## for loop
for (i in 1:5){
  print(paste("Iteration",i))
}
## while loop 

counter <- 1
while(counter <=5){
  print(paste("While Iter",counter),counter <- counter + 1)
}

## Repeat Loop

counter <- 1
repeat{
print(paste("iter",counter))
  counter <- counter + 1
  if(counter > 5){
    break
  }
}

### Functions 
my_function <- function(x){
  result <- x ^ 2
  return(result)
}
# caliing functions 
my_function(5) # can also store the returned value


## default arguments 
power_fn <- function(x,power=2){
  result <- x ^ power
  return(result)
}

power_fn(2)

## another function 
calculate_stats <- function(data){
  mean_val <- mean(data)
  median_val <- median(data)
  return(list(mean<-mean_val,median<-median_val))
}

## Lambda Functions - One line functions 

cube <- function(x) x ^ 3
result <- cube(3)
print(result)


## Adding Documentation to a function 

#' Function Takes Parameters
#' the we define the function 
#' another line of documentation 
#' add some styling also ..
square_fn <- function(x){
  result<- x ^ 2
  return(result)
}

# square_fn()


### DEBUGGING 
# browser(square_fn) # function for pause the exec. of code
# debug(square_fn)
# traceback(my_function) # if error occurs - we can traceback 


## see how to debug square_fn 
# example

# debug(square_fn) # set a break point 
# square_fn(3)

############################# U2 ###################################
### STRINGS 
## Creation 
string1 <- "Hello World!"
string2 <- "R Programming "
## concat
concated <- paste(string1,string2)
print(concated)
## substrings 
substr <- string1[1:5][1] # note index starts from 1 in r
print(substr)
## length_string 
length_str <- nchar(string1)
print(length_str)
## search 
pos<-grep("orld",string1)
print(pos)
## replace 
new_str<-gsub("World!","universe",string1)
new_str
## formatting 
sprintf("the valeu is %.2f",3.14563423)
## substring contains
contains <- grepl("ello",string1)
print(contains)
## splitting
split<- strsplit(string1," ")[[1]]
print(split)

### VECTORS
## manipulation,creation
numeric <- c(1,2,3,4,5)
char_vect <- c("apple","banana")
## logical vector
logical_vect <- c(TRUE,FALSE)

## accessing elements of vector 
numeric[1]
numeric[2]
numeric[1:4]
# operations 
numeric * 2
numeric > 2
combined <- c(numeric,6,8,9)
paste(combined)
## repeat function
rep(1:3,times=2)
# remove element
numeric[-3] # note; removes the element not index
# functions with vector
values<-sapply(numeric, function(x) x ^ 2)
values

### LISTS 
my_list <- list(name="Faisal",age=23,city="Srinagar")
## access
my_list$name
my_list[[1]]
my_list[1]
## add data 
my_list$occupation <- "student"
my_list
## nested Lists
nest_list <- list(inner_list=list(a=1,b=2),another_elem="text")
nest_list

## list functions 
squared_list <- lapply(my_list$inner_list, function(x) x^2)
squared_list$a
# length
length(my_list)
nchar(my_list) #number of characters in each list element

## MERGIN LISTS 
list1 <- list(a=1,b=2)
list2 <- list(b=3,d=4)
merged<-append(list1,list2)
merged

## convert list to vector 
vect<- unlist(my_list) # convert list to vector
print(vect)


### MATRICES 
my_mat <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
my_mat
## accessing
my_mat[1,2]
my_mat[2,1]
t(my_mat) # transpose
another_mat <- matrix(c(7:12),nrow=3,ncol=2)
my_mat %*% another_mat # matrix multipulication - dot multipulication
# row sum # col sum
rowSums(my_mat)
colSums(my_mat)
## apply functions to rows and columns
my_mat
apply(my_mat,1,mean)
apply(my_mat,2,sum) # 2 means axis = column


### ARRAYS
my_array <- array(1:24,dim=c(2,3,4))

my_array
## we can use slicing to access the array

## apply function to dimension 
apply(my_array,3,sum)
## adding dimensions 
my_arr <- array(1:24,dim=c(2,3,4,2))
my_arr
## reshaping an array
reshaped <- matrix(my_array, nrow=2,ncol=12)
reshaped

## Factors 
gender <- c("male","female","male","female","male")
gender

blood_type <- c('A','B','AB',"O",'B','A')
blood_type
summary(blood_type)

# numeric_gender <- as.numeric(gender)
### DATA FRAMES # 2d table type data
my_data_frame <- data.frame(
  name<-c("Faisal","Alice","Bob"),
  age<-c(19,20,21),
  city<-c("Srinagar","Budgam","Paris")
)
my_data_frame
summary(my_data_frame)

my_data_frame$age
mode(my_data_frame$age) # mode is used to check data type
add_data<-data.frame(
  name=c("charlie","Eve"),
  age=c(25,30),
  city=c("BL","TK")
)
#combined_data <- rbind(my_data_frame,add_data)
combined_data <- merge(my_data_frame,add_data)
combined_data


## PACKAGES 
# installing packages
# install.packages("packagename")
## include packages -
# library(packagename)
# # installed package
# installed.packages()
# update.packages()
# packagename:functionNam()
## removing 
# remove.packages()
# available.packages() # check available packages


#traceback(median)
median(c(1,2,3,4))

cat("one two three")


print(paste("one","two","three"))

