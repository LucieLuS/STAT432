---
title: "Pre-processing"
author: "Lucie Lu"
date: "10/24/2021"
output: pdf_document
---

###tidytext
###https://www.tidytextmining.com/tidytext.html

```{r load data}
texts <- readLines("C:/Users/Lucie Lu/Box Sync/Summer writing 2021/Final_data_textonly_txt", 
                   encoding="UTF-8")
```

```{r remove stop words}
#use jiebaR to tokenize
library(jiebaR)
tok_rm1 <- worker(bylines = TRUE, stop_word = 'C:/Users/Lucie Lu/Box Sync/Summer writing 2021/hit_stopwords.txt',
            type = 'mix')

segment_tok_rm1 <- segment(texts, tok_rm1)

#checked 1-1200
head(segment_tok_rm1[1:100], 20)

#create customized words! work now!
tags = c(rep("n", 41))
add_words <- new_user_word(tok_rm1, words = c("买买买", "表情包", "中联办", "内地生", "双11", "穿搭", "红磡",
                                              "易烊千玺", "福原爱", "小s", "华晨宇", "雷佳音",
                                              "德库拉", "郑云龙", "林峯", "张馨月", "王多多", "接盘侠",  "笑点",
                                              "庆余年", "王子文", "渣男", "二师兄", "房企",
                                              "霍建华", "刘诗诗", "杨超越", "一句话",  "伤医案", "遇害案", "90后",
                                              "孔刘", "莫兰特", "B站", "哈利波特", "汤唯",
                                              "2万", "撒贝宁", "5G", "8k版", "娜扎"),
                           tags)

##come back and work on new_user_word
segment_tok_rm1 <- segment(texts, tok_rm1)
segment_tok_rm1 <- segment_tok_rm1[-1]
head(segment_tok_rm1, 10)
```

```{r}
#create a term-document matrix!
#install.packages("tm")
library(tm)

myCorpus <- Corpus(VectorSource(segment_tok_rm1))
myTdm <- TermDocumentMatrix(myCorpus, control=list(wordLengths=c(1,Inf)))
```

The term-document matrix is composed of 16,669 terms and 8534 documents. It is very sparse, with 100% of the entries being zero. 

```{r}
idx <- which(dimnames(myTdm)$Terms == "香港")
inspect(myTdm[idx,])
```

We then have a look at the documents containing with “香港” and the results show that 3 documents contain this term. 

```{r}
# remove sparse terms
#myTdm2 <- removeSparseTerms(myTdm, sparse=0.95)
#m2 <- as.matrix(myTdm2)
m1 <- as.matrix(myTdm)
# cluster terms

distMatrix <- dist(scale(m1))
fit <- hclust(distMatrix, method="ward.D")
plot(fit)
```