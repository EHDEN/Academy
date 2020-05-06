install.packages(c("cowplot", "googleway", "ggplot2", "ggrepel", 
                   "ggspatial", "libwgeom", "sf", "rnaturalearth", "rnaturalearthdata", "rgeos", "magrittr", "dplyr"))

library("maps")
data(world.cities)
library("magrittr")
library("dplyr")
library("ggplot2")
theme_set(theme_bw())
library("sf")

library("rnaturalearth")
library("rnaturalearthdata")

world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)

users <- read.csv("Users_SENSITIVE_keep_confidential.csv")
countries <- users %>%
  group_by(country) %>%
  summarize(count=n())

world2 <- dplyr::left_join(world, countries, by = c("iso_a2" = "country"))
user2 <- dplyr::left_join(users, world2, by = c("country" = "iso_a2"))
world2$Students <- cut(world2$count, 
                    breaks=c(-Inf, 1, 5, 10, 15, 20, Inf), 
                    labels=c("1", "2 - 5", "6 - 10", "11 - 15", "16 - 20", "> 20"))

cities <- left_join(user2, world.cities, by =c("city" = "name", "name" = "country.etc"))
cities <- distinct(cities, city, .keep_all= TRUE)
cities <- filter(cities, city != "Bogota")
cities <- filter(cities, city != "Rosario")
cities <- filter(cities, city != "Adelaide")
cities <- filter(cities, city != "Sydney")
cities <- filter(cities, city != "Melbourne")
cities <- filter(cities, city != "Riyadh")
cities <- filter(cities, city != "Bangkok")

# Plot #2: Europe
# Plot #1: World
ggplot(data = world2) +
  geom_sf(color = "white", aes(fill = Students)) +
  # scale_fill_viridis_d(option = "plasma", na.value="grey90") +
  # geom_text_repel(data = cities, aes(x = long, y = lat, label = city), 
  #                 fontface = "bold", nudge_x = c(1, -1.5, 2, 2, -1), nudge_y = c(0.25, 
  #                                                                                -0.25, 0.5, 0.5, -0.5)) +
  scale_fill_manual(values=c(rgb(55/255, 46/255, 119/255),
                             rgb(146/255, 46/255, 117/255),
                             rgb(220/255, 52/255, 86/255),
                             rgb(239/255, 165/255, 40/255),
                             rgb(69/255, 176/255, 201/255)),
                    na.value="grey90") +
  theme(panel.grid.major = element_line(colour = "transparent"),
        panel.background = element_rect(fill = "white"),
        legend.key.size = unit(1.2, "cm"),
        legend.title=element_text(size=24), 
        legend.text=element_text(size=20))
# maybe still useful: trans = "sqrt", scale_fill_viridis_c

europe_cropped <- st_crop(world2, xmin = -20, xmax = 45,
                          ymin = 30, ymax = 73)

# Plot #2: Europe
ggplot(data = europe_cropped) + 
  geom_sf(color = "white", aes(fill = Students)) +
  coord_sf(datum = NA) +
  geom_text_repel(data = cities, aes(x = long, y = lat, label = city),
                  fontface = "bold") +
  labs(x = NULL, y = NULL) +
  #scale_fill_viridis_d(option = "plasma", na.value="grey90") +
  scale_fill_manual(values=c(rgb(55/255, 46/255, 119/255),
                             rgb(146/255, 46/255, 117/255),
                             rgb(220/255, 52/255, 86/255),
                             rgb(239/255, 165/255, 40/255),
                             rgb(69/255, 176/255, 201/255)),
                    na.value="grey90") +
  theme(panel.grid.major = element_line(colour = "transparent"),
        panel.background = element_rect(fill = "white"),
        legend.key.size = unit(1.2, "cm"),
        legend.title=element_text(size=24), 
        legend.text=element_text(size=20),
        axis.text.x=element_blank())

##############
