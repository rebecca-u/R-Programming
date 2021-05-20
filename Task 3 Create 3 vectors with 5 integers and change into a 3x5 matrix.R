#Write an R program to create 3 vectors a, b, c with 5 integers.Combine the 3 vectors to become a 3x5 matrix where each column represents a vector.Print the content of the matrix. Plot a graph and label correctly.

#  NB that all the vectors must be the same length 
#3 vectors with 5 integers
a<-c(11,21,31,22,25)
b<-c(16,17,18,19,11)
c<-c(19,21,14,18,24)

#Combine the 3 vectors to become a 3x5 matrix where each column represents a vector.
frame<-data.frame(a,b,c)
#Print the content of the matrix.
print("Content of the said matrix:")
print(frame)
#Plot a graph and label correctly.
#plot(d,main="My graph",xlab= "x axis",ylab="y axis",cex=2)
plot(a,type ="l",col = "blue")
lines(b,type = "l",col= "red")
lines(c,type="l",col= "green")