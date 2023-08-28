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
 
 <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain-wordmark.svg" width="70" height="70" />
 <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width= "70" height="70" />
 <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" width="70" height="70" ><title>Tableau</title><path d="M11.654.174V2.377H9.682v.58h1.972V5.16h.696V2.957h1.97v-.58h-1.97V.174h-.348zm6.03 2.262l-.002 1.623v1.623h-2.957v.927h2.957v3.188H18.725l.011-1.582.02-1.576 1.465-.02 1.46-.01v-.927H18.728V2.436h-.522zm-12.407.06V5.686H2.291v.925H5.277V9.801h.985V6.61h3.013v-.925H6.262V2.496H5.77zm6.086 5.27v3.593H8.06v1.188h3.304v3.596h1.28v-3.596H15.953v-1.188H12.643V7.766h-.637zm9.721 1.55v2.221h-2.012v.811h2.012v2.261h.887v-2.261H24v-.811h-2.029V9.317h-.422zm-19.111.131V11.621H0v.621H1.973v2.194H2.64v-2.194h2v-.62H2.609V9.446h-.318zm15.709 4.516v3.254h-3.016v.927h3.016v3.217h1.072v-3.216H21.74v-.928H18.754v-3.254h-.533zm-12.463.008v3.246H2.262v.928h2.957v3.189H6.32v-3.189h2.955v-.928H6.32V13.97h-.55zm6.316 4.578l.002 1.103v1.1H9.566v.812h1.971v2.262h.928l.012-1.119.017-1.143H14.463v-.812h-2V18.549h-.465z" /></svg>
 

## Findings
In the past 4 years, I've read 104 books and 34,080 pages with an average rating of 4.35. The average size of books read is 513 pages, classifying as medium-paced.
My top genres include fantasy and romance and the moods of the books I've read are typically adventurous, dark and emotional. My average reading rate is 100 days which has no correlation with rating of the book.

Due to incomplete entries, certain results may be misleading. For example, the average reading rate was based on a small pool of data due to NULL values under the 'Date Read' column. Additionally, the lack of complete data leads to the inability to perform useful analyses such as a timeline of my reading history.

With a more complete and precise dataset, better inferences can be made with more certainty and clarity.




          


