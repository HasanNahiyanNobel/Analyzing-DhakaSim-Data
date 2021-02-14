data = read.csv(file = "data.csv", header=TRUE)

freq_tab_stndng_ped = data.frame(value=data[1][!is.na(data[1])], freq=data[2][!is.na(data[2])])
freq_tab_parked_car = data.frame(value=data[3][!is.na(data[3])], freq=data[4][!is.na(data[4])])
freq_tab_parked_rck = data.frame(value=data[5][!is.na(data[5])], freq=data[6][!is.na(data[6])])
freq_tab_parked_cng = data.frame(value=data[7][!is.na(data[7])], freq=data[8][!is.na(data[8])])

dist_stndng_ped = rep(freq_tab_stndng_ped$value, freq_tab_stndng_ped$freq)
dist_parked_car = rep(freq_tab_parked_car$value, freq_tab_parked_car$freq)
dist_parked_rck = rep(freq_tab_parked_rck$value, freq_tab_parked_rck$freq)
dist_parked_cng = rep(freq_tab_parked_cng$value, freq_tab_parked_cng$freq)

plot(density(dist_stndng_ped))
# Distribution of standing pedestrians
curve(
  +0.4720*dnorm(x,mean=0.825,sd=0.40)
  +0.3300*dnorm(x,mean=1.925,sd=0.45)
  +0.1400*dnorm(x,mean=2.970,sd=0.40)
  +0.0485*dnorm(x,mean=3.730,sd=0.32)
  +0.0070*dnorm(x,mean=5.750,sd=0.40),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_car))
# Distribution of parked cars
curve(
  +0.060*dnorm(x,mean=1.10,sd=0.3575)
  +0.542*dnorm(x,mean=2.07,sd=0.3220)
  +0.170*dnorm(x,mean=3.64,sd=0.3320)
  +0.180*dnorm(x,mean=2.76,sd=0.2900)
  +0.038*dnorm(x,mean=4.48,sd=0.2700)
  +0.010*dnorm(x,mean=5.92,sd=0.3000),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_rck))
# Distribution of parked rickshaws
curve(
  +0.600*dnorm(x,mean=1.55,sd=0.520)
  +0.232*dnorm(x,mean=2.75,sd=0.415)
  +0.090*dnorm(x,mean=3.68,sd=0.300)
  +0.046*dnorm(x,mean=4.65,sd=0.380)
  +0.009*dnorm(x,mean=5.80,sd=0.380),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_cng))
# Distribution of parked CNGs
curve(
  +0.900*dnorm(x,mean=2.20,sd=0.70)
  +0.035*dnorm(x,mean=3.85,sd=0.20),
  col="red", lwd=2, add=TRUE)

# Test Stuffs
x = seq(-10, 10, by = .01)
y = dnorm(x,mean=3,sd=.8)
plot(x,y)

n = 1000
# aList = rnorm(n/0.3,mean=1,sd=0.3)+rnorm(n/0.7,mean=4,sd=0.5)
aList = rnorm(n,mean=2,sd=0.8)
# aList = rnorm(n/0.7,mean=4,sd=0.5)
aList = sort(aList)
plot(aList)
hist(aList)

