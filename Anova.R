
if (!require(irr)) install.packages("irr", dependencies = TRUE)
if (!require(readxl)) install.packages("readxl", dependencies = TRUE)

library(irr)
library(readxl)

# Daten einlesen (XLSX-Datei mit Spalten "Categories_1" und "Categories_2")
# Passe den Dateipfad entsprechend an
df <- read_excel("study_data.xlsx")

df$Group <- as.factor(df$Group)

# ANOVA durchführen
anova_result <- aov(Likert ~ Group, data = df)
summary(anova_result)

tukey_result <- TukeyHSD(anova_result)
print(tukey_result)
