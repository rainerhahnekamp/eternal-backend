package com.hahnekamp.eternalbackend.holiday.web;

import com.hahnekamp.eternalbackend.holiday.entity.HolidayEntity;
import com.hahnekamp.eternalbackend.holiday.entity.QuizAnswerEntity;
import com.hahnekamp.eternalbackend.holiday.logic.Holiday;
import com.hahnekamp.eternalbackend.holiday.logic.HolidayMapper;
import com.hahnekamp.eternalbackend.holiday.repo.HolidayRepository;
import com.hahnekamp.eternalbackend.holiday.repo.QuizRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController()
@RequestMapping("holiday")
public class HolidayController {
    private final HolidayRepository repository;
    private final HolidayMapper mapper;
    private final QuizRepository quizRepository;

    public HolidayController(HolidayRepository repository, HolidayMapper mapper, QuizRepository quizRepository) {
        this.repository = repository;
        this.mapper = mapper;
        this.quizRepository = quizRepository;
    }

    @GetMapping("")
    public List<Holiday> findAll() {
        return this.repository.findAll().stream().map(this.mapper::mapFromEntity).toList();
    }

    @GetMapping("quiz/{holidayId}")
    public Quiz findQuizById(@PathVariable  Long holidayId) {
        return this.quizRepository.findBy.stream().map(this.mapper::mapFromEntity).toList();
    }
}