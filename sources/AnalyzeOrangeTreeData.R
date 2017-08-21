
# print dataset orange info
str(Orange)

# calculate means for different tree sizes
circ_mean_tree_1 <- mean(Orange$circumference[1:7])
circ_mean_tree_2 <- mean(Orange$circumference[8:14])
circ_mean_tree_3 <- mean(Orange$circumference[15:21])
circ_mean_tree_4 <- mean(Orange$circumference[22:28])
circ_mean_tree_5 <- mean(Orange$circumference[29:35])

# calculate medians for different tree sizes
circ_median_tree_1 <- median(Orange$circumference[1:7])
circ_median_tree_2 <- median(Orange$circumference[8:14])
circ_median_tree_3 <- median(Orange$circumference[15:21])
circ_median_tree_4 <- median(Orange$circumference[22:28])
circ_median_tree_5 <- median(Orange$circumference[29:35])