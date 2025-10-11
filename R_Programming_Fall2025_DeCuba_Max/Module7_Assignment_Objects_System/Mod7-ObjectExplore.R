# load the built-in 'mtcars' dataset into a data frame called df_cars
df_cars <- data.frame(mtcars)

# show the first few rows
head(df_cars)

# display the structure of the data
str(df_cars)

# apply a generic function 'summary()' to get min, max, mean, and quartiles
summary(df_cars)

# apply a generic function 'plot()' to create a scatterplot matrix
plot(df_cars)


# create a simple list that represents a student
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)

# assign a custom class name to turn the list into an S3 object
class(s3_obj) <- "student_s3"


# define a formal class called "student_s4" with specified data types
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))

# create a new object of this S4 class
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)


# view the internal attributes of the S3 object
attributes(s3_obj)

# print the contents of the S3 object
print(s3_obj)

# check what class the S3 object belongs to
class(s3_obj)


# view the internal attributes of the S4 object
attributes(s4_obj)

# print the contents of the S4 object
print(s4_obj)

# check what class the S4 object belongs to
class(s4_obj)
