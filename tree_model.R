library(rpart)
fit1 <- rpart(Kyphosis ~ Age + Number + Start, data=kyphosis)
fit2 <- rpart(Kyphosis ~ Age + Number + Start, data=kyphosis, parms=list(prior=c(.65,.35), split='information'))
fit3 <- rpart(Kyphosis ~ Age + Number + Start, data=kyphosis, control=rpart.control(cp=.05))

par(mfrow=c(1,2), xpd=NA)
plot(fit1)
text(fit1, use.n=TRUE)

plot(fit2)
text(fit2, use.n=TRUE)

print(fit3)
summary(fit3)

