package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface BuildingRepository extends JpaRepository<BuildingEntity,Long> {
}
