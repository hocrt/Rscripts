#firstqnr=[starting file number]
firstqnr=10003487
filename_org="file_name.txt"
setwd("C:\\Users\\Public\\qretrieve\\out\\IZ period\\IZ sample PDFs final")

#List of files 
filelist=dir()

flist=substr(filelist,1,8)
firstinlist=which(filelist==paste(firstqnr,".pdf",sep=""))
setwd("C:\\Users\\Public\\qretrieve\\out\\IZ period")

qbody=readLines(filename_org,encoding="UTF-8")

qbody2=NULL
qbody2[1]=c(qbody2,  paste("<ID>",firstqnr,"</ID>",sep="") )
index=firstinlist
for (i in 1:(length(qbody)-1)){
  if(qbody[i]!="") {
    qbody2=c(qbody2,qbody[i])
    next
  }
  else if((qbody[i]=="")&&(qbody[i+1]=="")) next
  else if((qbody[i]=="")&&(qbody[i+1]!="")) {
    index=index+1
    qbody2=c(qbody2,  "\r")
    qbody2=c(qbody2,  paste("<ID>",flist[index],"</ID>",sep="") )
  }
}

qbody2=sub("\uFEFF", "",qbody2)
setwd("C:\\Users\\Public\\qretrieve\\out\\IZ period")
write(qbody2,paste("mod_",filename_org,sep=""))


