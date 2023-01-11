#HW3 Question 1

#Read CSV file Dataset1
d1 <- read.csv(file.choose())

#ANOVA
results1<- aov(d1$time ~ d1$menu)
summary(results1)

#Pairwise-t-test
pairwise.t.test(x=d1$time, g=d1$menu ,paired =FALSE, p.adjust.method ='none')

#Box Plot
jpeg("boxplot1.jpg")
boxplot(d1$time ~ d1$menu, main="time vs. menu (Dataset1)", col=rainbow(4))
dev.off()