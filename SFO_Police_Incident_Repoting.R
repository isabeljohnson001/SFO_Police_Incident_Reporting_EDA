#Loading libraries
library(ggplot2)
library(dplyr)
library(janitor)
library(tidyr)
library(RColorBrewer)
library(car)
library(psych)
library(imputeTS)
library(corrplot)
library(MASS)
library(leaps)
library(readr)
library(plotly)
library(kableExtra)
library(plotly)
library(rjson)
knitr::opts_chunk$set(echo = TRUE)
library("knitr")

Police_Department_Incident_Report <- read_csv("Police_Department_Incident_Reports__2018_to_Present (2).csv")
df=Police_Department_Incident_Report

# Data Cleaning

## Handling NA's
# Count of records
nrow(df)

# Columns in Raw Data
names(df)

# Top,Bottom and Structure of Dataset
head(df)
tail(df)
str(df)
summary(df)

# Converting empty values in character columns to NA
df$`CAD Number`[is.na(df$`CAD Number`)] <- "N/A"
df$`Filed Online`[is.na(df$`Filed Online`)] <- "False"
df$Intersection[is.na(df$Intersection)] <- "N/A"

#ignoring rows that has missing values in incident category and Analysis neighbourhood
df1 <- subset(df, !is.na(df$`Incident Category`))
df1 <- subset(df, !is.na(df$`Analysis Neighborhood`))

#removing unwanted columns from the dataset
# create a vector of unwanted column names
unwanted_cols <- c("Neighborhoods", "ESNCAG - Boundary File", "Central Market/Tenderloin Boundary Polygon - Updated","Civic Center Harm Reduction Project Boundary","HSOC Zones as of 2018-06-05","Invest In Neighborhoods (IIN) Areas","Current Supervisor Districts","Current Police Districts")

# remove unwanted columns from the dataset
df1 <- df1[, !(names(df1) %in% unwanted_cols)]

# Check for NA's in entire dataset columnwise
na_count <- colSums(is.na(df1))
na_count

#dataset is clean now

## Data visualisations


# create line graph year wise

incidents_by_year<-table(df1$`Incident Year`)
incidents_by_time=table(df1$`Incident Time`)
incidents_by_year <- df1 %>%
  group_by(`Incident Year`) %>%
  summarize(total_incidents = n())

plot_ly(incidents_by_year, x = ~`Incident Year`, y=~total_incidents, type = "scatter", mode = "lines+markers",
        line = list(color = "#EF553B"), marker = list(color = "#EF553B", size = 8)) %>%
  layout(title = "Number of Incidents Reported",
         xaxis = list(title = "Year"),
         yaxis = list(title = "Number of Incidents"))
#line grapg to find peak hours


# Extract the hour of the day from the date-time column
df1$Hour <- substr(df1$`Incident Time`, start = 1, stop = 2)

# Group the data by hour of the day and count the number of incidents reported
incidents_by_hour <- df1 %>%
  group_by(Hour) %>%
  summarise(Incidents = n())


plot_ly(incidents_by_hour, x = ~Hour, y=~Incidents, type = "scatter", mode = "lines+markers",
        line = list(color = "#EF553B"), marker = list(color = "#EF553B", size = 8)) %>%
  layout(title = "Number of Incidents reported throughout the day",
         xaxis = list(title = "Hour"),
         yaxis = list(title = "Number of Incidents"))


#Days properly organized, starts from Sunday and ends on Saturday
df1$`Incident Day of Week` <- ordered(df1$`Incident Day of Week`, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

data_2018 <- df1 %>% filter(df1$`Incident Year` == "2019")
incidents_by_day=data_2018
incidents_by_day <- data.frame(table(incidents_by_day$`Incident Day of Week`))

plot_ly(incidents_by_day, x = ~Var1, y = ~Freq, type = "scatter", mode = "lines+markers",
        line = list(color = "#EF553B"), marker = list(color = "#EF553B", size = 8)) %>%
  layout(title = "Number of Incidents by Day of the Week",
         xaxis = list(title = "Day of the Week"),
         yaxis = list(title = "Number of Incidents"))


fig2<- plot_ly(labels = ~df1$Resolution, type = "pie",name ="Resolutions")
fig2


# create a df frame of incident counts
incident_counts <- data.frame(table(df1$`Incident Category`))

# order the df frame by descending order of counts
incident_counts <- incident_counts[order(-incident_counts$Freq),]

# take the top 5 incidents
top_incidents <- head(incident_counts, 5)

# create a color palette for the bar graph
colors <- c("#4C78A8", "#F58518", "#E45756", "#72B7B2", "#54A24B")

# plot the bar graph
ggplot(top_incidents, aes(x = Var1, y = Freq, fill = Var1)) +
  geom_bar(stat = "identity", color = "black") +
  scale_fill_manual(values = colors) +
  labs(title = "Top 5 Incidents",
       x = "Incident Type",
       y = "Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5),
        axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "none")
#Neighbourhoods affected
library(dplyr)
library(ggplot2)

# Create a new dataframe with only LARCENY THEFT incidents
larceny_theft_df <- filter(df1, `Incident Category` == "Larceny Theft")

# Group the incidents by neighborhood and count the number of incidents in each neighborhood
neighborhood_counts <- larceny_theft_df %>% 
  group_by(`Analysis Neighborhood`) %>% 
  summarize(count = n()) %>% 
  arrange(desc(count))

# Select the top 5 neighborhoods with the most incidents
top_5_neighborhoods <- head(neighborhood_counts, 5)

# Create a bar graph with each neighborhood represented in a different color
ggplot(data = top_5_neighborhoods, aes(x = `Analysis Neighborhood`, y = count, fill = `Analysis Neighborhood`)) +
  geom_bar(stat = "identity") +
  labs(title = "Top 5 Neighborhoods Affected by Larceny Theft", x = "Neighborhood", y = "Number of Incidents") +
  scale_fill_manual(values =colors)
#scale_fill_manual(values = c("#3366CC", "#DC3912", "#FF9900", "#109618", "#990099"))

df_filtered <- df1 %>%
  filter(df1$`Analysis Neighborhood` %in% c("Financial District/South Beach", "Mission", "North Beach", "South of Market", "Tenderloin") & df1$`Incident Category` == "Larceny Theft")


# Count the resolutions for each neighborhood
df_resolutions <- df_filtered %>% 
  group_by(`Analysis Neighborhood`, Resolution) %>%
  summarise(count=n()) %>%
  arrange(desc(count)) %>%
  group_by(`Analysis Neighborhood`) %>%
  top_n(5, count)

# Plot the bar graph
ggplot(df_resolutions, aes(x=`Analysis Neighborhood`, y=count, fill=Resolution)) + 
  geom_bar(stat="identity", position="dodge") +
  labs(title = "Resolutions for Larceny Theft in Selected Neighborhoods", x = "Neighborhood", y = "Count") +
  scale_fill_manual(values = colors) #set custom colors for the bars
