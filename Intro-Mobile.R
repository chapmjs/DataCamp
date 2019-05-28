a <- c(1,8,2,6)
names(a)=c('a','b','c')
a[c(1,3)]==2

a<- c(1,2,3)
b <- c(4,5,6)
c(a,b)

c(1:4 + c(8.9))
a<- c(8,9)
c(1:4,a)

matrix(1:4, nrow=2)

matrix(1:4, nrow=1)

matrix(c("a","b"),nrow=2)

matrix(1:6, nrow =3)

matrix(1:4, byrow=TRUE,nrow=2)
matrix(1:4,nrow =2)

matrix(c(5,4,2,3),
       byrow=TRUE, nrow=2)

a <- c(2, 4, 6)
b <- 1:3
x <- c(a, b)
matrix(x,byrow = TRUE,nrow =2)


m <- matrix(c(19,31), nrow=1)
rownames(m) <- c("age")
colnames(m) <- c("Ed", "Amy")
m


m <- matrix(c(2, 4), nrow=1)
colnames(m)<- c("bird","cat")
rownames(m)<- c("feet")
m


v <- c("red","red", "blue")
factor(v)


v <- c("y","x","z","y")
f<- factor(v)
levels(f)

v <- c("red","red","blue")
f<- factor(v
           )
`levels<-`(f)
levels(f)


v <- c("r","b","b")
f <- factor(v)
levels(f)
levels(f) <- c("blue","red")
levels(f)

levels(f) <- c("big","round")
levels(f)
levels(f) <- c("b","r")
levels(f)

v <- c("tx","ia")
f <- factor(v)
levels(f) <- c("Iowa","Texas")
levels(f)


v <- c("c", "d","c")
f <- factor(v)
levels(f) <- c("cat","dog")
f


v <- c("ch","gr")
f <- factor(v)
levels(v)
levels(f)<-c("cherry","grape")
f


v<-c("a","a","b")
v
f<-factor(v)
f


v <- c("a","a","b","c")
f <- factor(v)
summary(f)


v <- c("x","y","x","x","x")
f <- factor(v)
summary(f)


v <- c("j","k","l")
summary(v)
rm(x)

v <- c("j","k","l")
v <- factor (v)
v[1]


v<-c("j","k","l")
v[1]
v<-factor(v)
v[2]


v<- c("low","high","med")
f<-factor(v)
f[1] <f[2]

speeds<- c("high","low","med","med")
factor(speeds,ordered = TRUE)

speeds<-c("low","high","med","med")
factor(speeds,levels=c("low","med","high"))

heights<-c("tallest","short","tall","tall")
factor(heights,ordered = TRUE,levels=c("tallest","tall","short"))

speeds<- c("low","high","med","med")
factor(speeds, ordered=TRUE,levels=c("low","med","high"))

v <- c("low","high","med")
f<-factor(v,ordered = TRUE,levels=c("low","med","high"))
f[1] < f[2]


v<-c("hot","cold","tepid")
l <- c("cold","tepid","hot")
f_v <- factor(v, ordered=TRUE,levels=l)
f_v


v <- c("hot","cold","tepid","hot")
factor(v,ordered = TRUE,levels = c("cold","tepid","hot"))


#order() function
order (c(5,10,1))

order (c(1,4,2,3))

order (c(10,11,21,51,3)) # 5 1 2 3 4

a <- c(2,1,3)
b <- c("x","y","z")
d <- data.frame(a,b)
d[order(d$a),]


name <- c("Jane","Bob","Joy")
count <- c(8,3,1)
d <- data.frame(name, count)
d[order(d$count),]

a <- c(6,4,7,2,9)
d <- data.frame(a, b=1:5)
d <- subset (d, b>2)
d[order(d$a),]

v <- c(5,3,9,4)
order (v) # 2 4 1 3
v <- c(4,9,5,3)
order (v) # 4,1,3,2
v <- c(4,9,3,5)
order (v) # 3 1 4 2

v <- c(5,7,6)
order (v)

a <- c(1,4,2,3)
b <- 6:9
d <- data.frame(a,b)
order(d$a) #1 3 4 2

b <- c(5,2,7,3)
d <- data.frame(a=1:4, b)
pos <- order(d$b)
d$b[pos]


list(1:3, matrix(4:6,nrow=1))
list(1:3,4:6)

list(3, "sandwich")

d<- data.frame(a =1:2,b=3:4)
list(d,7:9)

list(a=1:3,b=matrix(4:6, nrow=1))

l <- list(a)

d<-data.frame(x=1:2,y=3:4)
m<-matrix(1:4,nrow=1)
mylist<-list(d,m)
mylist[[1]]

x <- data.frame(a=1:50,b=51:100)
l <- list(df=x, vec=c(TRUE,FALSE))
l[["df"]][1:3,]

d <- data.frame(a=1:5,b=2:6)
v <- c(TRUE,FALSE)
l <- list(v,d)
str(l)

l <- list(food="muffin",nums=4:7)
str(l)
