############### UNIT III ###########
## READING  ## 
# my_data <- read.csv("my_data.csv")
# writing 
# we already have done data frames
# lets do it here
# data <- data.frame(
#   one=c(1,2,3,4),
#   two=c(2,4,6,8)
# )
# 
# # lets write this data to a file
# write.csv(data)
# 
# 
# ## READING EXCEL FILES ## 
# # need to install readxl first 
# library(readxl)
# my_data <- read.excel("my_data.xlsx")
# # need to install writexlsx,openxlsx
# my_data <- read.xlsx
# library(openxlsx)
# library(writexlsx)
# write_xslx(my_data,"output.xslx")
# write.xlsx(my_data,....)


### Binary Files ### 
# 
# readBin("binart_file.bin",size=4,n=100,endian = "little")
# # writing
# writeBin(my_vector,"binary_out.bin",size=4,endian = "little")
# 
# ## XML FILES ##
# library(XML)
# # reading 
# xmlParse("my_data.xml")
# # writing 
# xml_data <- newXMLNode("root")
# saveXml(my_data,file="output.xml")
# ## reading data from web 
# library(readr)
# urldata <- read_csv('https://example.com/table/xml..')

### DATABASES ### 
# library(DBI)
# library(RSQLite)
# ## reading from database
# con<-dbconnect(RSQLite::SQLite(),dbname="my_data.db")
# result <- dbGetQuery(con,"SELECT * FROM TABLENAME")
# dbDisconnect(con)

## writing 
# connection to database
# con<-dbconnect(RSQLite::SQLite(),dbname="my_data.db")
# dbWriteTable(con,"tablename",my_data)
# dbDisconnect(con) # close the connection else dat

### R CHARTS ### 
## Pie
categories <- c(20,30,15,35)
values <- c(20,30,15,35)
pie(values,labels = categories,main = "pie chart",radius=1.2,density=60,col=c(1,2,3,4),border=6,lty = 20)

## Bar graph
barplot(values,categories,main="Bar graph",xlab="categories",ylab="values",col="skyblue")
## histogram 
data <- c(23,45,67,23, 12 ,43, 43, 124, 32, 34,3,2, 49,32)
hist(data,main="histogram",xlab="values",ylab = "frequency",col="lightgreen")

# Line graphs 
x <- 1:1
y<- x ^ log(x)
plot(x,y,type="l",col="blue",lwd=2,main="Line Plot",xlab="X axis",ylab = "y axis")


## most impt
group <- rep(c("G1","G2","G3","G4"),5)
values <- c(23,45,67,34,56,78,45,67,89,34,56,78,90,34,56,78,90,56,78,90)
boxplot(values~group,col=c("skyblue","lightgreen","lightcoral"),main="BOXPLOT",xlab="groupt",ylab="values")

## scatter plot
x <- 1:10
y <- c(2,4,1,5,8,3,6,9,7,10)
plot(x,y,main="scatter plot",xlab="x axis",ylab="y axis",col="blue",pch=16)





##################### UNIT IV ########################

### Mean ### 
data <- c(23,45,67,34,56,78,45,67,89,34,56,78,90,34)
mean_value <- mean(data)
mean_value

### Median ### 
median_value <- median(data)
print(median_value) # middle value 

### mode  ## 
calc_mode <- function(x){
  table_x <- table(x) 
  mode_val <- as.numeric(names(table_x[table_x==max(table_x)]))
  return(mode_val)
}

# mode value is the value with highest frequency
calc_mode(data)
## lets see what table is 
table(data) # shows how many times a values occured respectively 50 34 has occured 3 times see clearly in table 
# lets find the max value now 
table_data <- table(data)
table_data[table_data==max(table_data)] # we got the highest freq row / column
# now we need the value only
names(table_data)
names(table_data[table_data==max(table_data)])
## got 34 but its string
## now wee need it as numeric value
as.numeric(names(table_data[table_data==max(table_data)])) ## now got our expected value 



## Lets move the algorithms ## 
### Important ### - LINEAR REGRESSION 
## R Linear Regression ##
x <- c(1,2,3,4,5)
y <- c(2,4,5,4,5)

model = lm(y~x)
 # summary(model)

## Multiple Regression ## 
x1 <- c(1,2,3,4,5)
x2 <- c(2,3,4,5,6)
y <- c(3,6,7,6,8)

multiple_model <- lm(y~x1 + x2)
multiple_model

## R Logistic Regression ## 
x <- c(1,2,3,4,5)
y <- c(0,0,1,1,1)

logistic_model <- glm(y~x)
# summary(logistic_model)

## R binomial distribution ## 
set.seed(123) # for generating random number of same kind again and again 
n_trails <- 10
succes_prob <- 0.3
random_samples <- rbinom(n_trails,size=1,prob=succes_prob)

## Pmf 
plot(succes_prob,type="b",pch=16,main="Binary Dist Pmf",xlab="no of success",ylab="Probability")

## R Poisson Regression ## 
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)

poisson_model <- glm(y~x,family=poisson())
#summary(poisson_model)

## R time series analysis ## 
## creating a time series 
time_series_data <- ts(c(1:12),start=c(2021,11,1),frequency = 12)
time_series_data
plot(time_series_data,xlab="time",ylab="values",main="Time Series")

## decomposition 
# decomp <- decompose(time_series_data)
# auto corr and partial corr
acf(time_series_data)
pacf(time_series_data)


### Lets use Forecast package in 
#library(Forecast)





### R Decisoin TREES ### 
library(rpart)
data(iris)
tree_model <- rpart(Species~Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,data=iris)


plot(tree_model,col = c("red","green","blue"),branch=0,margin=1,branch.col = "coral",branch.lwd = 3) # now i have added styles 
text(tree_model,bg = "green",use.n = TRUE,)


### CHI SQUARE TEST ### 
# chisq.test() i sued to associate between categorical variables
data <- matrix(c(30,10,15,45),nrow=2,byrow=TRUE)
colnames(data) <- c("CAT A","CAT B")
rownames(data) <- c("G1","G2")
result <- chisq.test(data)
print(result)
## will give you everyting dof pvalue .. 
result[3]

###### DONE EVERYTHING ###### NOW START GRINDING AND REVISE

