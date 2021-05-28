firstqnr=9149776
filename_org="List_sample_files.txt"
setwd("C:\\Users\\Φώτης\\Documents\\ΒτΕ\\Parliamentary Control\\sample\\sample files")

filelist=dir()

flist=substr(filelist,1,7)

qbody2=NULL
qbody2[1]=c(qbody2,  paste("<ID>",firstqnr,"</ID>",sep="") )

index=firstinlist
qbody2=c(qbody2,  paste(index))
for (i in 1:(length(flist)-1)){
    index=index+1
    qbody2=c(qbody2,  "\r")
    qbody2=c(qbody2,  paste("<ID>",flist[index],"</ID>",sep="") )
    qbody2=c(qbody2,  paste(index))
}

setwd("C:\\Users\\Φώτης\\Documents\\ΒτΕ\\Parliamentary Control")
write(qbody2,paste(filename_org,sep=""))
