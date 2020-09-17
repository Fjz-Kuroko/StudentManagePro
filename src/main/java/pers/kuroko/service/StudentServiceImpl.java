package pers.kuroko.service;

import pers.kuroko.entity.Student;
import pers.kuroko.mapper.StuMapper;

import java.util.List;

public class StudentServiceImpl implements StudentService {

    private StuMapper stuMapper;

    public void setStuMapper(StuMapper stuMapper) {
        this.stuMapper = stuMapper;
    }

    @Override
    public List<Student> queryAllStudent() {
        return stuMapper.queryAllStudent();
    }

    @Override
    public int addStudent(Student student) {
        return stuMapper.addStudent(student);
    }

    @Override
    public Student queryStudentById(int id) {
        return stuMapper.queryStudentById(id);
    }

    @Override
    public int deleteStudentById(int id) {
        return stuMapper.deleteStudentById(id);
    }

    @Override
    public int updateStudent(Student student) {
        return stuMapper.updateStudent(student);
    }

}
