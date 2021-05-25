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

# Compare sample means to population means using a t-test
# Comparing sample to population so use one-tail t-test

sample_table <- suspension_coil_df %>% sample_n(20) #randomly sample 20 data points
t.test(sample_table$PSI,mu=mean(suspension_coil_df$PSI)) #compare sample vs pop means
?t.test()


#Lot 1
lot1 <- suspension_coil_df %>% filter(Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=mean(suspension_coil_df$PSI))
#Lot 2
lot2 <- suspension_coil_df %>% filter(Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=mean(suspension_coil_df$PSI))
#Lot 3
lot3 <- suspension_coil_df %>% filter(Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=mean(suspension_coil_df$PSI))


