assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Assignment code

# myMean <- function(assignment2) {
#   return(sum(assignment) / length(someData))
# }
# 
# myMean(assignment2)

# Corrected code

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)
