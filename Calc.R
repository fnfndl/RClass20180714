# 오칙연산
1+1
a <-1
a
b <-2
b
a+b
vec01 <-c(1,2,5,7,8)
vec01
vec02 <-c(1:5)
vec02
vec03 <- seq(1,5)
vec03
vec04 <- 1:5
vec05 <-seq(1,10, by=2)
vec05
class(vec05)
vec06 <- c("안","녕")
class(vec06)
vec06 <- 1:3
mean(vec06)
# 5+7 로직을 구하시오
x <-5
y <-7
## 5+7 로직을 식까지 보이도록 구하시오
cat(x,op,y,eq,x+y)
## 더하기 로직을 식까지 보이도록 구하시오
plus <- function(x,y){return(x+y)}
plus(3,4)
Minus <- function(x,y){return(x-y)}
Minus(6,2)
Mult <-function(x,y){return(x*y)}
Mult(3,2)
Divide <-function(x,y){return(x%/%y)}
Divide (9,2)
remainder <-function(x,y){return(x%%y)}
remainder (9,2)

## switch 구문
op <- "+"
x <-6
y <-3

switch(
  op,
  '+'=toString(x+y),
  '-'=toString(x-y),
  '*'=toString(x*y),
  '/'=toString(x%/%y),
  '%'=toString(x%%y)
)

## if - else 구문 (함수 만들기 전)
x <- 6
op <- "+"
y <- 3

if(op=="+")cat(x,"op",y,"=",x+y) else
if(op=="-")cat(x,"op",y,"=",x-y) else
if(op=="*")cat(x,"op",y,"=",x*y) else
if(op=="/")cat(x,"op",y,"=",x%/%y) else
if(op=="%")cat(x,"op",y,"=",x%%y)else
print("error")

## switch 구문(함수 만들기 전)

x <- 6
op <- "-"
y <- 3

switch(
  op,
  "+"=cat(x,"+",y,"=",x+y),
  "-"=cat(x,"-",y,"=",x-y),
  "*"=cat(x,"*",y,"=",x*y),
  "/"=cat(x,"/",y,"=",x%/%y),
  "%"=cat(x,"%",y,"=",x%%y),
  "error"
)

## if - else 구문 (함수)

calc <- function(x,op,y){
  res<-if(op=="+")x+y else
if(op=="-")x-y else
if(op=="*")x*y else
if(op=="/")x%/%y else
if(op=="%")x%%y else
"error"
return(cat(x,op,y,"=",res))
}

calc(7,"-",3)

##성적표 
## 국어, 영어, 수학 세 개의 총점과 평균 계산
# grade(80,80,80)
# 총점 : 240 평균 : 80

kor <- 80
eng <- 80
mat <- 80
sum <- kor+eng+mat
avg <- sum/3


grad <- function(kor,eng,mat){
  sum <- kor+eng+mat
  avg <- sum/3
  return(cat("총점:",sum,"평균:",avg))
  }
grad(kor,eng,mat)


kor <- 80
eng <- 80
mat <- 80
cat("총점:",kor+eng+mat,"평균:",mean(kor,eng,mat))

#if-else, switch
#평균이 90점 이상이면 A, 80 이상이면 B, 70 이상이면 C, 60 이상이면 D, 50 이상이면 D, 그 밖에는 F

kor <- 80
eng <- 80
mat <- 80
sum <- kor+eng+mat
avg <- sum/3

if(avg>=90)"A" else
  if(avg>=80)"B" else
    if(avg>=70)"C" else
      if(avg>=60)"D" else
        if(avg>=50)"E" else
          print("F")


kor <- 80
eng <- 80
mat <- 80
sum <- kor+eng+mat
avg <- (sum/3)/10

switch(
  toString(avg),
  "10"="A",
  "9"="A",
  "8"="B",
  "7"="C",
  "6"="D",
  "5"="E",
  "F") 



