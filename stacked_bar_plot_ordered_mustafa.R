##stacked_bar_plot(ordered) by Mustafa Kamal (CIMMYT Bangladesh) on 20200622.

## loading packages 
library(ggplot2)
library(reshape2)

## load dataset as dataframe 
df <- read.csv("wheat_suitability_area_tha_district_level.csv", header = TRUE, sep = ",")

## checking the variable name  
names(df)

## reshape dataframe for ggplot 
df1 <- melt(df, id=c("district","total_suitable_area"))


## Return the First few poriton of the dataframe
head(df1)

## creating plot using ggplot 
p<-ggplot(df1, aes(x = reorder(district, total_suitable_area), y = value, fill = variable)) +
  geom_bar(stat='identity') +
  coord_flip()+xlab("District") +ylab("area_thousand_ha") +
  labs(fill="wheat suitability")

plot(p)
