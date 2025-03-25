# 필요한 패키지 로드
library(tidyverse)

setwd("C:/Users/jh990/Desktop/2025-1/데이터사이언스기초/실습 파일/week4")

# CSV 파일 읽기
today <- read_csv("today.csv")


# tibble 출력
today


#5번
today_df <- read.csv("today.csv", encoding="EUC-KR")
print(today_df)


#6번

str(today_df)

today_df$type <- factor(today_df$type, levels = c(1,2), labels = c("과일","채소"))

#level = 현재값, labels = 변경값

today_df


#7번
write.csv(today_df, file="store.csv", row.names =FALSE)

#8번
store_df <- read.csv("store.csv", encoding="EUC-KR", header=TRUE)

store_df

#9번

today_tb <- as.tibble(today_df)
print(today_df)

#10번

today_df[today_df$item == 'mango',]

#11번
# price가 2000원을 초과하는 데이터 필터링
today_tb[today_tb$price > 2000, ]


#12
today_tb[today_tb$price > 2000, 1]
subset(today_tb, price>2000, item)

#13번

for (i in 1:nrow(today_tb)) {
  if (today_tb$price[i] > 2000) {
    print(paste(today_tb$item[i], "비싸다")) 
  } else {
    print(paste(today_tb$item[i], "싸다"))
  }
}
#for/if 안 씀, 시험에도 안나옴

#13-1
today_tb[ ,5] <- ifelse(today_tb[,2]>2000, "비싸다", "싸다")
today_tb


#14
max(today_tb$price)
with(today_tb, max(price))

#15번
price

attach(today_tb)
price

detach(today_tb)
price
