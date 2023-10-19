# data

head(trees) # 기본적으로 6번째까지 출력된다
tail(trees)

dim(trees) # 31열, 3행

names(trees) # column name
names(trees) <- c('g','h','v') # column name에 다른 이름으로 초기화
head(trees)

head(sunspots)
class(sunspots) # 'ts' : time series data라는 뜻

length(sunspots) # 관측치의 갯수

print(Titanic)
class(Titanic)
dim(Titanic) # 4 2 2 2, 4차원 데이터이다

plot(trees)

pairs(trees) # pair plots
plot(sunspots) #time series

plot.ts(sunspots) # plot.ts는 time series data를 plot하는 함수이다
plot(Titanic)
plot(Titanic, col = 2:3)

mosaicplot(Titanic, col = 2:3) # mosaic plot