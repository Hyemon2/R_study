nums<- c(1:50)
#13
evens <- nums[nums%%2==0]

#13-2

evens_1 <-which(nums%%2==0)
print(evens_1)

evens_3 <-nums[which(nums%%2==0)]
print(evens_3)

evens_2 <- nums[nums%%2==0]
print(evens_2)
 
#14
odds <- nums[nums%%2==1]

#14-2
odds_1 <-which(nums%%2==0)
print(odds_1)

odds_3 <-nums[which(nums%%2==0)]
print(odds_3)

odds_2 <- nums[nums%%2==0]
print(odds_2)

#15
length(evens)
length(odds)


#16
pluss <- evens + odds
pluss

#17(중간값)
median(evens)
median(odds)
median(pluss)



#18
front20 <- nums[1:20]
print(front20)

#19
front20 <- nums[-c(5,10,15,20)]
print(front20)

#20
front20
nums[nums%%2 ==0] <- nums[nums%%2==0]*2
print(front20)