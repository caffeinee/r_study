#
# 2 Simple manipulations; numbers and vectors
#
# 2.1 Vectors and assignment

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
x

assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
x

c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
x

1/x

y <- c(x, 0, x)
y

# 2.2 Vector arithmetic
# 길이가 안맞아서 warning 발생
v <- 2*x + y + 1
v

# sample variance를 구하는 공식 
sum((x-mean(x))^2)/(length(x)-1)

sqrt(-17)

sqrt(-17+0i)

# 2.3 Generating regular sequences

seq(-5, 5, by=.2) -> s3
s3

s4 <- seq(length=51, from=-5, by=.2)
s4

s5 <- rep(x, times=5)
s5

s6 <- rep(x, each=5)
s6

# 2.4 Logical vectors

temp <- x > 13
temp

# 2.5 Missing values

z <- c(1:3,NA);  ind <- is.na(z)
z
ind

0/0

Inf - Inf

# 2.6 Character vectors

labs <- paste(c("X","Y"), 1:10, sep="")
labs

c("X1", "Y2", "X3", "Y4", "X5", "Y6", "X7", "Y8", "X9", "Y10")

# 2.7 Index vectors; selecting and modifying subsets of a data set
## 1. A logical vector

x <- c(1,2,3,NA,5,6,7,NA,9,-10)
x

y <- x[!is.na(x)]
y 

(x+1)[(!is.na(x)) & x>0] -> z
z

## 2. A vector of positive integral quantities

x[1:10]

c("x","y")[rep(c(1,2,2,1), times=4)]

## 3. A vector of negative integral quantities.

y <- x[-(1:5)]
y

## 4. A vector of character strings

fruit <- c(5, 10, 1, 20)
names(fruit) <- c("orange", "banana", "apple", "peach")
fruit

lunch <- fruit[c("apple","orange")]
lunch

#
# x[is.na(x)] <- 0

# y[y < 0] <- -y[y < 0]

# y <- abs(y)

#
# 3 Objects, their modes and attributes
#
# 3.1 Intrinsic attributes: mode and length

z <- 0:9
digits <- as.character(z)
digits

d <- as.integer(digits)
d

# 3.2 Changing the length of an object

e <- numeric()
e

e[3] <- 17
e

alpha <- 1:10
alpha <- alpha[2 * 1:5]
alpha 

length(alpha) <- 3
alpha

# 3.3 Getting and setting attributes

attr(z, "dim") <- c(10,10)

# 3.4 The class of an object

mtcars
class(mtcars)
unclass(mtcars)

#
# 4 Ordered and unordered factors
#
# 4.1 A specific example

state <- c("tas", "sa",  "qld", "nsw", "nsw", "nt",  "wa",  "wa",
             "qld", "vic", "nsw", "vic", "qld", "qld", "sa",  "tas",
             "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
             "sa",  "act", "nsw", "vic", "vic", "act")
state

statef <- factor(state)
statef

levels(statef)

# 4.2 The function tapply() and ragged arrays

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)

incmeans <- tapply(incomes, statef, mean)
incmeans

stderr <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, statef, stderr)
incster
