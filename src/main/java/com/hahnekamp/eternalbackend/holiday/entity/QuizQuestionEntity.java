package com.hahnekamp.eternalbackend.holiday.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Table(name = "Question")
@Entity
@Getter
@Setter@NoArgsConstructor
@AllArgsConstructor
public class QuizQuestionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "quizquestion_id_seq")
    @SequenceGenerator(name = "quizquestion_id_seq", sequenceName = "quizquestion_id_seq", allocationSize = 1)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "quiz_id")
    private QuizEntity quiz;

    @OneToMany(mappedBy = "question")
    private List<QuizAnswerEntity> answers;

    private String question;

    private String explanation;
}