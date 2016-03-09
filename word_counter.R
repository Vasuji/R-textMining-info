
### Word counter

word_count<-function(txt_doc){
  
  
  con<-file(txt_doc, "r", blocking=FALSE)
  x<-readLines(con,100)
  
  
#---------------------------------------------------------------------------

  #Remove YAML front matter on Rmd
  if(length(grep("---",x))>0){x<-x[-seq(1,max(grep("---",x)))]}
  wrds<-0
  max_len<-0
  
#--------------------------------------------------------------------------

  for(line in x){
    
    #Removes non character and splits
    split_line<-strsplit(gsub("[^[:alnum:] ]", "", line), " +")[[1]]
    
    #Removes empty string
    split_line<-split_line[split_line!=""]
    ln = length(split_line)
    if(max_len < ln){
      max_len<-ln
    }
    
    
    wrds<-wrds+ln
    output<- c(wrds,max_len)
    
  }

 #-------------------------------------------------------------------------
  close(con) 
  return(output)
}


#==========================================================

word_count("en_US.twitter.txt")


