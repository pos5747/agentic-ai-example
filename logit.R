# fit a logit model and report one predicted probability
dat <- read.csv("data.csv")

fit <- glm(y ~ x + z, family = binomal, data = dat)

# predicted probability that y = 1 when x = 1 and z = 0
pr <- predict(fit, newdata = data.frame(x = 1, z = 0))
print(pr)
