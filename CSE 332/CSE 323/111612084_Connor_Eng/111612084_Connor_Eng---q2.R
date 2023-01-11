#HW3 Question 2

#Read CSV file Dataset2
d2 <- read.csv(file.choose())

#ANOVA
results2<- aov(d2$time ~ d2$menu + Error(d2$user/d2$menu))
summary(results2)

#Pairwise-t-test
pairwise.t.test(x=d2$time, g=d2$menu ,paired =TRUE, p.adjust.method ='none')

#Box Plot
jpeg("boxplot2.jpg")
boxplot(d2$time ~ d2$menu, main="time vs. menu (Dataset2)", col=rainbow(4))
dev.off()
