package com.hahnekamp.eternalbackend.holiday.repo;

import com.hahnekamp.eternalbackend.holiday.entity.QuizEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface QuizRepository extends JpaRepository<QuizEntity, Long> {
    Optional<QuizEntity> findByHolidayId(Long holidayId);
}
