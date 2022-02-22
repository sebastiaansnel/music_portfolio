---
title: "computational musicology"
output: 
  flexdashboard::flex_dashboard:
  theme: yeti
  orientation: rows
  vertical_layout: fill
runtime: shiny
---

```{r setup, include=FALSE}
library(flexdashboard)
library(tidyverse)
library(spotifyr)
library(dplyr)
library(ggplot2)
```

```{r load_data, include = FALSE}
berlintechno <- get_playlist_audio_features("","7Bz9NmEmPxSnDihwP5m8TW")
```



# first plot 

ggplot(berlintechno, aes(x = tempo, y = danceability, size = loudness, color = mode)) +
  geom_point()

# second plot

ggplot(berlintechno, aes(x = key, y = acousticness, color = mode)) +
  geom_point()

#third plot

ggplot(berlintechno, aes(x = valence, y = tempo, color = mode)) +
  geom_point()








