# this is the code for the questions in quiz 4 of the "Getting and
# Cleaning Data course

# question 1
if (!file.exists("./data")) {dir.create("./data")}
dataUrl <- ("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
codebookURL <- ("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf")
download.file(dataUrl, destfile = "./data/acs2006.csv")
download.file(codebookURL, destfile ="./data/acs2006codebook.pdf")
q1 <- read.csv("./data/acs2006.csv")
splitNames <- strsplit(names(q1), "wgtp")
splitNames[123]

#question 2
library(stringr)
q2url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(q2url, destfile = "./data/gdp.csv")
q2 <- read.csv("./data/gdp.csv")
q2val <- q2[5:194, "X.3"]
q2val  <- gsub(",", "", q2val)
q2val <- as.numeric(q2val)
mean(q2val)

#question 3
q4 <- q2[5:219, "X.2"]
length(grep("^United", q4))
grep("^United", q4, value = TRUE)

#question 4
edUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(edUrl, destfile="./data/ed.csv")
ed <- read.csv("./data/ed.csv")
gdp <- q2[5:219, c(1,2,4,5)]
colnames(gdp) <- c("CountryCode", "GDP2012Rank", "Economy", "MilOfUS$")
gdped <- merge(gdp, ed, by.x = "CountryCode", by.y = "CountryCode")
length(grep("Fiscal year end: June", gdped$Special.Notes, value=TRUE))

#question 5
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
#find 2012 values
q5 <- grep("2012", sampleTimes, value=TRUE)
length(q5)

#find Mondays
q5 <- as.Date(q5)
length(grep("Mon", format(q5, "%a")))

