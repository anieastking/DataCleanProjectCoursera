# Code Book
  Aniruddha Bhattacharya
This code book describes columns in `final_clean_dataset.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the measurements were taken

###Introduction
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent
analysis. A full description of the data used in this project can be found at [The UCI Machine Learning Repository]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data for this project can be found here.]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Measurements
The retained measurements are the ones which calculate the mean or standard deviation..they are done using the 'grep' command,
which requires REGEX expression knowledge
More knowledge about that found here:  http://www.rexegg.com/regex-quickstart.html
## Activity Labels

* `WALKING` ( `1`):indicates  subject was walking during the test
* `WALKING_UPSTAIRS` ( `2`): indicates subject was walking up a staircase 
* `WALKING_DOWNSTAIRS` (`3`): indicates subject was walking down a staircase 
* `SITTING` (`4`): indicates subject was sitting 
* `STANDING` ( `5`): indicates subject was standing
* `LAYING` (`6`): indicates subject was laying down 
##Final Labels
The final labels and data indicate the average of those measurements which indicate mean/standard deviation....Its the 'final_clean_dataset.txt' file committed here.The data may be used for further exploratory analysis.

