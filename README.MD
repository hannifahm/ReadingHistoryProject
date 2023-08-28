# Reading History Analysis

Data Analysis Project | **Feb-Mar 2023**

_To better understand my reading habits, I've gathered data from my frequently used apps- Goodreads and Storygraph- for an in-depth analysis._

## Background Information

The datasets from Goodreads and Storygraph underwent **data cleansing**. Incomplete entries were filled in where possible, inaccurate ISBN values were updated and NULL ratings were set as 0 for simplicity. Relevant information from both datasets were compiled together into a new table to simplify further queries and perform exploratory analysis in SQL.

After analysing the data, I used Python to expand the 'Moods' and 'Genre' columns to **prepare the data** for use in Tableau.

To see the finished visualisation on Tableau, click [HERE](https://public.tableau.com/app/profile/hannifa.ahmed/viz/MyReadingHistory/Dashboard1).

### Skills Used
* Data Cleaning: DML (update, insert)
* Data Analysis: DQL (aggregation functions, filtering, datetime functions, ctes, string aggregations)
* Data Visualisation: rounded diverging bar-chart, word clouds, tables

### Languages/Tools used
 
 <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain-wordmark.svg" width="70" height="70" /> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width= "70" height="70" /> <img src="https://img.icons8.com/?size=512&id=xkshT6OxzUja&format=png" width="70" height="70" />
 

## Findings
In the past 4 years, I've read 104 books and 34,080 pages with an average rating of 4.35. The average size of books read is 513 pages, classifying as medium-paced.
My top genres include fantasy and romance and the moods of the books I've read are typically adventurous, dark and emotional. My average reading rate is 100 days which has no correlation with rating of the book.

Due to incomplete entries, certain results may be misleading. For example, the average reading rate was based on a small pool of data due to NULL values under the 'Date Read' column. Additionally, the lack of complete data leads to the inability to perform useful analyses such as a timeline of my reading history.

With a more complete and precise dataset, better inferences can be made with more certainty and clarity.




          


