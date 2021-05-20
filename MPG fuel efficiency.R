#load library 
library (ggplot2)
#load dataset mpg (Miles Per Gallon)
data(mpg)

#use ? before the dataset name to retrieve more information about the data set.
?mpg 

###ctrl + enter: Run from script

##familiarise with the dataset and explore it.
dim(mpg) #outputs the dimensions of the dataset
str(mpg) #displays an overview of rows and columns in dataset
summary(mpg) #displays descriptive statistics for every variable
#shows mean, median, max and quartile values of the variables
View(mpg) #opens a spreadsheet-style data viewer
head(mpg, 10) #outputs top 10 elements in dataset
tail(mpg) #outputs last 6 elements in dataset



#create a barplot for number of cars in each class
p = ggplot(mpg, aes(x = class)) + geom_bar()
p + labs(title = "Number of cars in each class type.", x = "Type of car.", y = "Number of cars.")
p + geom_text(stat = "count", aes(label=..count..), vjust=-0.25)

#create stacked bar chart 
p <-ggplot(data=mpg, aes(x=class, y=displ, fill=drv))
p + geom_bar(stat = "identity")




#is a bigger engine more fuel efficient?

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()

#mapping the class variable to colour
ggplot(mpg, aes(displ, cty, colour = class)) + 
  geom_point()




#trend lines and layering
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(method = "lm")



#qplot is a quick simple plot that uses all of the ggplot2 defaults. 
#it defines a plot in a single call, picking a default geom.
#x and y variables are specified so a scatterplot will be created
qplot(displ, hwy, data = mpg) 
qplot(displ, hwy, colour = class, data = mpg)
#only x variable given so a histogram (for continuous variables) or barchart (for discrete variables) is created.
qplot (displ, data = mpg)
