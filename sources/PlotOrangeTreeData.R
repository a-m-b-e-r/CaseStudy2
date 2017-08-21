# print scatter plot of trunk circumference vs age 
ggplot(Orange, aes(x=Orange$circumference, y=Orange$age, shape=Orange$Tree, color=Orange$Tree)) + 
  geom_point(size=2) + xlab("Circumference") + ylab("Age") + 
  ggtitle("Trunk Circumference VS. Age") + scale_shape_discrete("Tree") + scale_colour_discrete("Tree")

# print boxplot of trunk circumference vs age 
ggplot(Orange, aes(x=Orange$Tree, y=Orange$circumference, fill=Orange$Tree)) + 
  geom_boxplot() + xlab("Tree") + ylab("Circumference") + 
  ggtitle("Trunk Circumference VS. Tree Size") + guides(fill=guide_legend("Tree"))
