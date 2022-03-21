library(magick)
counts <- 4 : 1 %>% as.character()

triangle <- image_read("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Penrose-dreieck.svg/1200px-Penrose-dreieck.svg.png")%>%
  image_scale(500)

first_frame <- triangle %>%
  image_annotate(text = counts[1], size = 100, gravity = "center")%>%
  image_scale(200) %>%
  image_extent("500x500")

first_frame <- triangle %>%
  image_annotate(text = counts[1], size = 100, gravity = "center")%>%
  image_scale(200) %>%
  image_extent("500x500")

second_frame <- triangle %>%
  image_annotate(text = counts[2], size = 100, gravity = "center")%>%
  image_scale(300) %>%
  image_extent("500x500")

third_frame <- triangle %>%
  image_annotate(text = counts[3], size = 100, gravity = "center")%>%
  image_scale(400) %>%
  image_extent("500x500")

fourth_frame <- triangle %>%
  image_annotate(text = counts[4], size = 100, gravity = "center")%>%
  image_scale(500) 

frames <- c(first_frame, second_frame, third_frame, fourth_frame)

image_animate(frames, fps = 10)