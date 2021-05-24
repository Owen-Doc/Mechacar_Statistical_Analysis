library(dplyr)
# Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

# Analyze Suspension Coil PSI Weights to Verify Manufacturing Consistency
suspension_coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),
                                                  SD=sd(PSI), .groups='keep') #Create summary table

lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),
                                                                                Variance=var(PSI),SD=sd(PSI), .groups='keep')
