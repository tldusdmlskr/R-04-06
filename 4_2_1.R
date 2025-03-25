english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math

class <- c(1, 1, 2, 2)
class

df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)


mean(df_midterm$math)