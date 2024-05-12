CREATE SEQUENCE quiz_id_seq START 1;
CREATE SEQUENCE quizquestion_id_seq START 1;
CREATE SEQUENCE quizanswer_id_seq START 1;


CREATE TABLE Quiz (
    id BIGINT PRIMARY KEY DEFAULT nextval('quiz_id_seq') NOT NULL,
    title TEXT NOT NULL,
    timeInSeconds INTEGER NOT NULL,
    holidayId BIGINT REFERENCES Holiday(id) NOT NULL
);

CREATE TABLE QuizQuestion (
    id BIGINT PRIMARY KEY DEFAULT nextval('quizquestion_id_seq') NOT NULL,
    quizId BIGINT REFERENCES Quiz(id) NOT NULL,
    question TEXT NOT NULL,
    explanation TEXT NOT NULL
);

CREATE TABLE QuizAnswer (
    id BIGINT PRIMARY KEY DEFAULT nextval('quizanswer_id_seq') NOT NULL,
    questionId BIGINT REFERENCES QuizQuestion(id) NOT NULL,
    answer TEXT NOT NULL,
    isCorrect BOOLEAN NOT NULL
);