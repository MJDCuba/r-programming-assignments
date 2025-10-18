library(plyr)
# load the 'plyr' package

student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)
# prompt the user to select a data file

gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)
# group the dataset by the 'Sex' column and calculate the mean grade

write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)
# export the summarized gender mean results to a text file

i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)
# create a subset of the data containing only students 
# whose names include the letter 'i'

write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)
# write only the names of students with 'i' in their name to a CSV file

write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
# write the full records of students with 'i' in their name to another CSV file
