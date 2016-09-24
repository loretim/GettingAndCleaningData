library(plyr)
library(plyr)

# Step 1 - Merge the training and test sets to create one data set

#read data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# create "bind" data set (x, y, subject)
x_bind_data <- rbind(x_train, x_test)
y_bind_data <- rbind(y_train, y_test)
subject_bind_data <- rbind(subject_train, subject_test)

# Step 2 - Extract only the measurements on the mean and standard deviation for each measurement

features <- read.table("features.txt")

# get only columns with mean() or std() in their names
mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# select columns and correct names
x_bind_data <- x_bind_data[, mean_std_features]
names(x_bind_data) <- features[mean_std_features, 2]

# Step 3 - Use descriptive activity names to name the activities in the data set

act_labels <- read.table("activity_labels.txt")

# update values with correct activity names and correct name
y_bind_data[, 1] <- act_labels[y_bind_data[, 1], 2]
names(y_bind_data) <- "activity"

# Step 4 - Appropriately label the data set with descriptive variable names

names(subject_bind_data) <- "subject"

# bind x_bind_data, y_bind_data, subject_bind_data
total_data <- cbind(x_bind_data, y_bind_data, subject_bind_data)

# Step 5 - Create a second, independent tidy data set with the average of each variable for each activity and each subject

avg_data <- ddply(total_data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(avg_data, "Result.txt", row.name=FALSE)
