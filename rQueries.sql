-- CREATE TABLE restaurants (
--     id SERIAL PRIMARY KEY,
--     name varchar(50),
--     address varchar(50),
--     category varchar(25)
-- );

-- CREATE TABLE reviewers (
--     id SERIAL PRIMARY KEY,
--     name varchar(50),
--     email varchar(50),
--     karma integer CHECK (karma < 7)
-- );

-- CREATE TABLE reviews (
--     id SERIAL PRIMARY KEY,
--     reviewer_id integer REFERENCES reviewers (id),
--     stars integer CHECK (stars <= 6),
--     title varchar(50),
--     review_text varchar(500),
--     restaurant_id integer REFERENCES restaurants (id)
-- );

-- INSERT INTO restaurants VALUES
-- (DEFAULT, 'Pickins', '334 blue street', 'bbq'),
-- (DEFAULT, 'BeefBros', '889 blue street', 'bbq'),
-- (DEFAULT, 'Japineros', '45 Royal Ave', 'japanese'),
-- (DEFAULT, 'Chilis', '3459 Royal Ave', 'american'),
-- (DEFAULT, 'Katz', '5555 Montrose', 'deli'),
-- (DEFAULT, 'Jims', '509 Street st', 'deli');

-- INSERT INTO reviewers VALUES
-- (DEFAULT, 'King Crimson', 'KCCola@gmail.com', 6),
-- (DEFAULT, 'Davy Clue', 'DavyClue@gmail.com', 2),
-- (DEFAULT, 'Jim Bob Bilbo', 'JimBobBilbo@gmail.com', 1);

-- INSERT INTO reviews VALUES
-- (DEFAULT, 3, 1, 'this is terrible', 'lorem ipsum', 1),
-- (DEFAULT, 4, 2, 'Good Food', 'lorem ipsum', 2),
-- (DEFAULT, 3, 3, 'nice Prices', 'lorem ipsum', 3),
-- (DEFAULT, 5, 4, 'I like water', 'lorem ipsum', 4),
-- (DEFAULT, 3, 5, 'Me first', 'lorem ipsum', 5),
-- (DEFAULT, 6, 4, 'bad bad not good', 'lorem ipsum', 6),
-- (DEFAULT, 7, 3, 'I like it', 'lorem ipsum', 6),
-- (DEFAULT, 7, 2, 'Why not', 'lorem ipsum', 3);


    -- List all the reviews for a given restaurant given a specific 
    -- restaurant ID.

-- SELECT 
--     title
-- FROM
--     reviews
-- WHERE
--     restaurant_id = 6;

    -- List all the reviews for a given restaurant, given a specific 
    -- restaurant name.

-- SELECT 
--     title, review_text
-- FROM 
--     reviews
-- JOIN 
--     restaurants 
-- ON
--     restaurants.id = reviews.restaurant_id
-- WHERE
--     restaurants.name = 'Japineros';


    -- List all the reviews for a given reviewer, given a specific author 
    -- name.

-- SELECT 
--     title, review_text, reviewers.name
-- FROM
--     reviews
-- JOIN
--     reviewers 
-- ON 
--     reviews.reviewer_id = reviewers.id
-- WHERE
--     reviewers.name = 'Bill McFuggins';


    -- List all the reviews along with the restaurant they were written 
    -- for. In the query result, select the restaurant name and the 
    -- review text.

-- SELECT 
--     restaurants.name, title, review_text
-- FROM
--     reviews
-- JOIN 
--     restaurants 
-- ON 
--     restaurants.id = reviews.restaurant_id;


    -- Get the average stars by restaurant. The result should have the 
    -- restaurant name and its average star rating.

-- SELECT 
--     restaurants.name, avg(reviews.stars)
-- FROM 
--     restaurants
-- JOIN 
--     reviews 
-- ON 
--     restaurants.id = reviews.restaurant_id
-- GROUP BY 
--     restaurants.name;


    -- Get the number of reviews written for each restaurant. The result 
    -- should have the restaurant name and its review count.

-- SELECT 
--     restaurants.name, COUNT(reviews.stars)
-- FROM 
--     restaurants
-- JOIN 
--     reviews 
-- ON 
--     restaurants.id = reviews.restaurant_id
-- GROUP BY 
--     restaurants.name;


    -- List all the reviews along with the restaurant, and the reviewer's 
    -- name. The result should have the restaurant name, the review text, and
    -- the reviewer name. Hint: you will need to do a three-way join - i.e. 
    -- joining all three tables together.

-- SELECT 
--     restaurants.name, reviewers.name, reviews.title, reviews.review_text
-- FROM 
--     restaurants
-- JOIN
--     reviews
-- ON 
--     reviews.restaurant_id = restaurants.id 
-- JOIN
--     reviewers 
-- ON 
--     reviewers.id = reviews.reviewer_id
-- ORDER BY
--     restaurants.name;

    -- Get the average stars given by each reviewer. (reviewer name, 
    -- average star rating)

-- SELECT 
--     name, avg(stars)
-- FROM 
--     reviewers 
-- JOIN 
--     reviews
-- ON 
--     reviews.reviewer_id = reviewers.id
-- GROUP BY 
--     reviewers.name;


    -- Get the lowest star rating given by each reviewer. 
    -- (reviewer name, lowest star rating)

-- SELECT 
--     name, MIN(stars) 
-- FROM 
--     reviewers 
-- JOIN 
--     reviews 
-- ON 
--     reviewers.id = reviews.reviewer_id
-- GROUP BY 
--     reviewers.name;


    -- Get the number of restaurants in each category. (category name, 
    -- restaurant count)

-- SELECT 
--     category, COUNT(category)
-- FROM 
--     restaurants
-- GROUP BY
--     category;


    -- Get number of 5 star reviews given by restaurant. 
    -- (restaurant name, 5-star count)

-- SELECT 
--     name, count(stars)
-- FROM 
--     restaurants
-- JOIN 
--     reviews 
-- ON 
--     reviews.restaurant_id = restaurants.id 
-- WHERE
--     stars = 5
-- GROUP BY 
--     name;

    -- Get the average star rating for a food category. (category name, 
    -- average star rating)

-- SELECT 
--     category, avg(stars)
-- FROM 
--     restaurants 
-- JOIN 
--     reviews ON reviews.restaurant_id = restaurants.id
-- GROUP BY
--     category;


