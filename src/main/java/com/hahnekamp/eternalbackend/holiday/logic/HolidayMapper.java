package com.hahnekamp.eternalbackend.holiday.logic;

import com.hahnekamp.eternalbackend.holiday.entity.HolidayEntity;
import org.mapstruct.AfterMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface HolidayMapper {
    HolidayMapper INSTANCE = Mappers.getMapper(HolidayMapper.class);

    @Mapping(target = "hasQuiz", expression = "java(!holidayEntity.getQuizzes().isEmpty())")
    Holiday mapFromEntity(HolidayEntity holidayEntity);
}