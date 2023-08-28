update storygraph
set [Star Rating] = 4, [Read Status] = 'read'
where Title = 'A Darker Shade of Magic'

update storygraph
set [Star Rating] = 0
where [Star Rating] is null

update goodreads
set ISBN13 = [Book Id]
where ISBN13 is null

update storygraph
set [ISBN/UID] = 43954881
where Title = 'Rules of Redemption'

update storygraph
set [ISBN/UID] = 36590488
where Title = 'Bonus Keefe Story'


/*inner join storygraph s on g.[ISBN13] = s.[ISBN/UID]*/
select g.ISBN13, g.Title, s.Authors, s.[Format], g.[Number of Pages], s.[Read Status], g.[Date Read], g.[Date Added], g.[Year Published], s.[Star Rating], g.[Average Rating], s.Moods, s.Pace
into bookdata
from goodreads g, storygraph s
where g.[ISBN13] = s.[ISBN/UID]



select *
from bookdata

/*Questions*/


--How many books have I read from my library?
select [Read Status],
count([Read Status]) as read_count
from bookdata bk
group by bk.[Read Status]

--How many books are top-rated?
select bk.[Star Rating],
COUNT(*) as rating_count
from bookdata bk
where [Star Rating] = 5
group by bk.[Star Rating]

--My average star rating
select AVG(bk.[Star Rating])
from bookdata bk
where [Star Rating] > 0

--Which books are top-rated?
select Title
from bookdata
where [Star Rating] = 5

--Who are my top 5 authors? (Based on Star Rating)
select top(5)Authors, COUNT(Title) as totalbooks
from bookdata
where [Star Rating] = 5 and [Read Status] = 'read'
group by Authors
order by totalbooks desc 

--Who are my top 5 authors? (Based on count of books read)
select top(5)Authors, COUNT(Title) as totalbooks
from bookdata
where [Read Status] = 'read'
group by Authors
order by totalbooks desc 

--How many pages have I read in total?
select SUM([Number of Pages]) as [Total Pages Read]
from bookdata
where [Read Status] = 'read'

--What is the average size of a book that I would read?
select round(AVG([Number of Pages]),0) as [Average Size]
from bookdata
where [Read Status] = 'read'

--Which size of book do I read the most?
select Pace, COUNT(Pace) as booksize
from bookdata
where [Read Status] = 'read' and Pace is not Null
group by Pace

--For specifity, what is the average size of a fast, medium and slow read?
select Pace, round(AVG([Number of Pages]),0) as [Average Book Size]
from bookdata
where [Read Status] = 'read' and Pace is not null
group by Pace


--Reading Conversion Rate: Date Added to Date Read (on avg)
select Title, [Star Rating], DATEDIFF(day, [Date Added], [Date Read]) as [Reading Conversion]
from bookdata
where [Date Read] is not null and [Read Status] = 'read'
order by [Star Rating] desc
/*No correlation between high rating and time taken to finish book*/


-- What are my top moods?
with temp as (
    select Title, trim(value) as Mood
from bookdata
cross apply string_split(Moods, ',')
)
select Mood, count(Mood) as [Number of Books]
from temp
group by Mood
order by [Number of Books] desc


-- Difference between my rating and average rating:
select Title, [Star Rating], [Average Rating], [Star Rating]- [Average Rating] as [Rating Difference]
from bookdata
where [Read Status] = 'read'
order by [Rating Difference]

-- Age of books read:
select [Year Published], count([Year Published]) as [YearCount]
from bookdata
where [Read Status] = 'read'
group by [Year Published]
