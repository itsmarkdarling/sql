CREATE TABLE authors (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    year_born TEXT);
    
INSERT INTO authors (first_name, last_name, year_born) 
    VALUES ("Stephen", "King", 1947);
INSERT INTO authors (first_name, last_name, year_born) 
    VALUES ("Philip", "Pullman", 1946);
INSERT INTO authors (first_name, last_name, year_born) 
    VALUES ("Tom", "Robbins", 1932);
INSERT INTO authors (first_name, last_name, year_born) 
    VALUES ("J.K.", "Rowling", 1965);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Stephanie", "Meyer", 1973);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Agatha", "Christie", 1890);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Dr.", "Seuss", 1904);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Leo", "Tolstoy", 1828);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Dean", "Koontz", 1945);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("R.L.", "Stine", 1943);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Louis", "L'Amour", 1908);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("J.R.R.", "Tolkein", 1892);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Anne", "Rice", 1941);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Beatrix", "Potter", 1866);
INSERT INTO authors (first_name, last_name, year_born)        
    VALUES ("Astrid", "Lindgren", 1907);
    
CREATE TABLE books (id INTEGER,
    first_book TEXT,
    year_published TEXT);
    
INSERT INTO books VALUES(1, "Carrie", 1974);
INSERT INTO books VALUES(2, "The Haunted Storm", 1972);
INSERT INTO books VALUES(3, "Another Roadside Attraction", 1971);
INSERT INTO books VALUES(4, "Harry Potter and the Sorcerer's / Philosopher's Stone", 1997);
INSERT INTO books VALUES(5, "Twilight", 2005);
INSERT INTO books VALUES(6, "The Mysterious Affair at Styles", 1920);
INSERT INTO books VALUES(7, "Horton Hatches the Egg", 1940);
INSERT INTO books VALUES(8, "Childhood", 1852);
INSERT INTO books VALUES(9, "Star Quest", 1968);
INSERT INTO books VALUES(10, "Blind Date", 1986);
INSERT INTO books VALUES(11, "Hopalong Cassidy / The Riders of High Rock", 1951);
INSERT INTO books VALUES(12, "The Hobbit: or There and Back Again", 1937);
INSERT INTO books VALUES(13, "The Feast of All Saints", 1979);
INSERT INTO books VALUES(14, "The Tale of Peter Rabbit", 1901);
INSERT INTO books VALUES(15, "Pippi Longstocking", 1945);
    
SELECT authors.first_name, 
  authors.last_name, 
  authors.year_born, 
  books.first_book, 
  books.year_published, 
  books.year_published - authors.year_born AS age_when_first_book_published
FROM authors
JOIN books
ON authors.id = books.id;

SELECT ROUND(AVG(books.year_published - authors.year_born)) AS avg_age_when_published
FROM authors
JOIN books;
