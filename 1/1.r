data1 <- read.table("/cloud/project/data1.csv", quote="\"", comment.char="")

data1$dist <- abs(data1$V1 - data1$V2)

sorted_V1 <- sort(data1$V1)

sorted_V2 <- sort(data1$V2)

distSort <- abs(sorted_V1 - sorted_V2)

pairs_and_distances <- data.frame(Pair = 1:length(distSort), V1 = sorted_V1, V2 = sorted_V2, Distance = distSort)

total_distance <- sum(distSort)

