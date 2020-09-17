package pers.kuroko.service;

import pers.kuroko.entity.Student;

import java.util.List;

public interface StudentService {

    List<Student> queryAllStudent();

    int addStudent(Student student);

    Student queryStudentById(int id);

    int deleteStudentById(int id);

    int updateStudent(Student student);

}
