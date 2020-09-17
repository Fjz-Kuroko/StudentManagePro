package pers.kuroko.service;

import pers.kuroko.entity.Student;
import pers.kuroko.mapper.StuMapper;

public class TestServiceImpl implements TestService {

    StuMapper stuMapper;

    public void setStuMapper(StuMapper stuMapper) {
        this.stuMapper = stuMapper;
    }

    @Override
    public Student queryStudentById(int id) {
        return stuMapper.queryStudentById(id);
    }

}
