library(MASS)

args <- commandArgs(trailingOnly = T)

fdata <- args[1]
fout_W <- args[2]
fout_A <- args[3]
delt <- as.numeric(args[4])

data <- as.matrix(read.table(fdata))
cnum <- dim(data)[2]
gnum <- dim(data)[1]

W <- matrix(rep(0,gnum*gnum), nrow=gnum, ncol=gnum)
X <- data[,1:(cnum-1)]

if(inherits(try(solve(X%*%t(X)), silent=TRUE), "try-error")){
	invXX <- ginv(X%*%t(X))
} else {
	invXX <- solve(X%*%t(X))
}

for(i in 1:gnum){
	Y <- (data[i,2:cnum]-data[i,1:(cnum-1)])/delt 
	W[i,] <- invXX %*% X%*%Y
}

write.table(W,fout_W,sep="\t",col.names=F,row.names=F)
write.table(-W%*%W,fout_A,sep="\t",col.names=F,row.names=F)
