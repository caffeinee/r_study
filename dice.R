# 주사위를 k번 던진 값의 평균을 구한다.
# 위의 과정을 총 N번 반복한다.
# N개의 평균 값에 대한 히스토그램을 그린다.

histogram_rolldice <- function(k=7,n=2000) {
	x1<- matrix(trunc(runif(n*k) * 6 + 1), ncol=k)
	result <- apply(x1,1,mean)
	hist(result)
}

histogram_rolldice <- function(k=7,n=2000) {
	hist(apply(matrix(sample(1:6, k*n, replace=TRUE) , ncol=k),1,mean), main="Histogram of RollDice", xlab="RollDice")
}