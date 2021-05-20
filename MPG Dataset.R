#load library 
library (ggplot2)
#load dataset mpg (Miles Per Gallon)
data(mpg)
###ctrl + enter: Run from script

#Do cars with big engines use more fuel than cars with small engines?
#What does the relationship between car engines and fuel efficiency look like?

ggplot2::mpg

#use ? before the dataset name to retrieve more information about the data set.
?mpg 
#is a bigger engine more fuel efficient?

#plot of displ in x-axis against hwy in y-axis
ggplot(mpg) + 
  geom_point(aes(displ, hwy))
#plot shows negative relationship between engine size and fuel efficiency.

#add class as a third variable
ggplot(mpg) + 
  geom_point(aes(displ, hwy, colour = class))
#scatterplot shows that the 2 seater cars have bigger engines and higher fuel mileage compared to others in the same class.



#plot to show displ greater than 5 in different colour.
ggplot(mpg) + 
  geom_point(aes(cyl, hwy, colour = displ > 5))

#map third variable on the classes of cars using facet_wrap()
ggplot(mpg) + 
  geom_point(aes(displ, hwy), colour = "blue") + 
  facet_wrap( ~ class, nrow = 2)

#facet plot using the variable cyl
ggplot(mpg) + 
  geom_point(aes(displ, hwy), colour = "red") + 
  facet_grid( . ~ cyl)

#facet plot using variable class
ggplot(mpg) + 
  geom_point(aes(displ, hwy), colour = "magenta") + 
  facet_grid( . ~ class)

#
ggplot(mpg) + 
  geom_point(aes(displ, hwy), colour = "mediumblue") + 
  facet_wrap(~ cyl, nrow = 2)

#breakdown of types of wheels by cylinders.
ggplot(mpg) + 
  geom_point(aes(drv, cyl, colour = "red"))

#plot engine displacement size and the corresponding highway miles per gallon and wheel drive.
ggplot(mpg) + 
  geom_point(aes(displ, hwy), colour = "brown") + 
  facet_grid(drv ~ .)

#add layers
ggplot(mpg) + geom_point(aes(x=hwy, y=displ, colour = class)) + geom_smooth(aes(x=hwy, y=displ)) + 
  labs(title = "Engine size v. Fuel Mileage by Vehicle type", x="mpg", y="Engine size (L)") + #add labels
  scale_color_discrete(name="Vehicle Type") #legend tile





#qplot is a quick simple plot that uses all of the ggplot2 defaults. 
#it defines a plot in a single call, picking a default geom.
#x and y variables are specified so a scatterplot will be created
qplot(displ, hwy, data = mpg) 
qplot(displ, hwy, colour = class, data = mpg)
#only x variable given so a histogram (for continuous variables) or barchart (for discrete variables) is created.
qplot (displ, data = mpg)
