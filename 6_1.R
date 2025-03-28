library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

#exam에서 class가 1인 경우만 추출해 출력
exam %>% filter(class == 1)

exam %>% filter(class != 1) #1반이 아닌 경우
exam %>% filter(class != 3) #3반이 아닌 경우


exam %>% filter(math > 50)
exam %>% filter(math < 50) 
exam %>% filter(english >= 80) 
exam %>% filter(english <= 80) 

exam %>% filter(class == 1 & math >= 50)
exam %>% filter(class ==2 & english >= 80)

exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(english < 90 | science <50)

exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5)) #1, 3, 5반에 해당하면 추출

class1 <- exam %>% filter(class == 1) #class가 1인 행 추출, class1에 할당
class2 <- exam %>% filter(class == 2) #class가 2인 행 추출, class2에 할당

mean(class1$math) #1반의 수학 점수 평균 구하기
mean(class2$math) #2반의 수학 점수 평균 구하기

exam %>% select(math) #math 추출 
exam %>% select(english) #english 추출 
exam %>% select(class, math, english)

exam %>% select(-math) #math 제외 

exam %>%
  filter(class == 1) %>% #class가 1인 행 추출 
  select(english) #english 추출

exam %>%
  select (id, math) %>%
  head #앞부분 6명까지 추출 

exam %>% arrange(math) #math 오름차순 정렬 
exam %>% arrange(desc(math)) #math 내림차순 정렬 
exam %>% arrange(class, math) #class 및 math 오름차순 정렬 

exam %>%
  mutate (total = math + english + science) %>% #총합 변수 추가
  arrange(total) %>%
  head # 일부 추출 
