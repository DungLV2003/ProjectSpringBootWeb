package com.javaweb.api.admin;


import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;

    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO){
        //xuống DB để update hoặc thêm mới
        return buildingDTO;
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids){
        //xuong db de xoa building theo danh sach id gui ve
        System.out.println("ok");
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id){
        ResponseDTO result = buildingService.listStaffs(id);
        return result;
    }

    @PostMapping("/assignment")
    public void updateAssignmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO){
        System.out.println("I'm OK");
    }


}
