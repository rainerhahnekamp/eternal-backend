WITH quiz AS (
  INSERT INTO Quiz (title, time_in_seconds, holiday_id)
  VALUES ('Vienna Quiz', 180, (select id from holiday where title like '%Vienna%' limit 1))
  RETURNING id
), question1 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the population of Vienna (approx as of 2021)?', 'The population of Vienna is approximately 1.9 million as of 2021.' FROM quiz
  RETURNING id
), question2 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the official language of Vienna?', 'The official language of Vienna is German.' FROM quiz
  RETURNING id
), question3 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the famous landmark of Vienna?', 'The famous landmark of Vienna is St. Stephen''s Cathedral.' FROM quiz
  RETURNING id
), question4 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the famous dish of Vienna?', 'Wiener Schnitzel is the famous dish of Vienna.' FROM quiz
  RETURNING id
), question5 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'Who is the current mayor of Vienna?', 'Michael Ludwig is the current mayor of Vienna.' FROM quiz
  RETURNING id
), question6 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous opera house in Vienna?', 'The famous opera house in Vienna is called the Vienna State Opera.' FROM quiz
  RETURNING id
), question7 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the river that flows through Vienna?', 'The Danube River flows through Vienna.' FROM quiz
  RETURNING id
), question8 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous palace in Vienna?', 'The famous palace in Vienna is called Schönbrunn Palace.' FROM quiz
  RETURNING id
), question9 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous wheel in Vienna?', 'The famous wheel in Vienna is called the Wiener Riesenrad.' FROM quiz
  RETURNING id
), question10 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous coffee in Vienna?', 'The famous coffee in Vienna is called Wiener Melange.' FROM quiz
  RETURNING id
), question11 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous cake in Vienna?', 'The famous cake in Vienna is called Sachertorte.' FROM quiz
  RETURNING id
), question12 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous market in Vienna?', 'The famous market in Vienna is called Naschmarkt.' FROM quiz
  RETURNING id
), question13 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous museum in Vienna?', 'The famous museum in Vienna is called the Kunsthistorisches Museum.' FROM quiz
  RETURNING id
), question14 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous church in Vienna?', 'The famous church in Vienna is called St. Stephen''s Cathedral.' FROM quiz
  RETURNING id
), question15 AS (
  INSERT INTO QuizQuestion (quiz_id, question, explanation)
  SELECT id, 'What is the name of the famous park in Vienna?', 'The famous park in Vienna is called the Prater.' FROM quiz
  RETURNING id
)
INSERT INTO QuizAnswer (question_id, answer, is_correct)
SELECT id, '1.9 million', true FROM question1
UNION ALL
SELECT id, '2.5 million', false FROM question1
UNION ALL
SELECT id, '1.5 million', false FROM question1
UNION ALL
SELECT id, '2 million', false FROM question1
UNION ALL
SELECT id, 'German', true FROM question2
UNION ALL
SELECT id, 'French', false FROM question2
UNION ALL
SELECT id, 'English', false FROM question2
UNION ALL
SELECT id, 'Italian', false FROM question2
UNION ALL
SELECT id, 'St. Stephen''s Cathedral', true FROM question3
UNION ALL
SELECT id, 'Belvedere Palace', false FROM question3
UNION ALL
SELECT id, 'Hofburg Palace', false FROM question3
UNION ALL
SELECT id, 'Schönbrunn Palace', false FROM question3
UNION ALL
SELECT id, 'Wiener Schnitzel', true FROM question4
UNION ALL
SELECT id, 'Sacher Torte', false FROM question4
UNION ALL
SELECT id, 'Apfelstrudel', false FROM question4
UNION ALL
SELECT id, 'Tafelspitz', false FROM question4
UNION ALL
SELECT id, 'Michael Ludwig', true FROM question5
UNION ALL
SELECT id, 'Heinz Fischer', false FROM question5
UNION ALL
SELECT id, 'Thomas Klestil', false FROM question5
UNION ALL
SELECT id, 'Alexander Van der Bellen', false FROM question5
UNION ALL
SELECT id, 'Vienna State Opera', true FROM question6
UNION ALL
SELECT id, 'Sydney Opera House', false FROM question6
UNION ALL
SELECT id, 'La Scala', false FROM question6
UNION ALL
SELECT id, 'The Metropolitan Opera', false FROM question6
UNION ALL
SELECT id, 'Danube', true FROM question7
UNION ALL
SELECT id, 'Rhine', false FROM question7
UNION ALL
SELECT id, 'Elbe', false FROM question7
UNION ALL
SELECT id, 'Oder', false FROM question7
UNION ALL
SELECT id, 'Schönbrunn Palace', true FROM question8
UNION ALL
SELECT id, 'Hofburg Palace', false FROM question8
UNION ALL
SELECT id, 'Belvedere Palace', false FROM question8
UNION ALL
SELECT id, 'Imperial Palace', false FROM question8
UNION ALL
SELECT id, 'Wiener Riesenrad', true FROM question9
UNION ALL
SELECT id, 'London Eye', false FROM question9
UNION ALL
SELECT id, 'Ferris Wheel in Prater', false FROM question9
UNION ALL
SELECT id, 'Big Wheel', false FROM question9
UNION ALL
SELECT id, 'Wiener Melange', true FROM question10
UNION ALL
SELECT id, 'Espresso', false FROM question10
UNION ALL
SELECT id, 'Cappuccino', false FROM question10
UNION ALL
SELECT id, 'Latte', false FROM question10
UNION ALL
SELECT id, 'Sachertorte', true FROM question11
UNION ALL
SELECT id, 'Black Forest Cake', false FROM question11
UNION ALL
SELECT id, 'Apple Strudel', false FROM question11
UNION ALL
SELECT id, 'Cheesecake', false FROM question11
UNION ALL
SELECT id, 'Naschmarkt', true FROM question12
UNION ALL
SELECT id, 'Viktualienmarkt', false FROM question12
UNION ALL
SELECT id, 'Borough Market', false FROM question12
UNION ALL
SELECT id, 'La Boqueria', false FROM question12
UNION ALL
SELECT id, 'Kunsthistorisches Museum', true FROM question13
UNION ALL
SELECT id, 'Louvre Museum', false FROM question13
UNION ALL
SELECT id, 'British Museum', false FROM question13
UNION ALL
SELECT id, 'The Metropolitan Museum of Art', false FROM question13
UNION ALL
SELECT id, 'St. Stephen''s Cathedral', true FROM question14
UNION ALL
SELECT id, 'Notre-Dame Cathedral', false FROM question14
UNION ALL
SELECT id, 'Westminster Abbey', false FROM question14
UNION ALL
SELECT id, 'Cologne Cathedral', false FROM question14
UNION ALL
SELECT id, 'Prater', true FROM question15
UNION ALL
SELECT id, 'Central Park', false FROM question15
UNION ALL
SELECT id, 'Hyde Park', false FROM question15
UNION ALL
SELECT id, 'Retiro Park', false FROM question15;