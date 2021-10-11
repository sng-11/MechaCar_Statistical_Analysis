#To load the dplyr package, load the entire tidyverse package.
library(tidyverse)

#Import and read the MechaCar_mpg.csv as a dataframe.
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform linear regression and pass all six variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table)
#Generate summary statistics for this model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table))

#Import and read the Suspension_Coil.csv as a table.
sus_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
#Get summary statistics of the suspension coil's PSI column.
total_summary <- sus_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
#Get summary statistics of PSI based on lot.
lot_summary <- sus_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#To determine if the PSI across all manufacturing lots is statistically different from pop'n mean of 1500 pounds per square inch:
t.test(sus_coil_table$PSI,mu=1500)
#To determine how PSI across each lot is statistically different from pop'n mean.
t.test(subset(sus_coil_table$PSI,sus_coil_table$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(sus_coil_table$PSI,sus_coil_table$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(sus_coil_table$PSI,sus_coil_table$Manufacturing_Lot=='Lot3'),mu=1500)




