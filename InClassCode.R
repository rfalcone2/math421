# Read in a csv file
df <-  read.csv('https://bryantstats.github.io/math421/data/WHO-COVID-19-global-data.csv')

# show the names of the column
names(df)

# structure of the data in general
str(df)


#question 14
df1 <- df[df$Date>='2021-01-01',] 

df2 = df1[df1$State=='Rhode Island',] 

df3 = df[(df$Date>='2021-01-01')&(df1$State=='Rhode Island'),]

by(df2$Cases, df2$State, mean)

df %>% 
  select(state,death)
  filter(state == "RI")
  summarise(average_death = mean(death, na.ra = TRUE))
  
df %>% 
  select(state, deat) %>% 
  Filter(state == "AZ") %>% 
  summarise(total_death, = sum(death, na.ra = TRUE))

df %>% 
  select(state, date, death) %>% 
  filter(date >= '2021-01-01', date<"2022-01-01") %>% 
  filter(state == 'RI'| state == "MA"| state== "CT") %>% 
  summarise(average_date = mean(date, na.ra = TRUE))
  

df %>% 
  select(state, date, death) %>% 
  filter(date >= '2021-01-01', date<"2022-01-01") %>% 
  filter(state == 'RI'| state == "MA"| state== "CT") %>% 
  group_by(state) %>% 
  summarise(average_date = mean(date, na.ra = TRUE))
  arrange(average_death)
  
#create a new variable using base R
df$wd = weekdays(df$date)

df %>% 
  mutate(wd2 = weekdays(date)) %>% 
  filter(state == "RI") %>% 
  group_by(wd2) %>% 
  summarise(median_death_RI = median(death, na.rm=TRUE)) %>% 
  arrange(-median_death_RI)

#filter out RI
df1 = df(df$state=="RI")

#calculate by groups
by(data=df1$death, INDICES = df1$wd,FUN = median(df1$death,na.rm = TRUE))

df2 = df1(df1Snd=="Sunday",)
mean(df2$death)
mean(df2$death,na.rm=TRUE)
median(df2$death,na.rm=TRUE)