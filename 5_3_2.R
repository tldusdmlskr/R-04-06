mpg$total <- (mpg$cty + mpg$hwy)/2 #통합 연비 변수 생성
head(mpg)

mean(mpg$total)

summary(mpg$total) #요약 통계량 산출
hist(mpg$total)

mpg$test <- ifelse(mpg$total > 20, "pass", "fail")

head(mpg, 20) #데이터 확인 

table(mpg$test)

library(ggplot2)
qplot(mpg$test)

mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))

head(mpg, 20) #데이터 확인

table(mpg$grade)

qplot(mpg$grade)

mpg$grade2 <- ifelse(mpg$total >= 30, "A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C", "D")))