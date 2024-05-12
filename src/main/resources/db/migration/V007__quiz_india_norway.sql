INSERT INTO Quiz (title, time_in_seconds, holiday_id) VALUES
('Quiz', 180, (select id from holiday where title = 'India' limit 1));

INSERT INTO QuizQuestion (quiz_id, question, explanation) VALUES
(1, 'Which is the national tree of India?', 'The Banyan tree is the national tree of India. It is also called the Indian banyan or banyan fig.\n'),
(1, 'Hinduism is followed by 84% of India’s population. Which Hindu God is the creator of the universe?', 'Brahma is the creator of the universe, Vishnu is its preserver and Shiva its destroyer'),
(1, 'In India, how do people traditionally eat their food?', 'Usually, Indians avoid using cutlery when eating their food, even though spoons are used in restaurants for eating dishes such as dhal. Eat using only the fingertips of your right hand as eating with the left is considered rude.'),
(1, 'Which major festival in India signifies the victory of light over darkness?', 'The Hindu festival, Diwali, is known as the festival of light and the word ‘Diwali’ means “the row of lighted lamps”. During Diwali, houses are lit with traditional diyas - earthen lamps – to attract Lakshmi, the goddess of wealth and prosperity.'),
(1, 'When is India''s Independence Day?', 'Independence Day is observed in India annually on August 15. It celebrates the creation of a free and independent India in 1947.'),
(1, 'What Indian city is the capital of two states?', 'The city of Chandigarh is the joint capital of Punjab and Haryana. (It is also the capital of the Chandigarh union territory, within which it is situated.)'),
(1, 'Which Indian composer won the Academy Award for Best Music (original song)?', 'A.R. Rahman won the Academy Award for best song for “Jai Ho” for the film Slumdog Millionaire (2008), directed by Danny Boyle.'),
(1, 'Who wrote the Ramayana?', 'Valmiki was a Hindu sage who wrote Ramayana. Ramayana is one of the two epic poems, composed in Sanskrit. It narrates the life of Rama.');

INSERT INTO QuizAnswer (question_id, answer, is_correct) VALUES
(1, 'Banyan', true),
(1, 'Peepal', false),
(1, 'Mango', false),
(1, 'Neem', false),
(2, 'Brahma', true),
(2, 'Vishnu', false),
(2, 'Shiva', false),
(3, 'Right Hand', true),
(3, 'Left Hand', false),
(3, 'Knife & Fork', false),
(4, 'Diwali', true),
(4, 'Ramadan', false),
(4, 'Holi', false),
(4, 'Maha Shivaratri', false),
(5, '15. August', true),
(5, '26. October', false),
(5, '1. May', false),
(5, '4. July', false),
(6, 'Chandigarh', true),
(6, 'Kolkata', false),
(6, 'Chennai', false),
(6, 'Mumbai', false),
(7, 'Shankar Mahadevan', false),
(7, 'Amit Trivedi', false),
(7, 'Kalyanji Anandji', false),
(7, 'A.R. Rahman', true),
(8, 'Valmiki', true),
(8, 'Ved Vyas', false),
(8, 'Tulsidasa', false),
(8, 'Kalidasa', false);

WITH quiz AS (
  INSERT INTO Quiz (title, time_in_seconds, holiday_id)
  VALUES ('Norway Quiz', 180, (select id from Holiday where title = 'Norway' limit 1))
  RETURNING id
), question1 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the capital of Norway?', 'Oslo is the capital of Norway.' FROM quiz
  RETURNING id
), question2 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the currency of Norway?', 'The Norwegian krone is the currency of Norway.' FROM quiz
  RETURNING id
), question3 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the national animal of Norway?', 'The national animal of Norway is the Elk (also known as the Moose in North America).' FROM quiz
  RETURNING id
), question4 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the highest mountain in Norway?', 'Galdhøpiggen is the highest mountain in Norway, Scandinavia and Northern Europe.' FROM quiz
  RETURNING id
), question5 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the population of Norway (approx as of 2021)?', 'The population of Norway is approximately 5.4 million as of 2021.' FROM quiz
  RETURNING id
), question6 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the official language of Norway?', 'The official language of Norway is Norwegian.' FROM quiz
  RETURNING id
), question7 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the national dish of Norway?', 'Fårikål (mutton stew with cabbage) is the national dish of Norway.' FROM quiz
  RETURNING id
), question8 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'Who is the current monarch of Norway?', 'King Harald V is the current monarch of Norway.' FROM quiz
  RETURNING id
)
INSERT INTO QuizAnswer (question_id, answer, is_correct)
SELECT id, 'Oslo', true FROM question1
UNION ALL
SELECT id, 'Bergen', false FROM question1
UNION ALL
SELECT id, 'Trondheim', false FROM question1
UNION ALL
SELECT id, 'Stavanger', false FROM question1
UNION ALL
SELECT id, 'Euro', false FROM question2
UNION ALL
SELECT id, 'Norwegian krone', true FROM question2
UNION ALL
SELECT id, 'Swedish krona', false FROM question2
UNION ALL
SELECT id, 'Danish krone', false FROM question2
UNION ALL
SELECT id, 'Elk', true FROM question3
UNION ALL
SELECT id, 'Bear', false FROM question3
UNION ALL
SELECT id, 'Wolf', false FROM question3
UNION ALL
SELECT id, 'Lynx', false FROM question3
UNION ALL
SELECT id, 'Galdhøpiggen', true FROM question4
UNION ALL
SELECT id, 'Kebnekaise', false FROM question4
UNION ALL
SELECT id, 'Halti', false FROM question4
UNION ALL
SELECT id, 'Snøhetta', false FROM question4
UNION ALL
SELECT id, '5.4 million', true FROM question5
UNION ALL
SELECT id, '7.2 million', false FROM question5
UNION ALL
SELECT id, '9.1 million', false FROM question5
UNION ALL
SELECT id, '3.8 million', false FROM question5
UNION ALL
SELECT id, 'Norwegian', true FROM question6
UNION ALL
SELECT id, 'Swedish', false FROM question6
UNION ALL
SELECT id, 'Danish', false FROM question6
UNION ALL
SELECT id, 'Finnish', false FROM question6
UNION ALL
SELECT id, 'Fårikål', true FROM question7
UNION ALL
SELECT id, 'Kjøttkaker', false FROM question7
UNION ALL
SELECT id, 'Rakfisk', false FROM question7
UNION ALL
SELECT id, 'Lutefisk', false FROM question7
UNION ALL
SELECT id, 'King Harald V', true FROM question8
UNION ALL
SELECT id, 'King Carl XVI Gustaf', false FROM question8
UNION ALL
SELECT id, 'Queen Margrethe II', false FROM question8
UNION ALL
SELECT id, 'Queen Elizabeth II', false FROM question8;