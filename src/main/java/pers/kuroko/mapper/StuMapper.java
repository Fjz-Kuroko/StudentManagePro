package pers.kuroko.mapper;

import pers.kuroko.entity.Student;

import java.util.List;

public interface StuMapper {

    Student queryStudentById(int id);

    List<Student> queryAllStudent();

    int addStudent(Student student);

    int deleteStudentById(int id);

    int updateStudent(Student student);

}
