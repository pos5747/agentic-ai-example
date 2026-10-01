# fit a logit model and report one predicted probability
dat <- read.csv("data.csv")

fit <- glm(y ~ x, family = binomal, data = dat)

# predicted probability that y = 1 when x = 1
pr <- predict(fit, newdata = data.frame(x = 1))
print(pr)
