package com.hahnekamp.eternalbackend.holiday.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "QuizAnswer")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class QuizAnswerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "quizanswer_id_seq")
    @SequenceGenerator(name = "quizanswer_id_seq", sequenceName = "quizanswer_id_seq", allocationSize = 1)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "questionId")
    private QuizQuestionEntity question;

    private String answer;

    private Boolean isCorrect;

    @OneToMany(mappedBy = "answer")
    private List<QuizAnswerEntity> answers;

}