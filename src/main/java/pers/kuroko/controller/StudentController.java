package pers.kuroko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pers.kuroko.entity.Student;
import pers.kuroko.service.StudentService;

import java.util.List;
import java.util.Map;

@RequestMapping("studentController")
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("getAllStudent")
    public String getAllStudent(Map<String, List<Student>> map) {
        List<Student> students = studentService.queryAllStudent();
        map.put("students", students);
        return "homePage";
    }

    @ResponseBody
    @RequestMapping(value = "addStudent")
    public String addStudent(Student student) {
        //判断该学号的学生是否已经存在
        Student studentById = studentService.queryStudentById(student.getId());
        if (studentById != null) {
            return "isExist";
        }
        //加入数据库，看返回值决定是否成功
        int i = studentService.addStudent(student);
        if (i > 0) {
            return "success";
        } else {
            return "error";
        }
    }

    @ResponseBody
    @RequestMapping(value = "deleteStudentById")
    public String deleteStudentById(int id) {
        int i = studentService.deleteStudentById(id);
        if (i > 0) {
            return "success";
        } else {
            return "error";
        }
    }

    @ResponseBody
    @RequestMapping(value = "updateStudent")
    public String updateStudent(Student student) {
        //加入数据库，看返回值决定是否成功
        int i = studentService.updateStudent(student);
        if (i > 0) {
            return "success";
        } else {
            return "error";
        }
    }

}
