# Introduction to Probability and Statistics Using R by G. Jay Kerns
# http://cran.r-project.org/web/packages/IPSUR/vignettes/IPSUR.pdf

#install.packages("IPSUR")
#install.packages("distrEx")

# 4.1 Sample Spaces

library(prob)
tosscoin(1)
tosscoin(3)

rolldie(1)
rolldie(2)

head(cards())

# 4.1.2 Sampling from Urns

# x     a vector or data frame from which sampling should take place.
# size  number indicating the sample size.

urnsamples(1:3, size = 2, replace = TRUE, ordered = TRUE)   # Ordered, With Replacement
urnsamples(1:3, size = 2, replace = FALSE, ordered = TRUE)  # Ordered, Without Replacement
urnsamples(1:3, size = 2, replace = FALSE, ordered = FALSE) # Unordered, Without Replacement

# 4.2 Events

S <- tosscoin(4, makespace = TRUE)
S[1:3, ]
S[c(2,4),]

S <- cards()
subset(S, suit == "Heart")
subset(S, rank %in% 7:9)

subset(rolldie(3), X1 + X2 + X3 > 16)

# 4.2.2 Functions for Finding Subsets

x <- 1:10
y <- 8:12
y %in% x
isin(x,y)

x <- 1:10
y <- c(3,3,7)
all(y %in% x)

isin(x, c(3, 4, 5), ordered = TRUE)
isin(x, c(3, 5, 4), ordered = TRUE)

S <- rolldie(4)
subset(S, isin(S, c(2, 2, 6), ordered = TRUE))

# 4.2.3 Set Union, Intersection, and Difference

S = cards()
A = subset(S, suit == "Heart")
B = subset(S, rank %in% 7:9)

union(A, B)
intersect(A, B)
setdiff(A, B)
setdiff(B, A)

# 4.3.4 Equally Likely Model (ELM)

outcomes <- rolldie(1)
p <- rep(1/6, times = 6)
probspace(outcomes, probs = p)

# 4.4 Properties of Probability

S <- cards(makespace = TRUE)
A <- subset(S, suit == "Heart")
B <- subset(S, rank %in% 7:9)

prob(A)
prob(S, suit == "Heart")

# 4.5 Counting Methods

nsamp(n = 3, k = 2, replace = TRUE, ordered = TRUE)
nsamp(n = 3, k = 2, replace = FALSE, ordered = TRUE)
nsamp(n = 3, k = 2, replace = FALSE, ordered = FALSE)
nsamp(n = 3, k = 2, replace = TRUE, ordered = FALSE)

n <- c(11, 7, 31)
k <- c(3, 4, 3)
r <- c(FALSE, FALSE, TRUE)
x <- nsamp(n, k, rep = r, ord = TRUE)
prod(x)

# The Birthday Problem

g <- Vectorize(pbirthday)
plot(1:50, g(1:50), xlab = "Number of people in room", ylab = "Prob(at least one match)", main = "The Birthday Problem")
abline(h = 0.5)
abline(v = 23, lty = 2) # dashed line


# 4.6 Conditional Probability

library(prob)
S <- rolldie(2, makespace = TRUE)  # assumes ELM
head(S)                            #  first few rows

A = subset(S, X1 == X2)
B = subset(S, X1 + X2 >= 8)

# prob(A, given = B)
# prob(B, given = A)


# http://www.cyclismo.org/tutorial/R/probability.html


library(distrEx)

X <- Binom(size = 3, prob = 0.45)
E(X)

x <- c(4, 7, 9, 11, 12)
ecdf(x)
plot(ecdf(x))