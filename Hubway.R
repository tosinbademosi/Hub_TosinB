
station<- read.csv("hubway_stations.csv")
# 1. What are the column names? Find out using R.
colnames(station)
# 2. How many stations are there? Find out using R.
length(unique(station$station))
# Here is the dictionary for this file:
#   ● id: station id assigned by MAPC; corresponds to strt_statn and end_statn in trips table
# ● terminal: Hubway-assigned station identifier
# ● station: station name
# ● municipal: Municipality
# ● lat: station latitude
# ● lng: station longitude
# ● status: Existing station locations and ones that have been removed or relocated
# 3. Look at the summary of this data frame with Hubway station information. Some of these bike stations don't exist anymore; create a data frame with only those that still exist. How many are left?
# don't exist anymore; create a data frame with only those that still exist. How many are left?
summary(station)
# Subsetting the data frame to obtain data set with only Existing in the status colums
station_existing <- station[station$status=="Existing",]
# Read in hubway_trips.csv to R
trip <- read.csv("hubway_trips.csv")
# 2. How many unique user zip codes are in this dataset?
length(unique(trip$zip_code))
#   3. How many unique bicycles are in this dataset?
length(unique(trip$bike_nr))
#   4. Calculate the count of rides for each unique bicycle.
bike_ride <- table(trip$bike_nr)
which.max(bike_ride)
#create data table for this data set.
table(trip$bike_nr)
bike_ride <-table(trip$bike_nr) 
# Do numbers 5-7 in pairs.
# 5. Which bicycle is ridden most frequently?
which.max(bike_ride)
# 6. Which bicycle is ridden least frequently
which.min(bike_ride)
# 7. Calculate the total duration of all rides for each bicycle. Hint: tapply() or aggregate()
aggregate(trip$duration,by=list(trip$bike_nr),FUN=sum)
dur_aggr <-aggregate(trip$duration,by=list(trip$bike_nr),FUN=sum)
# Check in: share and compare your answers.
# Let’s do #8-10 together
# 8. Which bicycle has been ridden for the longest total duration in this dataset?
dur_aggr[which.max(dur_aggr$x),]
#Shortest total duration?
  dur_aggr[which.min(dur_aggr$x),] 
#   9. Consider only trips on the bicycle that has been ridden for the longest duration, which station is its most frequent end station?
  max_tripby<- subset(trip,bike_nr=='B00585')
  maxtrip_table <- table(max_tripby$end_statn)
  which.max(maxtrip_table)
#Which station is its most frequent start station? Return the station ids.
  max2_tripby<- subset(trip,bike_nr=='B00585')
  max2trip_table <- table(max2_tripby$strt_statn)
  which.max(max2trip_table)
# 10. Look up the name of the above station ids in the stations data frame. What are the names of the most frequent start and end stations for this bicycle?
  merge.data.frame(station$trip)
  merge(station$trip)
  