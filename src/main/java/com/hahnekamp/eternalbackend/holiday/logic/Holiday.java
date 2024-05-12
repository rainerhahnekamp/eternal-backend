package com.hahnekamp.eternalbackend.holiday.logic;

public record Holiday(
    Long id,
    String title,
    String teaser,
    String description,
    String imageUrl,
    Long typeId,
    Integer durationInDays,
    Integer minCount,
    Integer maxCount,
    Boolean onSale,
    Boolean soldOut,
    Boolean hasQuiz
) {}