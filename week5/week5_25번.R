# 패키지 로드
library(dplyr)
library(ggplot2)
library(tidyr)

# 1. 티블 변환
a_tb <- as_tibble(airquality)

boxplot(a_tb$Ozone, main ="Ozone")
boxplot(a_tb$Solar.R, main ="Solar.R")
boxplot(a_tb$Wind, main ="Wind")
boxplot(a_tb$Temp, main ="Temp")


rm_outliers <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)  # 1사분위수
  Q3 <- quantile(x, 0.75, na.rm = TRUE)  # 3사분위수
  IQR <- Q3 - Q1  # IQR 계산
  lower_bound <- Q1 - 1.5 * IQR  
  upper_bound <- Q3 + 1.5 * IQR 
  x[x < lower_bound | x > upper_bound] <- NA  
  return(x)
}

a_tb$Ozone <- remove_outliers(a_tb$Ozone)
a_tb$Solar.R <- remove_outliers(a_tb$Solar.R)
a_tb$Wind <- remove_outliers(a_tb$Wind)
a_tb$Temp <- remove_outliers(a_tb$Temp)

a_tb_clear <- na.omit(a_tb)

ozone_mean <- mean(a_tb_clear$Ozone, na.rm = TRUE)
solar_mean <- mean(a_tb_clear$Solar.R, na.rm = TRUE)
wind_mean <- mean(a_tb_clear$Wind, na.rm = TRUE)
temp_mean <- mean(a_tb_clear$Temp, na.rm = TRUE)

cat("Ozone 평균:", ozone_mean, "\n")
cat("Solar.R 평균:", solar_mean, "\n")
cat("Wind 평균:", wind_mean, "\n")
cat("Temp 평균:", temp_mean, "\n")