# Import library
library(tidyverse)
library(dplyr)

# Deliverable 1
# Import MechaCar_mpg.csv
MechaCar_mpg <- read.csv(file = 'MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg)
# Summary Statistics for Linear Regression Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg))

# Deliverable 2: Visualizations
# Import Suspension_Coil.csv
Coil_Data <- read.csv(file = 'Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# Summary Statistics for Suspension Coil PSI Data
Total_Summary <- Coil_Data%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
Lot_Summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summar for lot

# Deliverable 3: T-Tests on Suspension Coils
t.test(Coil_Data$PSI, mu = 1500 ) 

#Lot 1 Table
Lot_1 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot1") 
#Lot 1 T Test
t.test(Lot_1$PSI, mu = 1500) 
#Lot 2 Table
Lot_2 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot2") 
#Lot 2 T Test
t.test(Lot_2$PSI, mu = 1500) 
#Lot 3 Table
Lot_3 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot3") 
#Lot 3 T Test
t.test(Lot_3$PSI, mu = 1500) 
