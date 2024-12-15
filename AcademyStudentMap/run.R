# install.packages(c("cowplot", "googleway", "ggplot2", "ggrepel", 
#                    "ggspatial", "libwgeom", "sf", "rnaturalearth", "rnaturalearthdata", "rgeos", "magrittr", "dplyr"))

library("maps")
data(world.cities)
library("magrittr")
library("dplyr")
library("ggplot2")
theme_set(theme_bw())
library("sf")
library("ggrepel")

library("rnaturalearth")
library("rnaturalearthdata")

world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)

users <- read.csv("Users.csv")
countries <- users %>%
  group_by(country) %>%
  summarize(count=n())

world2 <- dplyr::left_join(world, countries, by = c("iso_a2_eh" = "country"))
# user2 <- dplyr::left_join(users, world2, by = c("country" = "iso_a2"))
world2$Learners <- cut(world2$count, 
                    breaks=c(-Inf, 10, 50, 100, Inf), 
                    labels=c("1 - 10", "11 - 50", "51 - 100", "> 100"))
# 
# cities <- left_join(user2, world.cities, by =c("city" = "name", "name" = "country.etc"))
# cities <- distinct(cities, city, .keep_all= TRUE)
# cities <- filter(cities, city != "Bogota")
# cities <- filter(cities, city != "Rosario")
# cities <- filter(cities, city != "Adelaide")
# cities <- filter(cities, city != "Sydney")
# cities <- filter(cities, city != "Melbourne")
# cities <- filter(cities, city != "Riyadh")
# cities <- filter(cities, city != "Bangkok")

# Plot #2: Europe
# Plot #1: World
# world_cropped <- st_crop(world2, xmin = -170, xmax = 180,
#                           ymin = -60, ymax = 90)

# bb = st_bbox(c(xmin=-10, xmax=180, ymin = -60, ymax = 90))
# world_cropped <- st_crop(world2, bb)


ggplot(data = world2) +
  geom_sf(color = "white", aes(fill = Learners)) +
  # scale_fill_viridis_d(option = "plasma", na.value="grey90") +
  # geom_text_repel(data = cities, aes(x = long, y = lat, label = city), 
  #                 fontface = "bold", nudge_x = c(1, -1.5, 2, 2, -1), nudge_y = c(0.25, 
  #                                                                                -0.25, 0.5, 0.5, -0.5)) +
  labs(x = NULL, y = NULL) +
  # coord_sf(datum = NA) +
  coord_sf(xlim = c(-180, 180), ylim = c(-55, 90), datum = NA) +
  scale_fill_manual(values=c(rgb(55/255, 46/255, 119/255),
                             rgb(146/255, 46/255, 117/255),
                             rgb(220/255, 52/255, 86/255),
                             rgb(239/255, 165/255, 40/255),
                             rgb(69/255, 176/255, 201/255)),
                    na.value="grey90") +
  theme(panel.grid.major = element_line(colour = "transparent"),
        panel.background = element_rect(fill = "white"),
        panel.border = element_blank(),
        legend.key.size = unit(1.2, "cm"),
        legend.title=element_text(size=24), 
        legend.text=element_text(size=20),
        axis.text.x=element_blank())

ggsave(filename = "World.png", plot = last_plot(),
       scale = 1.2, #was 2
       width = 15.4,
       height = 7.7,
       dpi = 300)

# maybe still useful: trans = "sqrt", scale_fill_viridis_c

europe_cropped <- st_crop(world2, xmin = -20, xmax = 45,
                          ymin = 30, ymax = 73)

# Plot #2: Europe
ggplot(data = europe_cropped) + 
  geom_sf(color = "white", aes(fill = Learners)) +
  coord_sf(datum = NA) +
  # geom_text_repel(data = cities, aes(x = long, y = lat, label = city),
  #                 fontface = "bold") +
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
        panel.border = element_blank(),
        legend.key.size = unit(1.2, "cm"),
        legend.title=element_text(size=24), 
        legend.text=element_text(size=20),
        axis.text.x=element_blank())

ggsave(filename = "Europe.png", plot = last_plot(),
       scale = 2,
       dpi = 300)

apac_cropped <- st_crop(world2, xmin = -20, xmax = 45,
                          ymin = 30, ymax = 73)

# Plot #2: Europe
ggplot(data = apac_cropped) + 
  geom_sf(color = "white", aes(fill = Learners)) +
  coord_sf(datum = NA) +
  # geom_text_repel(data = cities, aes(x = long, y = lat, label = city),
  #                 fontface = "bold") +
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

ggsave(filename = "APAC.png", plot = last_plot(),
       scale = 2.25,
       dpi = 600)
# plotly::plotly(p)
##############

apac <- list("China", "Hong Kong", "Japan", "Korea", "Taiwan", "Bangladesh", "India", "Nepal", "Cambodia", "Australia", "Indonesia", "Philippines", "Singapore", "Thailand")