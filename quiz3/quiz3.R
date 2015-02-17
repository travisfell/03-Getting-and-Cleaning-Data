# question 1
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "idaho2006.csv")
idaho2006 <- read.csv("idaho2006.csv")
idaho2006$agricultureLogical <- ifelse(idaho2006$ACR==3 & idaho2006$AGS==6, TRUE, FALSE)
head(which(idaho2006$agricultureLogical), 3)


# question 2
install.packages("jpeg")
library(jpeg)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "jeffjpeg.jpg", mode="wb")
jeffjpeg.n <- readJPEG("jeffjpeg.jpg", TRUE)
quantile(jeffjpeg.n, probs=c(0.3, 0.8))


# question 3
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "gdp.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "edstats.csv")
gdp <- read.csv("gdp.csv", skip = 4, stringsAsFactors=F)
gdp <- gdp[1:215,c(1:2,4:5)]
names(gdp) <- c("CountryCode", "Ranking", "Economy", "GDP (Millions of US$)")
#subset gdp to remove blank values
gdp <-subset(gdp, Ranking != "")
#cast the ranking field as numeric to enable proper sorting, calculations
gdp$Ranking <- as.numeric(gdp$Ranking)
ed <- read.csv("edstats.csv")
gdp_ed <- merge(gdp, ed, by ="CountryCode", all=FALSE)
matched_gdp_ed <- subset(gdp_ed, Ranking != "", select=c("CountryCode", "Long.Name", "Ranking")) # finds matches
#count the rows to find the number of matches
nrow(matched_gdp_ed)
 # find the 13th country from the top when sorted descending by ranking 
arrange(matched_gdp_ed, desc(Ranking))


# question 4
#read in, create separate data sets and merge the data set as in question 3 first
# confirm no NAs in Income.Group
any(is.na(gdp_ed$Income.Group))
summarize(group_by(gdp_ed, Income.Group), mean(Ranking))


# question 5
#download the Hmisc package to get the cut2 function
install.packages("Hmisc")
library(Hmisc)
rank_by_income <- cut2(gdp_ed$Ranking, g=5)
table(gdp_ed$Income.Group, rank_by_income)