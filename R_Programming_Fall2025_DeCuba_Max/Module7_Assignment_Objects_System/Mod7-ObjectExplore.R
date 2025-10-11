df_cars <- data.frame(mtcars)

head(df_cars)
str(df_cars)

summary(df_cars)
plot(df_cars)


s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

attributes(s3_obj)
print(s3_obj)
class(s3_obj)

attributes(s4_obj)
print(s4_obj)
class(s4_obj)