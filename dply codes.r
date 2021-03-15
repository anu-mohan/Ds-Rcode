library(dplyr)

dim(flights)
flights<-flights

filter (flights,month==1,day==1)

#by default ascending order
arrange(flights, year, month, day)

#in descending order
arrange(flights,desc(arr_delay))

#select col by name
select(flights,year,month,day)

#select all col between year and day(inclusive)
select(flights, year:day)

#select all columns expect those from year to day
select(flights, -(year:day))

#create new column
f1<-mutate(flights,
      gain=arr_delay- dep_delay,
      speed=distance/air_time*60
      )

f1<-mutate(flights,
       gain=arr_delay- dep_delay,
       gain_per_hour=gain/(air_time*60)
)

#first 10records
sample_n(flights,10)

#random 10 records (0.01)(1 percent of data)this amount of fraction
sample_frac(flights,0.01)

##
destination<- group_by(flights,dest)
summarise(destination,
          planes=n_distinct(tailnum),
          flights=n()
          )

