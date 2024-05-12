package com.hahnekamp.eternalbackend.holiday.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity()
@Getter
@Setter
@Table(name = "Holiday")
public class HolidayEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "holiday_id_seq")
    @SequenceGenerator(name = "holiday_id_seq", sequenceName = "holiday_id_seq", allocationSize = 1)
    private Long id;

    private String title;
    private String teaser;
    private String description;
    private String imageUrl;
    private Integer typeId;
    private Integer durationInDays;
    private Integer minCount;
    private Integer maxCount;
    private Boolean onSale;
    private Boolean soldOut;

    @OneToMany(mappedBy = "holiday")
    private List<QuizEntity> quizzes;
}