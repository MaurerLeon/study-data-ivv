# Installiere und lade die notwendigen Pakete (falls nicht installiert)
if (!require(irr)) install.packages("irr", dependencies = TRUE)
if (!require(readxl)) install.packages("readxl", dependencies = TRUE)

library(irr)
library(readxl)

# Daten einlesen (XLSX-Datei mit Spalten "Categories_1" und "Categories_2")
# Passe den Dateipfad entsprechend an
df <- read_excel("study_data.xlsx")

# Cohen's Kappa berechnen
kappa_result <- kappa2(df[, c("Category_1", "Category_2")])

# Ergebnis ausgeben
print(kappa_result)
