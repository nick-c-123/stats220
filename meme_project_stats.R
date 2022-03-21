library(magick)

small_brain <- image_read("https://pbs.twimg.com/media/EfM6NGgXgAICDW1.jpg") %>%
  image_scale(500)

big_brain <- image_read("https://mat3e.github.io/brains/img/3.jpg") %>%
  image_scale(500)


#square one
python_text <- image_blank(width = 500,
                           height = 500,
                           color = "#000000") %>%
  image_annotate(text = "Using Python code",
                 color = "#FFFFFF",
                 size = 50,
                 font = "Impact",
                 gravity = "center")

#square three
r_text <- image_blank(width = 500,
                      height = 500,
                      color = "#000000")%>%
  image_annotate(text = "Using R code",
                 color = "#FFFFFF",
                 size = 50,
                 font = "Impact",
                 gravity = "center")


#Assigning The Image To Cat
first_row <- c(small_brain, python_text) %>%
  image_append()

second_row <- c(big_brain, r_text) %>%
  image_append()


c(first_row, second_row) %>%
  image_append(stack = TRUE)


