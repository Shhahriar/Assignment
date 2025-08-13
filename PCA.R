install.packages("corrr")
library("corrr")
install.packages("ggcorrplot")
library("ggcorrplot")
install.packages("FactoMineR")
library("FactoMineR")
install.packages("factoextra")
library("factoextra")
library(ggplot2)

data <- data.frame(
  Height = c(170, 165, 180, 175, 160, 172, 168, 177, 162, 158),
  Weight = c(65, 59, 75, 68, 55, 70, 62, 74, 58, 54),
  Age = c(30, 25, 35, 28, 22, 32, 27, 33, 24, 21),
  Gender = c(1, 0, 1, 1, 0, 1, 0, 1, 0, 0) #Male=1_Female=0
)
print(data)

numerical_data <- data[,1:3]
data_normalized <- scale(numerical_data)
data.pca <- princomp(data_normalized)
summary(data.pca)

data.pca$loadings[, 1:2]
fviz_eig(data.pca, addlabels = TRUE)
fviz_pca_var(data.pca, col.var = "black")
fviz_cos2(data.pca, choice = "var", axes = 1:2)
fviz_pca_var(data.pca, col.var = "cos2", gradient.cols = c("black", "orange", "green"), repel = TRUE)

