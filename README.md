# wedding-guest-estimator

Uses Monte Carlo simulation to estimate the number of guests attending a wedding with Octave. Each guest is assigned a probability of attending. This probability is used to generate `n` random samples from the binomial distribution for each guest (where `n` is the number of simulations to run).

## Setup
* Choose number of simulations, `n`

* Supply `guestList.csv` (`main.m` loads in a provided `guestList.csv` in three columns with each guest on a new row). See the following example data:

```
Liam Neeson 0.8
Mason Dixon 0.5
Karen Heart 0.6
Jacob Smith 0.95
Carrie Smith 0.95
William Schatner 0.1
```

## Results
* A bar plot providing the probability of various number of guests attending
* Mean number of guests expected
* Quantiles of number of guests attending from 0% to 100% probability at 10% intervals
