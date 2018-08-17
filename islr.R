#islr
library(ISLR)
?Default
data(Default)
head(Default , n=30)
str(Default)
head(Default[Default$default=='Yes',])
table(Default$student)
table(Default$default)
t1= table(Default$default, Default$student)
addmargins(t1)
addmargins(t1,FUN=mean)
library(dplyr)
Default %>% group_by(student, default) %>% summarise(n())
