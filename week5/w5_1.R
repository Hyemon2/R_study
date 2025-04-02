

# 필요한 패키지 로드
library(tidyverse)

setwd("C:/Users/jh990/Desktop/2025-1/데이터사이언스기초/실습 파일/week5")


patients_tb <- read_csv("patients.csv", locale = locale(encoding = "EUC-KR"))
patients_tb


patients_tb$blood <- factor(patients_tb$blood)
patients_tb


p<- table(is.na(patients_tb))
p

p1 = na.omit(patients_tb)
mean(p1$age)


boxplot(p$age)
summary(p$age)

IQR <- ((summary(p$age)[5] - summary(p$age)[2]))

lower_bound <- summary(p$age)[5] -(1.5 *IQR)

upper_bound <- summary(p$age)[2] -(1.5 *IQR)

p$age <- ifelse((p1$age<lower_bound| p1$age > upper_bound), NA , p$age)

#23

p$gender <- ifelse (
  (p$gender =="M" | p$gender=="F"), p$gender, NA)
  
p$blood   <- ifelse (
  (p$blood =="A" | p$blood =="B" | p$blood =="O" | p$blood=="AB"), p$blood, NA )


p

#24

p<- na.omit(p)
p
