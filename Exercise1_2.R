earth_rad_km = 6371
pi_estimate = 3.14159
surface_area_km2 = 4*pi_estimate*earth_rad_km^2
surface_area_oceans_km2 = surface_area_km2*0.7
print(surface_area_oceans_km2)

ocean = "Atlantic"
oceans = c("Atlantic", "Pacific", "Indian", "Artic", "Southern")

typeof(oceans)
length(oceans)

world_oceans = data.frame(oceans = c("Atlantic", "Pacific", "Indian", "Artic", "Southern"),
                          area_km2 = c(77e6, 156e6, 69e6, 14e6, 20e6),
                          avg_depth_m = c(3926, 4028, 3963, 3953, 4500)) 
world_oceans
world_oceans[2,3] 
world_oceans$avg_depth_m
world_oceans$avg_depth_m[2]

world_oceans$borders_usa = c(TRUE, TRUE, FALSE, TRUE, FALSE)


#Volume Calculations
##avg depth in m to km
avg_depth_km = world_oceans$avg_depth_m/1000
print(avg_depth_km)
##v = area*depth
avg_depth_km*world_oceans$area_km2
##create new data frame
Travel = data.frame(oceans = c("Atlantic", "Pacific", "Indian", "Artic", "Southern"),
                    traveled = c(TRUE, TRUE, FALSE, FALSE, FALSE))
Travel


#2025-01-21 Script

round(5.88998798435, digits = 2) # number of digits after period

mean(world_oceans$avg_depth_m)

round(mean(world_oceans$avg_depth_m))


install.packages("ggplot2", dependencies = TRUE)
library("ggplot2")
summary(world_oceans)
summary(oceans)


random_data=c(1,"Atlantic", 3.7, TRUE)
random_data #number turns into character
random_data[1] + random_data[3] #throws error
#coercion
as.numeric(random_data[1]) + as.numeric(random_data[3])


##Special Characters

data = c(3,5,7.9, NA, 8)
data
mean(data, na.rm = TRUE) #rm is remove
is.na(data) #is element an na
sum(is.na(data)) #false is called 0 and true 1
1/0
Inf/Inf #NaN - not a number
Inf +2
0/0

dat2 = c(1,2, NA, 3, NULL, 4)
dat2
length(dat2)
