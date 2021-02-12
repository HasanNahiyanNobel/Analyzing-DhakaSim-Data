data = read.csv(file = "data.csv", header=TRUE)

freq_tab_standing_pedestrian = data.frame(value=data[1][!is.na(data[1])],freq=data[2][!is.na(data[2])])

freq_tab_standing_pedestrian

dist_standing_pedestrian = rep(freq_tab_standing_pedestrian$value,freq_tab_standing_pedestrian$freq)


# Old Code
# distwp = data[1]
# distwp = distwp[!is.na(distwp)]
# distsp = data[2]
# distsp = distsp[!is.na(distsp)]
# distc = data[3]
# distc = distc[!is.na(distc)]
# distnc = data[4]
# distnc = distnc[!is.na(distnc)]
# 
# hist(distwp,breaks=ceiling(max(distwp)),
#      col=rgb(0,0,1,1/4),xlab="Distance of Walking Pedastrian", 
#      cex.lab=1.3,cex.axis=1.3, col.axis="blue")
# 
# hist(distsp,breaks=ceiling(max(distsp)),
#      col=rgb(0,0,1,1/4),xlab="Distance of Standing Pedastrian", 
#      cex.lab=1.3,cex.axis=1.3, col.axis="blue")
# curve(10*dbeta(x/6,1.5,2.5), 
#       col="darkblue", lwd=2, add=TRUE, yaxt="n")
# 
# hist(distc,breaks=ceiling(max(distc)),
#      col=rgb(0,0,1,1/4),xlab="Distance of Car", 
#      cex.lab=1.3,cex.axis=1.3, col.axis="blue")
# curve(length(distc)*dnorm(x,mean=mean(distc), sd = sd(distc)), 
#       col="darkblue", lwd=2, add=TRUE, yaxt="n")
# 
# density_wp = density(distwp)
# density_sp = density(distsp)
# density_c = density(distc)
# density_nc = density(distnc)
# plot(density_wp)
# plot(density_sp)
# plot(density_c)
# plot(density_nc)
# curve(0.475*dnorm(x,mean=1,sd=0.5)+0.18*dnorm(x,mean=2,sd=0.4)+0.27*dnorm(x,mean=3,sd=0.6),
#       col="darkblue", lwd=2, add=TRUE, yaxt="n")