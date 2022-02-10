--Query all of the entries in the Genre table
--Select * FROM Genre;
--Select * FROM Album;

--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
--Select * FROM Artist Order By ArtistName;

--Write a SELECT query that lists all the songs in the Song table and include the Artist name
--Select * From Artist a Left Join Song s on s.ArtistId = a.id;


--Write a SELECT query that lists all the Artists that have a Pop Album - 7
--Select * FROM Album ab Left Join Artist a on GenreId = ab.GenreId where GenreId = 7
--Select * from Artist a
--left Join Album ab on a.id = ab.ArtistId
--left Join Genre g on Ab.GenreId = g.Id
--Where g.[Label] = 'Pop';

--SELECT ArtistName
--FROM Artist
--WHERE Id IN
--    (SELECT a.ArtistId
--     FROM Album a
--     LEFT JOIN Genre s on a.GenreId = s.id
--     WHERE s.Label = 'Pop');



--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album - 4, 2
--Select * FROM Album ab Left Join Artist a on GenreId = ab.GenreId Where Id = 4
--Select * from Artist a
--Join Album ab on a.id = ab.ArtistId
--Join Genre g on Ab.GenreId = g.Id
--Where g.[Label] = 'Jazz' OR g.[Label] = 'Rock'

--Select a.Id, ab.ArtistId, a.ArtistName, ab.Title, ab.[Label], g.[Label] from Artist a
--Join Album ab on a.id = ab.ArtistId
--Join Genre g on Ab.GenreId = g.Id
--Where g.[Label] = 'Jazz' OR g.[Label] = 'Rock'


--Write a SELECT statement that lists the Albums with no songs
--Select * FROM Album ab Left Join Song s on AlbumId = null; 

--SELECT * from Album a
--Left Join song s on a.Id = s.AlbumId
--where s.Id is null

--song or song on album Id === null


--Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Taylor Swift', 2004);
--Select * FROM Artist -- 28

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Folklore', '07/24/2020', 3809, 'Republic', 28, 7);
--Select a.Title FROM Album a where a.Title = 'Folklorce'

--Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The 1', 210, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Cardigan', 239, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Last Great American Dynasty', 231, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Exile', 285, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('My Tears Ricochet', 255, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Mirrorball', 209, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Seven', 208, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('August', 261, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('This is Me Trying', 195, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Illicit Affairs', 190, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Invisible String', 252, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Mad Woman', 237, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Epiphany', 289, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Betty', 294, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Peace', 236, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Hoax', 220, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Lakes', 211, '07/24/2020', 7, 28, 23);

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. 
--Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--Select ab.Title as 'Album', s.Title as 'Song Title', a.ArtistName as 'Artist Name'
--From Album ab LEFT JOIN Song s on s.AlbumId = ab.Id
--LEFT JOIN Artist a ON s.ArtistId = a.Id
--Where ab.Title = 'Folklore';

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence
--Select ab.Title as 'Album',  Count(*) as 'Number of Songs'
--From Album ab Left Join Song s ON s.AlbumId = ab.Id Group By ab.Title

--select a.Title as 'Album Name',  count(a.title) as 'number of songs'
--from song s
--right join album a on s.albumid = a.id
--group by a.title;


--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--Select a.ArtistName as 'Artist', Count (*) as 'Number of Songs'
--From Artist a Left Join Song s on s.ArtistId = a.Id Group By a.ArtistName

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--Select g.[Label] as 'Genre', Count(*) as 'Number of Songs'
--From Genre g Left Join Song s on s.GenreId = g.Id Group by g.[Label]

--Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
--Select ab.[Label] as 'Record Label'
--From Album ab left join Artist a on  
--HAVING
--Select * From Album; 

--Select ar.ArtistName, COUNT(ab.[Label]) as 'Number of Record Labels'  
--From Album ab
--LEFT JOIN Artist ar On ab.ArtistId = ar.Id
--Group by ar.ArtistName
--Having COUNT (DISTINCT ab.[Label]) >1;

--SELECT a.ArtistName
--FROM Artist a LEFT JOIN Album b ON a.Id = b.ArtistId
--GROUP BY a.ArtistName
--HAVING COUNT(b.Label) > 1;

--SELECT a.ArtistName
--FROM Artist a
--LEFT JOIN Album al ON al.ArtistId = a.Id
--GROUP BY a.ArtistName
--HAVING COUNT(DISTINCT al.[Label]) > 1;



--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--Select ab.Title as 'Album Title', ab.AlbumLength as 'Album Length' 
--FROM Album ab
--WHERE AlbumLength = 
--	(SELECT MAX(AlbumLength) FROM Album);

--Select Top 1 ab.Title as 'Album Title', ab.AlbumLength as 'Album Length' 
--FROM Album ab
--Order By [Album Length] DESC

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT Title, SongLength
--FROM Song
--WHERE SongLength = (SELECT MAX(SongLength) FROM Song);

--SELECT a.Title as AlbumTitle, s.Title, s.SongLength
--FROM Song s LEFT JOIN Album a ON a.Id = s.AlbumId
--WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM Song s);


--Modify the previous query to also display the title of the album.