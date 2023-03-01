package com.example.casetest.service;

import com.example.casetest.model.dao.StaffDao;
import com.example.casetest.model.dto.StaffDto;

import java.sql.SQLException;
import java.util.List;

public class StaffService {
    private StaffDao staffDao = null;
    public StaffService() {
        staffDao = new StaffDao();
    }

    public List<StaffDto> findAll(){
        return staffDao.selectAllStaff();
    }

    public StaffDto find(int id){
        return staffDao.selectStaff(id);
    }

    public void add(StaffDto staffDto){
        StaffDto newStaffDto = new StaffDto(staffDto.getName(),
                staffDto.getBirthday(), staffDto.getSex(), staffDto.getPhoneNumber(),
                staffDto.getEmail(), staffDto.getAddress());
        staffDao.insertStaff(newStaffDto);
    }
    public void edit(StaffDto staffDto) {
        StaffDto newStaffDto = new StaffDto(staffDto.getName(),
                staffDto.getBirthday(), staffDto.getSex(), staffDto.getPhoneNumber(),
                staffDto.getEmail(), staffDto.getAddress());
        staffDao.updateStaff(newStaffDto);
    }

    public void remove(int id) throws SQLException {
        staffDao.deleteStaff(id);
    }
}
