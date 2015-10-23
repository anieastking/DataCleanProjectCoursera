# DataCleanProjectCoursera
Project work carried out for Coursera

To run this:::

1.First download the dataset(No need to overload R with the task of downloading the around 60 MB zip-folder)

2.Set the working directory correctly.

3.Load the training and test datasets

4.Merge Datasets

5.Keep only those features which have mean or std in them(REGEX knowledge is reqd for grep commands...)

5.Column_bind all the columns from the three different tables into a single table

6.Apply aggregate function(basically a "group by" expression according to per activity  per subject)

7.Write resultant table to .txt file and then "git" it.

Resultant .txt file is final_clean_dataset.txt

###Important

Since I have written run_analysis as a function...you need to run      run_analysis("")     in your console again(no use of directory here.Included it for portability).

Note that REGEX expressions can be learned from here:
http://www.rexegg.com/regex-quickstart.html
