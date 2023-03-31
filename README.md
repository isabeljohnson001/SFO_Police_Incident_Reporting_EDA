<h1 align="center">San Francisco Police Department (SFPD) Incident Reporting</h1>
The San Francisco Police Department (SFPD) Incident Reporting system dataset is a comprehensive collection of reported incidents in the city of San Francisco, California. The dataset contains incident reports filed as of January 1, 2018, and is updated regularly to reflect new incidents. The reports are categorized into three groups based on how the report was received and the type of incident: Initial Reports, Coplogic Reports, and Vehicle Reports.
</br>
The dataset can found under :-
</br>
https://data.sfgov.org/Public-Safety/Police-Department-Incident-Reports-2018-to-Present/wg3w-h783
<h3>Overview</h3>
This study aims to investigate various aspects of crime in San Francisco using a dataset provided by the instructor. The investigation will cover several areas, including crime trends, location analysis, crime type analysis, day and time analysis, and arrest analysis. The goal of the analysis is to identify patterns and trends in the data that can provide insights into the nature and distribution of crime in the city. By examining the data, we hope to gain a better understanding of which types of crimes are most prevalent in San Francisco, which neighborhoods are most affected, and how crime patterns vary by time and day. 
<h3>Data Cleaning</h3>
The study began by exploring the dataset, which included 699,606 records and 34 variables, to get an overview of its structure and contents. During this process, we noticed some missing data and took steps to fill in these gaps. We also disregarded empty entries in some fields and removed variables that were irrelevant to the study. After making these adjustments, we conducted a final check for any remaining missing values and exported the cleaned dataset as a new data frame.
<h3>Data Analysis and Visualizations</h3>
 <img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/incidents_reported.png" width="500"/>
 </br>
 <h4>Observations:-</h4>
 The table shows the number of total incidents reported in San Francisco from 2018 to 2023. The data shows a decrease in total incidents reported from 2018 to 2019. The number of total incidents reported in 2019 was 139,907, which is about 3.3% lower than the total incidents reported in 2018, which was 144,726.
The year 2020 saw a significant decrease in total incidents reported compared to previous years, with only 112,930 incidents reported. This is a decrease of about 19.1% compared to the previous year. However, this decrease can be partially attributed to the COVID-19 pandemic and the associated lockdowns and restrictions during the year.
In 2021, there was an increase in total incidents reported, with 122,063 incidents reported, which is an increase of about 8% compared to the previous year. This trend of increasing incidents continued into 2022, with 125,339 incidents reported, which is an increase of about 2.6% compared to the previous year.
It should be noted that the data for 2023 is only up until February, and therefore, the total number of incidents reported for this year is likely to be higher once all the data has been collected and analyzed. Overall, the data shows that there has been some fluctuation in the number of total incidents reported in San Francisco over the years, with a significant decrease in 2020 and an increase in 2021 and 2022.
</br>
 <img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/incidents_reported_week.png" width="500"/>
 </br>
 <h4>Observations:-</h4>
 This table shows the number of incidents that occurred during each hour of the day in San Francisco. The table is sorted by the hour of the day, with the earliest hours (midnight to 3 AM) at the top and the later hours (8 PM to 11 PM) at the bottom.
According to the table, the hour with the highest number of incidents is 12 PM (noon) with 44,492 incidents. This is followed by 5 PM to 6 PM, which has a total of 39,906 incidents. The hours with the lowest number of incidents are between 4 AM and 6 AM, with a total of 20,435 incidents.
The data suggests that crime in San Francisco tends to occur during the daytime and early evening hours, with the highest number of incidents occurring during the middle of the day. This is likely due to the high volume of foot and vehicle traffic during these times, which provides more opportunities for criminal activity.
Overall, this information can be useful for law enforcement and policymakers in allocating resources and developing strategies to prevent and respond to crime in San Francisco.
 </br>
 <img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/incidents_reported_day.png" width="500"/>
  </br>
 <h4>Observations:-</h4>
 The above table shows the frequency of incidents reported by day of the week. The highest number of incidents were reported on Fridays with 21,356 incidents, followed by Wednesdays with 20,803 incidents. Mondays, Tuesdays, and Thursdays all had a similar number of incidents reported, around 20,000. Sundays and Saturdays had the lowest number of incidents reported, with 18,453 and 19,643 incidents respectively.
This information can be useful in identifying patterns or trends in the data, as well as informing law enforcement and city officials about when and where resources may need to be allocated to address crime in San Francisco.
 </br>
 <img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/top_5_resolutions.png" width="500"/>
  </br>
 <h4>Observations:-</h4>
The bar chart presented displays the top five most frequently occurring incident categories in San Francisco. Larceny theft is the most common type of crime, with a frequency of 193,767 incidents. Other miscellaneous incidents, such as drug/narcotic offenses or weapon laws, come second with 48,684 incidents, followed by malicious mischief with 45,321 incidents. Assaults are the fourth most common crime with 42,423 incidents, and non-criminal incidents round out the top five with 41,046 incidents.
These results suggest that larceny-theft is the most prevalent type of crime in San Francisco. It is followed by other miscellaneous crimes, which are a broad category that includes several different types of offenses. Malicious mischief, which includes crimes like vandalism and property damage, is the third most common crime in San Francisco. Assaults, which are violent crimes against individuals, is also relatively common but occur less frequently than the top three categories. Finally, non-criminal incidents, which refer to police responses that do not involve a criminal offense, are also somewhat common in San Francisco.
</br>
<img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/top_5_neighbourhoods_affected.png" width="500"/>
  </br>
 <h4>Observations:-</h4>
 The bar plot shows the top five neighborhoods in San Francisco that were most affected by larceny-theft incidents. The Financial District/South Beach neighborhood was the most affected with 21,415 incidents, followed by Mission with 15,786 incidents, North Beach with 12,082 incidents, South of Market with 11,283 incidents, and Tenderloin with 11,145 incidents.
</br>
 <img src="https://github.com/isabeljohnson001/SFO_Police_Incident_Reporting_EDA/blob/20dbe4a3829a8dcd732870ee5a5f4f67abcdda74/top_5_incidents.png" width="500"/> 
   </br>
 <h4>Observations:-</h4>
The bar graph provides information on the top five neighborhoods in San Francisco affected by larceny-theft and the resolution status of incidents. The Financial District/South Beach neighborhood had the highest number of larceny-theft incidents, followed by Mission, North Beach, South of Market, and Tenderloin. The majority of incidents in all neighborhoods were classified as "open or active," suggesting that the resolution of these incidents is ongoing or unresolved. A significant number of incidents resulted in a citation or arrest of an adult, indicating that law enforcement agencies are actively trying to address incidents of larceny-theft. However, a small number of incidents were unfounded or had exceptional adult status, indicating that some incidents were either false reports or that the suspects were not charged.
</br>
</br>
<b>
Overall, the data suggest that larceny-theft is a significant problem in San Francisco, and efforts to combat it are ongoing. The high number of unresolved incidents indicates that there is still a need for more resources and action to address this issue. Additionally, the high number of incidents resulting in a citation or arrest of an adult indicates that law enforcement agencies are taking action to address larceny-theft incidents. However, more needs to be done to prevent such incidents from occurring in the first place.
</b>
 </br>
 </br>
 <h3>Conclusions</h3>
 In conclusion, the problem of larceny-theft in San Francisco is a significant issue that requires a comprehensive approach to address it. The data analysis showed that larceny-theft is the most common type of crime in San Francisco, with the highest number of incidents occurring during the middle of the day, on Fridays, and in the Financial District/South Beach neighborhood. The majority of larceny-theft incidents are still unresolved, indicating the need for more action to combat this issue.To address this problem, statistical analyses, such as regression analyses, can help identify significant predictors of larceny-theft and develop targeted interventions to prevent it in specific neighborhoods. Predictive modeling techniques, such as machine learning algorithms, can also help forecast future crime trends and identify potential hotspots for larceny-theft. These methods can assist law enforcement agencies in allocating their resources effectively and developing targeted prevention strategies. However, addressing larceny-theft in San Francisco requires a multi-faceted approach that includes community-based programs and initiatives to address the root causes of crime. Collaboration and partnership between various stakeholders, including law enforcement agencies, community organizations, government agencies, and residents, are crucial to developing effective and sustainable solutions.


---
