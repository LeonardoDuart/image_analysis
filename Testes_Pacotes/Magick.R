library(magick)
library(rsvg)

# Importando imagens da internet e mudando sua largura

tiger <- image_read_svg('http://jeroen.github.io/images/tiger.svg', width = 300)
print(tiger)

# Importando imagens do computador e mudando suas dimensoes

imagem <- image_read("C:/Users/nick_/Downloads/im_1.jpg")
imagem_redimensionada <- image_scale(imagem, "300x300")

# Converter o formato

tiger_convertido <- image_convert(tiger, "jpeg")
image_info(tiger_convertido) # informaçoes sobre a imagem

# Salvando a imagem na maquina com o formato desejado

image_write(tiger, path = "tiger.png", format = "png")

# Inclusão de frases nas imagens 

frink <- image_read("https://jeroen.github.io/images/frink.png")
frink
image_annotate(frink, "CONFIDENTIAL", size = 10, color = "white", boxcolor = "red",
               degrees = 10, location = "+23+100") 
frink
image_annotate(frink, "Aqui", size = 15, color = "black", degrees = 30, location = "+190+410")

# Exemplo GIF da rotação da terra

earth <- image_read("https://jeroen.github.io/images/earth.gif") %>%
  image_scale("250x") %>% # Escala da imagem importada [Número é proporcional ao tamanho]
  image_quantize() # Quantidade de cores presentes na imagem [Vazio =  NULL]

length(earth) # Quantidade de imagens para a criaçao do GIF
earth

# Criando um gráfico animado pelo magick

im_1 <- image_read("C:/Users/nick_/Downloads/im_1.jpg")
im_2 <- image_read("C:/Users/nick_/Downloads/im_2.jpg")
im_3 <- image_read("C:/Users/nick_/Downloads/im_3.jpg")
im_4 <- image_read("C:/Users/nick_/Downloads/im_4.jpg")
im_5 <- image_read("C:/Users/nick_/Downloads/im_5.jpg")
im_6 <- image_read("C:/Users/nick_/Downloads/im_6.jpg")
im_7 <- image_read("C:/Users/nick_/Downloads/im_7.jpg")
im_8 <- image_read("C:/Users/nick_/Downloads/im_8.jpg")
im_9 <- image_read("C:/Users/nick_/Downloads/im_9.jpg")

img <- c(im_1, im_2, im_3, im_4, im_5, im_6, im_7, im_8, im_9)

img <- image_scale(img, "300x300")

image_animate(img)

# Salvando o gif na maquina

install.packages("gifski")
library(gifski)

image_write_gif(img, path = "grafico.gif")
image_write_gif(img, path = "grafico_delay.gif", delay = 1/6) # Salvando com delay, caso esteja muito r�pido

