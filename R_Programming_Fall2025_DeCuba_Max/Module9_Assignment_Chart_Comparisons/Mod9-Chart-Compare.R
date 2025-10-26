
library(ggplot2)
library(lattice)
library(AER)

data("Electricity1970", package = "AER")
head(Electricity1970)
str(Electricity1970)
summary(Electricity1970)

Electricity1970$group    <- ggplot2::cut_number(Electricity1970$output, 4)
Electricity1970$category <- ggplot2::cut_interval(Electricity1970$fuel, 3)

levels(Electricity1970$group) <- c("Low Output", "Moderate Output", "High Output", "Very High Output")
levels(Electricity1970$category) <- c("Low Fuel Use", "Moderate Fuel Use", "High Fuel Use")


# scatter plot
plot(Electricity1970$cost, Electricity1970$output,
     main   = "Base: Cost vs. Output",
     xlab   = "Output",
     ylab   = "Total Cost")

# histogram
hist(Electricity1970$fuel,
     main   = "Base: Distribution of Fuel",
     xlab   = "Fuel Total")


# conditional scatter plot
xyplot(cost ~ output | factor(group),
       data = Electricity1970,
       main = "Lattice: Cost vs. Output by group")

# box-and-whisker plot
bwplot(output ~ factor(category),
       data = Electricity1970,
       main = "Lattice: Output by category")


# scatter plot with smoothing
ggplot(Electricity1970, aes(x = output, y = cost, color = factor(group))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Cost vs. Output with trend by group")

# faceted histogram
ggplot(Electricity1970, aes(fuel)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ category) +
  labs(title = "ggplot2: Fuel distribution by category")