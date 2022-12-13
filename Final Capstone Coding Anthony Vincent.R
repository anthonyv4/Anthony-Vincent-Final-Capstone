library(readxl)
Capstone_Final_Excel_Sheet_Anthony_Vincent <- read_excel("Desktop/Data Driven Decision Making/Capstone Final Excel Sheet- Anthony Vincent.xlsx")
View(Capstone_Final_Excel_Sheet_Anthony_Vincent)

Capstone_Final_Excel_Sheet_Anthony_Vincent$Aatt


model1 <- lm(Aatt ~ Rank, data=Capstone_Final_Excel_Sheet_Anthony_Vincent)
summary(model1)
## negative coefficient means as rank increases, your attendance decreases 
## Model 1: Average Attendance = intercept + Beta(Rank)
## Beta = -116.432 and is significant because of ***
## Dependent variable = average attendance = CF% in my report
## Independent variable = Rank = oZS% in my report in Table 2
## Cons = intercept
## Standard Error = 3.205 which is number in paranethesis under 0.93 in  Table 2

model2 <- lm(Aatt ~ WinPct, data=Capstone_Final_Excel_Sheet_Anthony_Vincent)
summary(model2)
## An increase in win percentage of 1 percent would reuslt in an increase in average attendance by 2.122


model3 <- lm(Aatt ~ Rank+WinPct, data=Capstone_Final_Excel_Sheet_Anthony_Vincent)
summary(model3)
## Equation: Average Attendance = B0 + B1(Rank) + B2(WinPct)
## Average Attendance = 7225.691 - 116.943(Rank) - 7.686(WinPct)
## talk about how rank barely changed but winpct coefficient is now negative
## don't have to know why this changed but interesting that it happened when you
## ran a mutliple regression model