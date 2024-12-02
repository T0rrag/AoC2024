data1 <- read.table("/cloud/project/data1.csv", quote="\"", comment.char="")

data1$dist <- abs(data1$V1 - data1$V2)

sorted_V1 <- sort(data1$V1)

sorted_V2 <- sort(data1$V2)

distSort <- abs(sorted_V1 - sorted_V2)

pairs_and_distances <- data.frame(Pair = 1:length(distSort), V1 = sorted_V1, V2 = sorted_V2, Distance = distSort)

total_distance <- sum(distSort)

left_list <- data1$V1

right_list <- data1$V2

right_counts <- table(right_list)

similarity_score <- 0



for (num in left_list) {
     if (num %in% names(right_counts)) {
         similarity_score <- similarity_score + as.numeric(num) * as.numeric(right_counts[as.character(num)])
     }
 }
 
similarity_score
