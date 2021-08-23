#D1
options(scipen = 999)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lmCars <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg) #create linear model
summary(lmCars)
#D2
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

library(dplyr)
total_summary <-summarize(Suspension_Coil_df, PSI_mean=mean(PSI), PSI_med=median(PSI), PSI_Variance =var(PSI), PSI_SD=sd(PSI))

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(PSI_mean=mean(PSI), PSI_med=median(PSI), PSI_Variance =var(PSI), PSI_SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#D3
MLot1 <- t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot1" )$PSI, mean=1500)
MLot1
MLot2 <- t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot2" )$PSI, mean=1500)
MLot2 
MLot3 <- t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot3" )$PSI, mean=1500)
MLot3 
MAllLot <- t.test(Suspension_Coil_df$PSI, mean=1500)
MAllLot 
