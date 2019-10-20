install.packages("BiocManager") 
BiocManager::install("EBImage")
library(EBImage)

# TENTATIVA FRUSTRADA DE UMA MARCA D'AGUA

ima_1 <- readImage("C:/Users/nick_/Downloads/download.png") # Importando imagens
ima_2 <- readImage("C:/Users/nick_/Downloads/logo.png")

l <- ima_1 + ima_2

print(ima_1)
print(ima_2)

ima_2 <- ima_2[,,1:3]
ima_2 <- rotate(ima_2, 40)
ima_2 <- resize(ima_2, w=1920, h=1080)
ima_2 <- ima_2 + 1
display(ima_2[400:1920,270:1080,])
display(ima_2)

l <- ima_1 + ima_2/5
display(l)

hist(kk,3)
