data = read.csv(file = "data.csv", header=TRUE)

freq_tab_stndng_ped = data.frame(value=data[1][!is.na(data[1])], freq=data[2][!is.na(data[2])])
freq_tab_parked_car = data.frame(value=data[3][!is.na(data[3])], freq=data[4][!is.na(data[4])])

dist_stndng_ped = rep(freq_tab_stndng_ped$value, freq_tab_stndng_ped$freq)
dist_parked_car = rep(freq_tab_parked_car$value, freq_tab_parked_car$freq)

plot(density(dist_stndng_ped))
plot(density(dist_parked_car))

plot(density(dist_stndng_ped))
curve(
  0.472*dnorm(x,mean=0.825,sd=0.4)
  +0.33*dnorm(x,mean=1.925,sd=0.45)
  +0.14*dnorm(x,mean=2.97,sd=0.4)
  +0.0485*dnorm(x,mean=3.73,sd=0.32)
  +0.007*dnorm(x,mean=5.75,sd=0.4),
  col="red", lwd=2, add=TRUE)