# Import librarys
library(tidyverse)
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
# Import MechaCar_mpg.csv
MechaCar_mpg <- read.csv(file = 'MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Perform Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg)
# Generate Summary Statistics for Linear Regression Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg))

# Deliverable 2: Create Visualizations for the Trip Analysis 
# Import Suspension_Coil.csv
Coil_Data <- read.csv(file = 'Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# Generate Summary Statistics for Suspension Coil PSI Data
Total_Summary <- Coil_Data%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
Lot_Summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summar for lot

# Deliverable 3: T-Tests on Suspension Coils
t.test(Coil_Data$PSI, mu = 1500 ) # t-test that compares all manufacturing lots against mean PSI of the population

#Table for Lot 1
Lot_1 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot1") 
#T Test for Lot 1
t.test(Lot_1$PSI, mu = 1500) 
#Table for Lot 2
Lot_2 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot2") 
#T Test for Lot 2
t.test(Lot_2$PSI, mu = 1500) 
#Table for Lot 3
Lot_3 <- Coil_Data %>% filter(Manufacturing_Lot == "Lot3") 
#T Test for Lot 3
t.test(Lot_3$PSI, mu = 1500) 
