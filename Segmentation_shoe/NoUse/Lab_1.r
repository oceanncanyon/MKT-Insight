library(haven)
shoe_data <- read_sas("shoe_data.sas7bdat", NULL)
shoe_demo <- read_sas("shoe_demo.sas7bdat", NULL)
merged.shoe <- merge(shoe_data, shoe_demo, by="customer_id")
summary(merged.shoe)

final.shoe <- merged.shoe[,c("total_spend","spend_per_txn","spend_per_item","mens_dept_spend", "womens_dept_spend", "kids_dept_spend", "athletic_dept_spend", "accessories_spend", 
                                  "recency", "pct_response", "hhincome", "hhage")]
summary(final.shoe)

rng<-2:20 #K from 2 to 20
tries <-100 #Run the K Means algorithm 100 times
avg.totw.ss <-integer(length(rng)) #Set up an empty vector to hold all of points
for(v in rng){ # For each value of the range variable
  v.totw.ss <-integer(tries) #Set up an empty vector to hold the 100 tries
  for(i in 1:tries){
    k.temp <-kmeans(final.shoe,centers=v) #Run kmeans
    v.totw.ss[i] <-k.temp$tot.withinss#Store the total withinss
  }
  avg.totw.ss[v-1] <-mean(v.totw.ss) #Average the 100 total withinss
}
plot(rng,avg.totw.ss,type="b", main="Total Within SS by Various K",
     ylab="Average Total Within Sum of Squares",
     xlab="Value of K")

set.seed(76964057) 
k <-kmeans(final.shoe, centers=5) 
k$centers #cluster centers
table(k$cluster) #Give a count of data points in each cluster
