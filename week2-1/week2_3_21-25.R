absents <- c(5,7,2,1,4)
names(absents) <- c("1주", "2주", "3주", "4주","5주")

#22
over_five_weeks <- absents[absents>=5]
print(over_five_weeks)

#23~24
max_1 <-which.max(absents)
print(max_1)

min_1 <- which.min(absents)
print(min_1)

# 실제 주차 이름 출력
print(absents[max_1])  # 결석자 가장 많은 주차
print(absents[min_1])  # 결석자 가장 적은 주차

absents[order(absents)]
