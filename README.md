README

##How run_analysis.r works:
        
it loads the data into R (assuming its in the working directory)
it combines the test and train files using rbind
using a text filter, it extracts only the mean() and std() variables
creates titles for the activities
combines all the updated data into one variable
melts and casts the data so that the average of each activity for each subject is shown
puts the new data into a tidayData variable and exports it to the working directory
