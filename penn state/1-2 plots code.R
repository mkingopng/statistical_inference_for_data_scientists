library(dplyr)
 
gss = read.csv(file.choose(), header=T) # "GSS.csv"
str(gss) # structure
 
# omitting outlying responses
gss = gss[gss$partyid!="No answer",]
gss = gss[(gss$happy!="Don't know") & (gss$happy!="No answer"),]
 
# combine categories of partyid
 gss$partyid = recode(gss$partyid,
  "Ind,near dem" = "Independent",
  "Ind,near rep" = "Independent",
  "Not str democrat" = "Democrat",
  "Strong democrat" = "Democrat",
  "Not str republican" = "Republican",
  "Strong republican" = "Republican")
 
# bar charts
party.tab = table(gss$partyid)
party.tab
prop.table(party.tab)
barplot(party.tab, main="Party ID")
 
two.tab = table(gss$sex, gss$partyid)
two.tab
prop.table(two.tab, margin=1) # row proportions
barplot(two.tab, legend=T, main="Party ID vs Sex")
barplot(two.tab, legend=T, main="Party ID vs Sex", beside=T)
barplot(table(gss$partyid, gss$sex), legend=T, main="Party ID vs Sex")
 
# ordered
gss$happy = factor(gss$happy,
  levels = c("Not too happy", "Pretty happy", "Very happy"))
happy.tab = table(gss$happy)
happy.tab
prop.table(happy.tab)
barplot(happy.tab, main="General happines")
 
# mosaic plots
mosaicplot(happy.tab, main="General happiness")
 
dimnames(two.tab)
dimnames(two.tab)[[2]] = c("Dem","Ind","Other","Rep")
mosaicplot(two.tab, main="Party ID vs Sex", color=T)