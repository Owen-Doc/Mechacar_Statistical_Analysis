library(dplyr)
# Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

# Analyze Suspension Coil PSI Weights to Verify Manufacturing Consistency
suspension_coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
#psi_summary <- PSI %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups='keep') #Create summary table