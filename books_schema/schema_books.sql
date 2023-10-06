SELECT * FROM books;
SELECT * FROM users;
SELECT * FROM favorites;

#Query: Create 5 different users: Jane Amsden, Emily Dixon, Theodore Dostoevsky, William Shapiro, William Shapiro
INSERT INTO users (first_name, last_name) VALUES ('jane', 'Amsden');
INSERT INTO users (first_name, last_name) VALUES ('Emily', 'Dixion'),('Emily', 'Dixion'),('Theodore', 'Dostoevsky'),('William', 'Shapiro'),('William', 'Shapiro');
#Query: Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby
INSERT INTO books (title, num_of_pages) VALUES ('C sharp', 300), ('Java', 500), ('python', 200), ('PHP', 1000);
INSERT INTO books (title, num_of_pages) VALUES ('Ruby', 100);

#Query: Change the name of the C Sharp book to C#
UPDATE books 
SET title = "C#" 
WHERE id = 1;

#Query: Change the first name of the 4th user to Bill
UPDATE users 
SET first_name = "Bill" 
WHERE id = 4;


#Query: Have the first user favorite the first 2 books
INSERT INTO favorites (user_id,book_id) VALUES (1,1);
#Query: Have the second user favorite the first 3 books
#Query: Have the fourth user favorite all the books


INSERT INTO favorites (user_id,book_id) VALUES (1,2),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4),(4,5);

SELECT first_name, last_name from users
JOIN favorites on users.id = favorites.user_id
WHERE favorites.book_id = 3;

#QUERY: remove the first user of the book 3's favorites.
DELETE FROM favorites WHERE  user_id = 2 AND book_id = 3;
#Query: Have the 5th user favorite the 2nd book
INSERT into favorites (user_id, book_id)
VALUES (5,2);

#Find all the books that the 3rd user favorited
SELECT * FROM books
JOIN favorites ON books.id = favorites.book_id
WHERE favorites.user_id = 3;



#Query: Find all the users that favorited to the 5th book
SELECT * FROM  users
JOIN favorites ON favorites.user_id = users.id
WHERE favorites.book_id = 5;


#Submit your .txt file that contains all the queries you ran in the workbench