library(dplyr) 

# Load in MechaCar data
MechaCar <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Create summary of multiple linear regression to predict MPG
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data = MechaCar))

# Load in suspension data
SuspensionCoil <- read.csv(file= "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Summarize Suspension data into dataframe
total_summary <- SuspensionCoil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))

# Summarize Lot PSI data
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups="keep")

# Running t-tests on PSI across all lots
t.test((SuspensionCoil$PSI),mu=1500)

# Running t-tests on PSI for each individual lot
lot1 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot1")
lot2 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot2")
lot3 <- subset(SuspensionCoil, Manufacturing_Lot == "Lot3")
t.test((lot1$PSI),mu=1500)
t.test((lot2$PSI),mu=1500)
t.test((lot3$PSI),mu=1500)
