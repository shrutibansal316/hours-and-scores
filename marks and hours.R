#pull the data
dataset<- read.csv("task #1.csv")
                   summary(dataset)

                   #plot the data                   
                   plot(x=dataset$hours, y=dataset$score,
                        xlab = "hours" , ylab = "score",
                        main = "score and hours")
                   
                   #linear regression model
                   data.regression <- lm(score ~ hours , 
                                         data = dataset)
                   summary(data.regression)
                   
                   #score obtainesd when hours are 9.25
                   
                   
                   newdata <- data.frame(hours = 9.25)      
                   predict(data.regression , newdata = newdata)
                   