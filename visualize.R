# visualize.R
set.seed(123)

# Créer des données aléatoires
x <- rnorm(100)
y <- rnorm(100)
category <- sample(c("A", "B", "C"), 100, replace = TRUE)

# Convertir les catégories en couleurs
colors <- ifelse(category == "A", "red", ifelse(category == "B", "blue", "green"))

# Tracer le graphique
plot(x, y, col=colors, pch=19, main="Scatter plot coloré par catégorie",
     xlab="Axe X", ylab="Axe Y")

# Ajouter une légende
legend("topright", legend=c("A", "B", "C"), col=c("red", "blue", "green"), pch=19)
