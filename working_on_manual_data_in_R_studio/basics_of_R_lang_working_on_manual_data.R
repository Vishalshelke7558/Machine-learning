x1 <- 1:10
x1

x2 <-c(1,2,3,4,5)
x2

x3 <- seq(5,50,by = 5)
x3

x4 <- scan()
x4

rm(list = ls()) # tool for remove the data 

# delimiter is the symbol which separate the one column of data
# from the another column

# load the data from our own machine
product <- read.table("C:/Users/VISHAL SHELKE/Desktop/ML_tutorial/Product.txt", header = TRUE,sep= "\t")

str(product) # we can check the structure of the data

customer <- read.csv("C:/Users/VISHAL SHELKE/Desktop/ML_tutorial/Customer.csv", header = TRUE, sep =",")
customer
str(customer)

View(customer) # tool for view the all data 

# creating a frequency distribution of the data
# e.g we create a table and find the no of customer in particular region
# in a customer data set

y <- table(customer$Region)
# in above tool we create a table of the no of customer in the 
# central east south and west
y

View(y)# we can see the y with proper table

barplot(y) # we can plot the graph of y table

barplot(y[order(y)]) # graph get plot in as ending order

barplot(y[order(-y)]) # graph get plot in descending order

barplot(y[order(y)], horiz = TRUE)# graph get changing horizontally

barplot(y[order(y)], horiz = TRUE, col = "red") # to change the color of the graph

barplot(y[order(y)], horiz = TRUE, col = c("red","blue","yellow","pink"))
# above tool is used to change the color of the each column of the graph

barplot(y[order(y)], horiz = TRUE, col = c("red","blue","yellow","pink"), border =  NA)
# border = NA is used to remove the outside border of the graph

barplot(y[order(y)], horiz = TRUE, col = c("red","blue","yellow","pink"), border =  NA, main = "Freq of reagon")
# main = "title of the graph" we can add the tital to the graph by using this command

barplot(y[order(y)], horiz = TRUE, col = c("red","blue","yellow","pink"), border =  NA, main = "Freq of reagon", xlab = "No of customer")
# xlab = "---" is used to add the name to the x axis

png(filename = "C:/Users/VISHAL SHELKE/Desktop/ML_tutorial/freq.png", width = 65, height = 65)
barplot(y[order(y)], horiz = TRUE, col = c("red","blue","yellow","pink"), border =  NA, main = "Freq of reagon", xlab = "No of customer")
dev.off()
