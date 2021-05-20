#task1- storing values (variables)
print("hello world")
name <- "username"
name <- "Rebecca Uddin"
print (name)

#task2- Readline and paste commands
name <- readline(prompt="Enter your name: ")
hello <- paste ("Welcome", name, "!")
print(hello)

#task3- finding out the datatypes
pi<-3.1415
dozen <- 12L
print(paste("Type of pi:", typeof(pi)))
print(paste("Type of dozen:", typeof(dozen)))
flag <- T
print(paste( "is flag logical:", is.logical(flag)))

#task4- storing mixed datatypes
info <- list(21, 61.2, "Lisa", TRUE)

#add names to the elements 
info <- list(age=21, weight=61.2, name="Lisa", female=TRUE)

#task5- plotting stored values
#create 2 vectors
x <- c(1, 2, 3, 4, 5)
y <- c(21, 5, 7, 9, 3)

plot(x, y, type="o")

#task6- controlling objects
#create a list and 2 variables
airport.codesUK <- list("Birmingham" = "BHX", "London Heathrow" = "LHR", "Bristol" = "BRS", "Manchester" = "MAN")
airport.dubai <- "DBX"
airport.sanfran <- "SFO"

#instruction to remove variable
ls()
rm(airport.sanfran)
ls()

