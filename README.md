# stochastic.el

Stochastic modeling for Emacs.

## Installation

    M-x package-install stochastic

## API

### stochastic--matrixp
Valid transition (NxN) `MATRIX.`

### stochastic--box-muller
Point of mean `MU` and standard deviation `SIGMA.`

### stochastic--random
Random number between `0` and `1.`

### rnd
Random number between `0` and `1.`

### stochastic--exp
Exponential random number with rate `RATE.`

### stochastic--collate
Transtion matrix of mapped `STATES.`

### stochastic-poiss-p
Arrival times in a Poisson Process with rate `RATE,` positive number `TIMES,` and boolean `PATH.`

### stochastic-norm
Normal vector of `MU` mean and `SIGMA` standard deviation and `NUM` normal random variables provides a vector of `NUM` values.

### stochastic-brown
Brownian motion vector of drift parameter `MU,` `SIGMA` volatility, time `TIME,` for a number of `STEPS.` Optional `PATH` to obtain a single value.

### stochastic-gbm
Geometric Brownian motion vector of initial value `S0,` drift parameter `MU,` `SIGMA` volatility, time `TIME,` for a number of `STEPS.` Optional `PATH` to obtain a single value.

### stochastic-dtmc
Discrete-time Markov Chain of transition matrix `TRANS-MATRIX` of a number `STEPS,` given a string number `START.` Optional `PATH` to give only a single value.

### stochastic-ctmc
Continuous-time Markov Chain of transition matrix `TRANS-MATRIX` of a number `STEPS,` given a string number `START.` Optional `PATH` to give only a single value.

### stochastic-sample
Random sample from initial vector `ARR` of size `N.`

### stochastic-pareto
Pareto random variables with positive number `X-M` and `ALPHA.`

### stochastic-hist
Historgram object given a sample of `ARR.`

## Development 

    brew install emacs cask

    M-x ert 
    
    
## Testing 

```
$ make test
```

## Contributing

 1. **Fork** the repo on GitHub
 2. Submit a **Pull request** 

## Background

https://en.wikipedia.org/wiki/Stochastic_process

## Brownian Motion

- https://www.math.ucdavis.edu/~hunter/m280_09/ch5.pdf

## Continuous / Discrete Time Markov Chain

- http://www.columbia.edu/~ks20/stochastic-I/stochastic-I-CTMC.pdf
- http://www.columbia.edu/~ks20/stochastic-I/stochastic-I-MCI.pdf

## Poisson Process

= https://www.netlab.tkk.fi/opetus/s38143/luennot/E_poisson.pdf
