# IPSUR: Example 10.4. Page 232
#
# Student Admissions at UC Berkeley
#
# Aggregate data on applicants to graduate school at Berkeley for the six largest departments
# in 1973 classified by admission and sex.

# Suppose p = the proportion of students who are admitted to the graduate school
# of the University of California at Berkeley, and suppose that a public relations
# officer boasts that UCB has historically had a 40% acceptance rate for its graduate school.
# Consider the data stored in the table UCBAdmissions from 1973. Assuming these observations
# constituted a simple random sample, are they consistent with the officer’s claim,
# or do they provide evidence that the acceptance rate was significantly less than 40%?
# Use an α = 0.01 significance level.
# Our null hypothesis in this problem is H0 : p = 0.4 and the alternative hypothesis is H1 : p < 0.4. 
# We reject the null hypothesis if pˆ is too small, that is, if

# z score:
#qnorm()


A <- as.data.frame(UCBAdmissions)
head(A)
xtabs(Freq ~ Admit, data = A)

phat <- 1755/(1755 + 2771)
(phat - 0.4)/sqrt(0.4 * 0.6/(1755 + 2771))
-qnorm(0.95)
pnorm(-1.680919)

prop.test(1755, 1755 + 2771, p = 0.4, alternative = "less", conf.level = 0.99, correct = FALSE)

library(IPSUR)






# par(mfrow=c(2,2)) 





# examples(prop.test)

heads <- rbinom(1, size = 100, prob = .5)
prop.test(heads, 100)          # continuity correction TRUE by default
prop.test(heads, 100, correct = FALSE)
plot(heads)

## Data from Fleiss (1981), p. 139.
## H0: The null hypothesis is that the four populations from which
##     the patients were drawn have the same true proportion of smokers.
## A:  The alternative is that this proportion is different in at
##     least one of the populations.

smokers  <- c( 83, 90, 129, 70 )
patients <- c( 86, 93, 136, 82 )
t <- prop.test(smokers, patients)
plot(t, "Hypoth")
