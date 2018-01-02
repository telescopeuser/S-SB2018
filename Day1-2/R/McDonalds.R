## import data
McDonalds = read.csv("McDonalds.csv")

attach(McDonalds)

## point estimate for population mean
mean(Time)

## 95% confidence interval 
t.test(Time)


#############################################


## 99% confidence interval
t.test(Time, conf.level=0.99)

## 100% confidence interval
t.test(Time, conf.level=1)

## t test
t.test(Time, mu=174.22)

## visualise the sample data
boxplot(Time, horizontal=TRUE, col="grey",
        main="Boxplot of Service Time",
        xlab="Service Time (seconds)")

## one-tail t test
t.test(Time, alternative="less", mu=174.22)

## evaluate normality
qqnorm(Time, col="blue", xlab="z Value", 
       ylab="Time")
qqline(Time, col="red", lwd=2)

detach(McDonalds)
