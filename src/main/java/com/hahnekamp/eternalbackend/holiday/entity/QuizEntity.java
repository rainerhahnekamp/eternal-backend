package com.hahnekamp.eternalbackend.holiday.entity;

import com.hahnekamp.eternalbackend.holiday.logic.Holiday;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "Quiz")
@NoArgsConstructor
@AllArgsConstructor
public class QuizEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "quiz_id_seq")
    @SequenceGenerator(name = "quiz_id_seq", sequenceName = "quiz_id_seq", allocationSize = 1)
    private Long id;

    private String title;

    private Integer timeInSeconds;

    @ManyToOne
    private HolidayEntity holiday;

    @OneToMany(mappedBy = "quiz")
    private List<QuizQuestionEntity> questions;
}
