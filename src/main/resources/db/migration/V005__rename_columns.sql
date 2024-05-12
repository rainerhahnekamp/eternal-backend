ALTER TABLE Holiday RENAME COLUMN imageUrl TO image_url;
ALTER TABLE Holiday RENAME COLUMN typeId TO type_id;
ALTER TABLE Holiday RENAME COLUMN durationInDays TO duration_in_days;
ALTER TABLE Holiday RENAME COLUMN minCount TO min_count;
ALTER TABLE Holiday RENAME COLUMN maxCount TO max_count;
ALTER TABLE Holiday RENAME COLUMN onSale TO on_sale;
ALTER TABLE Holiday RENAME COLUMN soldOut TO sold_out;

ALTER TABLE Customer RENAME COLUMN firstName TO first_name;

ALTER TABLE Quiz RENAME COLUMN timeInSeconds TO time_in_seconds;
ALTER TABLE Quiz RENAME COLUMN holidayId TO holiday_id;

ALTER TABLE QuizQuestion RENAME COLUMN quizId TO quiz_id;

ALTER TABLE QuizAnswer RENAME COLUMN questionId TO question_id;
ALTER TABLE QuizAnswer RENAME COLUMN isCorrect TO is_correct;