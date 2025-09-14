Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

df_polls <- data.frame(Name, ABC_poll, CBS_poll)

str(df_polls)

head(df_polls)

mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])

df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol

head(df_polls)


library(ggplot2)

ggplot(df_polls, aes(x = Name)) +
  geom_bar(aes(y = ABC_poll, fill = "ABC"),
           stat = "identity", width = 0.6,
           position = position_nudge(x = -0.15)) +
  geom_bar(aes(y = CBS_poll, fill = "CBS"),
           stat = "identity", width = 0.6,
           position = position_nudge(x = 0.15)) +
  labs(title = "Poll Comparison by Candidate",
       x = "Candidate", y = "Poll Numbers",
       fill = "Poll Source") +
  theme_minimal()
