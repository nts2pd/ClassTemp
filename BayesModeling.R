model{
  X ~ dnorm(theta, sigma)
  theta ~ dnorm(mu, tau)
  mu ~ dnorm(0, 1)
  tau <- 10
  sigma ~ dexp(3)
}

#check model, then compile.
#load init for 1
#then go to inference - samples. "nod" is what you will trace. Trace X, then set. 
#then theta, set. then mu, tao, and sigma, set after each. Last one is *.
#choose 1000 simulations and update.

#another model
model{
  X ~ dnorm(theta, sigma)
  sigma < -10
  theta ~ dnorm(0, 10000)
}

#new model will cancel out last model

model{
  X ~ dpois(theta)
  theta ~ dgamma(5, 10)
}

model{
  for(i in 1:n){X[i] ~ dpois(theta)}
  theta ~ dgamma(5, 10)
}
list( n = 5, X = c(5,6,0,3,1))

