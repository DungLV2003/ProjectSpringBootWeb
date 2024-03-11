package com.javaweb.controller.admin;



import com.javaweb.enums.BuildingType;
import com.javaweb.enums.DistrictCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
//Bắt buộc method là GET
public class BuildingController {
    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch",buildingSearchRequest);
        //xuống db- lấy data oke rồi
        List<BuildingSearchResponse> responseList = new ArrayList<>();

        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setId(3L);
        item1.setName("ACM Building");
        item1.setAddress("130 Hoàng Cầu, Phạm Ngũ Lão, Quận 1");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("Anh Long");
        item1.setRentArea("100,200,300");
        item1.setManagerPhone("09000102032");
        responseList.add(item1);

        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setId(2L);
        item2.setName("Tower ACS");
        item2.setAddress("130 Sài Thị,Lê Nhân Tông, Quận 10");
        item2.setNumberOfBasement(1L);
        item2.setManagerName("Anh Siu");
        item2.setRentArea("200,400");
        item2.setManagerPhone("09000102021");
        responseList.add(item2);

        mav.addObject("buildingList",responseList);
        mav.addObject("listStaff", userService.getStaffs());
        mav.addObject("districts", DistrictCode.type());
        mav.addObject("typeCodes", BuildingType.type());
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("districts", DistrictCode.type());
        mav.addObject("typeCodes", BuildingType.type());
       // mav.addObject("building", buildingDTO);
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        //xuong db tim building theo Id
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setId(Id);
        buildingDTO.setName("Dung Building");
        mav.addObject("buildingEdit",buildingDTO);

        mav.addObject("districts", DistrictCode.type());
        mav.addObject("typeCodes", BuildingType.type());
        return mav;
    }

}
