
library(tidyverse)
library(palmerpenguins)
library(ggplot2)

# Load the penguins dataset
peng <- penguins

                                        
                                    
# Plot: Bill length vs Bill depth by species (but make it cool)
peng %>%
  drop_na(bill_length_mm, bill_depth_mm, species) %>%
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm, color = species, fill = species)) +
  geom_jitter(shape = 21, alpha = 0.85, width = 0.8, height = 0.8, stroke = 0.4) +
  stat_ellipse(type = "norm", linetype = "dotted", linewidth = 0.8, alpha = 0.7) +
  scale_color_manual(values = c("Adelie" = "#2b8cbe", "Chinstrap" = "#f03b20", "Gentoo" = "#2ca25f")) +
  scale_fill_manual(values = c("Adelie" = "#a6bddb", "Chinstrap" = "#fdae6b", "Gentoo" = "#a1d99b")) +
  labs(
    title = "Penguin Bill: Length vs Depth by Species",
    x = "Bill length (mm)",
    y = "Bill depth (mm)",
    color = "Species",
    fill = "Species"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.background = element_rect(fill = "#f7fbff", color = NA),
    panel.grid.minor = element_blank(),
    legend.position = "bottom",
    aspect.ratio = 1
  ) +
  coord_fixed()
                                        