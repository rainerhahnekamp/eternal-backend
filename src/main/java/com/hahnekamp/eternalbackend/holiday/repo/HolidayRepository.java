package com.hahnekamp.eternalbackend.holiday.repo;

import com.hahnekamp.eternalbackend.holiday.entity.HolidayEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HolidayRepository extends JpaRepository<HolidayEntity, Long>{
}
