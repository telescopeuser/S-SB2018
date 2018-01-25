getwd()
# setwd("xxxxx")
# getwd()

# improving return rate at the hotels

#create a vector for response = will choose
WillChoose = c(163, 154)

#create a vector for total responses
TotalRespondents = c(227, 262)

#run a chi square proportions test
prop.test(WillChoose, TotalRespondents, correct = FALSE)

# More experiments for understanding:
WillChoose = c(163+10, 154) # introduce more difference between two groups
prop.test(WillChoose, TotalRespondents, correct = FALSE)

WillChoose = c(163-10, 154) # introduce less difference between two groups
prop.test(WillChoose, TotalRespondents, correct = FALSE)

WillChoose = c(163-30, 154) # nearly no difference (same prop around 58.7%) between two groups
prop.test(WillChoose, TotalRespondents, correct = FALSE)
