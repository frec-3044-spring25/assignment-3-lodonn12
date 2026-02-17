
# Lecture 2/12 Env Data Science

install.packages("ratdat")

library("ratdat")
library("tidyverse")

class(complete_old) # Data type displays

head(complete_old) # Top 6 rows (column names and var type included too)

tail(complete_old) # Bottom 6 rows good for checking if the data gets lazy at the bottom

head(complete_old, n = 10) # Gives 10 rows (Don't need to include "n =" if you don't want to)

# ?function_name -> gives help on the function you are wondering about

summary(complete_old) # Gives the summary for each column, gives count on NA's in columns too

str(complete_old) # Gives row and column count and gives first few entries

complete_old$year

num <- c(1, 2, 5, 12, 4)
class(num) # Class is numeric (doesn't assume its an integer (whole number))

char <- c("apple", "pear", "grape")
class(char) # Class is character

logi <- c(TRUE, FALSE, TRUE, TRUE)
class(logi) # Class type is logical

num_logi <- c(1, 4, 6, TRUE)
class(num_logi) # Class type numeric (Turns the TRUE into a 1 (would turn a FALSE into 0))
# Numeric > Logical

num_char <- c(1, 3, "10", 6)
class(num_char) # Class is a character, turns all the numbers to char
# Character > Numeric > Logical

tricky <- c("a", "b", "1", FALSE)
class(tricky)

# Missing data
weights <- c(25, 34, 12, NA, 42)
class(weights) # Class type is numeric

min(weights) # Min value is NA because it doesn't know what to do with an NA value
min(weights, na.rm = TRUE)

quantile(complete_old$weight, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)

1:10 # Vector 1 - 10

seq(from = 0, to = 1, length.out = 50) # vector from 0-1 taking 50 steps

rep("a", times = 12) # Vector of 12 a's

sex <- c("male", "female", "female", "male", "female", NA)
sex <- factor(sex)
sex

as.numeric(sex) # Male = 2, Female = 1
