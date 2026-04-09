df <- read.csv("C:\\Users\\towhi\\Downloads\\archive (3)\\FC26_20250921.csv")

df <- df[, c("short_name", "player_positions", "overall", "potential",
             "value_eur", "wage_eur", "age", "height_cm", "weight_kg",
             "preferred_foot", "pace", "shooting", "passing",
             "dribbling", "defending", "physic")]
view(df)


cat("Number of rows:", nrow(df), "\n")
cat("Number of columns:", ncol(df))

str(df)


df$age[100]
df$age[100] <- NA
df$age[100]

df$height_cm[300]
df$height_cm[300] <- NA
df$height_cm[300]

df$weight_kg[400]
df$weight_kg[400] <- NA
df$weight_kg[400]

df$overall[500]
df$overall[500] <- NA
df$overall[500]

df$potential[800]
df$potential[800] <- NA
df$potential[800]




df$age[350]
df$age[350] <- 999
df$age[350]

df$value_eur[8000]
df$value_eur[8000] <- -99999
df$value_eur[8000]

df$physic[1100]
df$physic[1100] <- -10
df$physic[1100]

df$preferred_foot[200]
df$preferred_foot[200] <- "Hand"
df$preferred_foot[200]

df$preferred_foot[3000]
df$preferred_foot[3000] <- "none"
df$preferred_foot[3000]

df$height_cm[450]
df$height_cm[450] <- 999
df$height_cm[450]

df$shooting[5500]
df$shooting[5500] <- -50
df$shooting[5500]

df$weight_kg[12000]
df$weight_kg[12000] <- -30
df$weight_kg[12000]

df$passing[7777]
df$passing[7777] <- 999
df$passing[7777]

df$age[16000]
df$age[16000] <- -12
df$age[16000]





df$wage_eur[900]
df$wage_eur[900] <- 9999999
df$wage_eur[900]

df$value_eur[4500]
df$value_eur[4500] <- 750000000
df$value_eur[4500]

df$wage_eur[11000]
df$wage_eur[11000] <- 7500000
df$wage_eur[11000]

df$weight_kg[6600]
df$weight_kg[6600] <- 350
df$weight_kg[6600]

df$potential[2200]
df$potential[2200] <- 250
df$potential[2200]

df$height_cm[14500]
df$height_cm[14500] <- 15
df$height_cm[14500]

df$value_eur[17000]
df$value_eur[17000] <- 650000000
df$value_eur[17000]






cat("Rows before duplicates:", nrow(df), "\n")
df <- rbind(df, df[10, ])
df <- rbind(df, df[25, ])
df <- rbind(df, df[50, ])
df <- rbind(df, df[130, ])
cat("Rows after duplicates:", nrow(df), "\n")


colSums(is.na(df))


par(mar = c(8, 4, 2, 1))
barplot(num_of_missing_value_per_column,
        main = "Missing Values per Column (All)",
        col = "blue",
        las = 2,
        cex.names = 0.6,
        ylim = c(0, 2500))



intentional_na <- c(age = 1, height_cm = 1, weight_kg = 1, overall = 1, potential = 1)
barplot(intentional_na,
        main = "Intentionally Introduced Missing Values",
        col = "red",
        las = 2,
        cex.names = 0.8,
        ylim = c(0, 5))



df$age[is.na(df$age)] <- mean(df$age, na.rm = TRUE)
df$height_cm[is.na(df$height_cm)] <- mean(df$height_cm, na.rm = TRUE)
df$weight_kg[is.na(df$weight_kg)] <- mean(df$weight_kg, na.rm = TRUE)
df$overall[is.na(df$overall)] <- mean(df$overall, na.rm = TRUE)
df$potential[is.na(df$potential)] <- mean(df$potential, na.rm = TRUE)


df$pace[is.na(df$pace)] <- median(df$pace, na.rm = TRUE)
df$shooting[is.na(df$shooting)] <- median(df$shooting, na.rm = TRUE)
df$passing[is.na(df$passing)] <- median(df$passing, na.rm = TRUE)
df$dribbling[is.na(df$dribbling)] <- median(df$dribbling, na.rm = TRUE)
df$defending[is.na(df$defending)] <- median(df$defending, na.rm = TRUE)
df$physic[is.na(df$physic)] <- median(df$physic, na.rm = TRUE)

colSums(is.na(df))


num_of_missing_after <- sapply(df, function(x) sum(is.na(x)))
par(mar = c(8, 4, 2, 1))
barplot(num_of_missing_after,
        main = "Missing Values per Column ",
        col = "blue",
        las = 2,
        cex.names = 0.6,
        ylim = c(0, 5))


df$age[100]
df$height_cm[300]
df$weight_kg[400]
df$overall[500]
df$potential[800]


df$age[350]
df$age[350] <- median(df$age, na.rm = TRUE)
df$age[350]

df$age[16000]
df$age[16000] <- mean(df$age, na.rm = TRUE)
df$age[16000]

df$value_eur[8000]
df$value_eur[8000] <- mean(df$value_eur, na.rm = TRUE)
df$value_eur[8000]

df$physic[1100]
df$physic[1100] <- median(df$physic, na.rm = TRUE)
df$physic[1100]

df$preferred_foot[200]
df$preferred_foot[200] <- "Right"
df$preferred_foot[200]

df$preferred_foot[3000]
df$preferred_foot[3000] <- "Left"
df$preferred_foot[3000]


df$height_cm[450]
df$height_cm[450] <- mean(df$height_cm, na.rm = TRUE)
df$height_cm[450]

df$shooting[5500]
df$shooting[5500] <- median(df$shooting, na.rm = TRUE)
df$shooting[5500]


df$weight_kg[12000]
df$weight_kg[12000] <- mean(df$weight_kg, na.rm = TRUE)
df$weight_kg[12000]


df$passing[7777]
df$passing[7777] <- median(df$passing, na.rm = TRUE)
df$passing[7777]


par(mfrow = c(1, 2))

df$value_eur[4500] <- 750000000
df$value_eur[17000] <- 650000000
boxplot(df$value_eur, main = "Before Outlier Handling", col = "red",
        ylim = c(0, 800000000))

df$value_eur[4500] <- median(df$value_eur, na.rm = TRUE)
df$value_eur[17000] <- median(df$value_eur, na.rm = TRUE)
boxplot(df$value_eur, main = "After Outlier Handling", col = "green",
        ylim = c(0, 800000000))

par(mfrow = c(1, 1))


dev.off()
par(mfrow = c(1, 2))

df$weight_kg[6600] <- 350
boxplot(df$weight_kg, main = "Before Outlier Handling", col = "red")

df$weight_kg[6600] <- median(df$weight_kg, na.rm = TRUE)
boxplot(df$weight_kg, main = "After Outlier Handling", col = "green")

par(mfrow = c(1, 1))



dev.off()
par(mfrow = c(1, 2))

df$potential[2200] <- 250
boxplot(df$potential, main = "Before Outlier Handling", col = "red")

df$potential[2200] <- median(df$potential, na.rm = TRUE)
boxplot(df$potential, main = "After Outlier Handling", col = "green")

par(mfrow = c(1, 1))



dev.off()
par(mfrow = c(1, 2))

df$height_cm[14500] <- 15
boxplot(df$height_cm, main = "Before Outlier Handling", col = "red")

df$height_cm[14500] <- median(df$height_cm, na.rm = TRUE)
boxplot(df$height_cm, main = "After Outlier Handling", col = "green")

par(mfrow = c(1, 1))



cat("Rows before removing duplicates:", nrow(df), "\n")
sum(duplicated(df))

df <- df[!duplicated(df), ]
cat("Rows after removing duplicates:", nrow(df), "\n")
sum(duplicated(df))


normalize_dataset <- df
normalize <- function(x) {return((x - min(x)) / (max(x) - min(x)))}
normalize_dataset$age <- normalize(df$age)
normalize_dataset$overall <- normalize(df$overall)
head(normalize_dataset[, c("short_name", "age", "overall")])


summary(df)


summary(df$age)
summary(df$overall)

table(df$preferred_foot)

cat("Mean Overall:", mean(df$overall), "\n")
cat("Median Overall:", median(df$overall), "\n")
cat("SD Overall:", sd(df$overall), "\n")
cat("Min Overall:", min(df$overall), "\n")
cat("Max Overall:", max(df$overall), "\n")


ggplot(df, aes(overall)) +
  geom_histogram(bins = 30, fill = "lightblue") +
  ggtitle("Distribution of Overall Rating")


ggplot(df, aes(y = overall)) +
  geom_boxplot(fill = "lightgreen") +
  ggtitle("Boxplot of Overall Rating")

ggplot(df, aes(overall)) +
  geom_density(fill = "lightpink") +
  ggtitle("Density Plot of Overall Rating")


ggplot(df, aes(preferred_foot)) +
  geom_bar(fill = "orange") +
  ggtitle("Frequency of Preferred Foot")

tapply(df$overall, df$preferred_foot, mean)
tapply(df$overall, df$preferred_foot, sd)


tapply(df$wage_eur, df$rating_class, mean)
tapply(df$wage_eur, df$rating_class, sd)
tapply(df$age, df$rating_class, mean)





data_filtered <- df %>% filter(age > 30)
cat("Players above age 30:", nrow(data_filtered), "\n")
head(data_filtered)


df$rating_class <- cut(df$overall,
                       breaks = c(0, 64, 74, 84, 100),
                       labels = c("Below Average", "Average", "Good", "Elite"))
idata <- df


class_dist <- table(idata$rating_class)
class_dist
barplot(table(idata$rating_class), main = "Original Class Distribution", col = "red")


class_counts <- table(idata$rating_class)
max_count <- max(class_counts)
set.seed(100)
os_list <- lapply(names(class_counts), function(cl) {
  df <- filter(idata, rating_class == cl)
  if(nrow(df) < max_count) {
    df <- df %>% sample_n(max_count, replace = TRUE)
  }
  df
})

os_balanced_data <- bind_rows(os_list)
table(os_balanced_data$rating_class)
barplot(table(os_balanced_data$rating_class),
        main = "Oversampled Category Distribution")


n <- nrow(df)
random_index <- sample(1:n, size = 0.8*n)
train_data <- df[random_index, ]
test_data <- df[-random_index, ]
cat("Training set rows:", nrow(train_data), "\n")
cat("Testing set rows:", nrow(test_data), "\n")




