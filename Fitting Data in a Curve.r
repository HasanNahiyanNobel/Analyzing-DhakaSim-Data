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
  0.472*dnorm(x,mean=0.825,sd=0.4)
  +0.33*dnorm(x,mean=1.925,sd=0.45)
  +0.14*dnorm(x,mean=2.97,sd=0.4)
  +0.0485*dnorm(x,mean=3.73,sd=0.32)
  +0.007*dnorm(x,mean=5.75,sd=0.4),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_car))
# Distribution of parked cars
curve(
  0.06*dnorm(x,mean=1.1,sd=0.3575)
  +0.542*dnorm(x,mean=2.07,sd=0.322)
  +0.17*dnorm(x,mean=3.64,sd=0.332)
  +0.18*dnorm(x,mean=2.76,sd=0.29)
  +0.038*dnorm(x,mean=4.48,sd=0.27)
  +0.01*dnorm(x,mean=5.92,sd=0.3),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_rck))
# Distribution of parked rickshaws
curve(
  0.6*dnorm(x,mean=1.55,sd=0.52)
  +0.232*dnorm(x,mean=2.75,sd=0.415)
  +0.09*dnorm(x,mean=3.68,sd=0.3)
  +0.046*dnorm(x,mean=4.65,sd=0.38)
  +0.009*dnorm(x,mean=5.8,sd=0.38),
  col="red", lwd=2, add=TRUE)


plot(density(dist_parked_cng))
# Distribution of parked CNGs
curve(
  0.9*dnorm(x,mean=2.2,sd=0.7)
  +0.035*dnorm(x,mean=3.85,sd=0.2),
  col="red", lwd=2, add=TRUE)
