r=read.csv("WIKI-AAPL 6M.csv")
sm50=SMA(r[c("Close")],n=50)
em10=EMA(r[c("Close")],n=50)
r$Close[50:60]
sm50[70:80]
em10[70:80]
plot(r$Close[70:90],col="blue",type="l",xlab="Days",ylab="Closing prices and SMA50 values")
lines(sm50[70:90],col="red")
legend( x="bottomleft",legend=c("Buy","sell"),col=c("red","red"), lwd=1, lty=c(NA,NA), pch=c(21,25), merge=FALSE )

legend(12,2530,c("BUY","SELL"),lty=c(1,1),lwd=c(2.5,2.5),col=c("blue","red"))
mean(r$Close)
sd(r$Close)
min(r$Close)
max(r$Close)

points(3,2495.85,col="red",pch=21,cex=2)
points(9,2602.60,col="red",pch=25,cex=2)
points(2,98.46,col="red",pch=21,cex=2)
points(6,99.62,col="red",pch=25,cex=2)
points(10,94.2,col="red",pch=21)
head(r)
colnames(r)
nrow(r)
install.packages("TTR")
library(TTR)
sm10=SMA(r[c("Close")],n=10)
View(r)
r$Date[60:80]
r$Close[50:70]
sm50[50:70]

sm100=SMA(r[c("Close")],n=100)

lines(r$Close,col="blue")
lines(sm10,col="blue")

lines(sm100,col="green")
lines(em10,col="green")

1289.45	-1291.522
1289.35	-1292.656

bmm=BBands(r[c("Close")],sd=2)
bbEMA = BBands(r[c("CLose")], sd=2, n=14, mavg=EMA)
rsi14 = RSI(r[c("Close")], n=14)
macd = MACD(r[c("Close")], nFast=12, nSlow=26, nSig=9, maType=SMA)
allData = data.frame(r,sm10,emm,bmm,rsi14,macd)
colnames(allData)
ff=data.frame(r,bmm)
plot(ff$Date,allData$Close)
plot(ff$Close, col = "red")
lines(ff$up, col = "black")
lines(ff$dn, col = "green")
lines(ff$mavg, col = "blue")

#########333
install.packages("quantmod")
library(quantmod)
getSymbols("APPL") #Goldman OHLC from yahoo
#[1] "GS"


chartSeries(GS, TA=NULL)
chartSeries(GS, theme="white",TA="addVo();addBBands();addCCI()") 
