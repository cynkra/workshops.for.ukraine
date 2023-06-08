iris_plot <- function(data) {
  # Exploratory Data Analysis with ggplot2
  ggplot(data=iris, aes(x=Species, y=Sepal.Length, fill=Species)) + geom_boxplot() +
    labs(title="Sepal Length across Species", x="Species", y="Sepal Length (cm)") +
    #theme_minimal()
}

iris_plot(iris)
