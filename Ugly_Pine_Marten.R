library(ggplot2)

# Base coordinates for marten shapes
body <- data.frame(
  x = c(4,6,6,4),
  y = c(4,4,6,6)
)

head <- data.frame(
  x = c(4.2,5.8,5.8,4.2),
  y = c(6,6,7,7)
)

ear_left <- data.frame(x=c(4.3,4.5,4.4), y=c(7,7,7.2))
ear_right <- data.frame(x=c(5.5,5.7,5.6), y=c(7,7,7.2))

tail <- data.frame(x=c(6,8), y=c(5,6))

eye_left <- data.frame(x=4.5, y=6.5)
eye_right <- data.frame(x=5.5, y=6.5)

# Plot
ggplot() +
  # Body
  geom_polygon(data=body, aes(x,y), fill="saddlebrown", color="black") +
  # Head
  geom_polygon(data=head, aes(x,y), fill="saddlebrown", color="black") +
  # Ears
  geom_polygon(data=ear_left, aes(x,y), fill="saddlebrown", color="black") +
  geom_polygon(data=ear_right, aes(x,y), fill="saddlebrown", color="black") +
  # Tail
  geom_segment(data=tail, aes(x=x[1], y=y[1], xend=x[2], yend=y[2]),
               color="saddlebrown", size=6, lineend="round") +
  # Eyes
  geom_point(data=eye_left, aes(x=x, y=y), color="white", size=3) +
  geom_point(data=eye_right, aes(x=x, y=y), color="white", size=3) +
  geom_point(data=eye_left, aes(x=x, y=y), color="black", size=1.5) +
  geom_point(data=eye_right, aes(x=x, y=y), color="black", size=1.5) +
  # Paws
  geom_point(aes(x=c(4.2,4.8,5.2,5.8), y=c(4,4,4,4)), color="saddlebrown", size=4) +
  # Fun text
  annotate("text", x=5, y=3.5, label="Prrr! 🐾", size=8, color="darkgreen", fontface="bold") +
  # Graph adjustments
  xlim(0,10) + ylim(0,10) +
  labs(title="Cute Pine Marten Graph 🌲") +
  theme_minimal(base_size=16) +
  theme(axis.title=element_blank(), axis.text=element_blank(), axis.ticks=element_blank(),
        plot.title=element_text(face="bold", hjust=0.5))

