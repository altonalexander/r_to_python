# DM_03_03.R

# LOAD DATA ################################################

# Read CSV
setwd(dir = "~/Documents/r_to_python/")
states <- read.csv("SampleFiles/ClusterData.csv", header = T)
colnames(states)

# Save numerical data only
st <- states[, 3:27]
row.names(st) <- states[, 2]
colnames(st)

# Sports search data only
sports <- st[, 8:11]
head(sports)

# CLUSTERING ###############################################

# Create distance matrix
d <- dist(st)

# Hierarchical clustering
c <- hclust(d)
c # Info on clustering

# Plot dendrogram of clusters
plot(c, main = "Cluster with All Searches and Personality")

# Or nest commands in one line (for sports data)
plot(hclust(dist(sports)), main = "Sports Searches")

# CLEAN UP #################################################

# Clear workspace
rm(list = ls()) 

# Clear plots
dev.off()

# Clear console
cat("\014")  # ctrl+L
