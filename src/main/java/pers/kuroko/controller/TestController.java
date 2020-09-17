package pers.kuroko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pers.kuroko.entity.Student;
import pers.kuroko.service.TestService;

import java.util.Map;

//指定在浏览器的路径
@RequestMapping("testController")
@Controller//注解，表明是Controller
public class TestController {

    //使用自动装配
    @Autowired
    @Qualifier("testService")
    private TestService testService;

    public void setTestService(TestService testService) {
        this.testService = testService;
    }

    @RequestMapping("queryStudentById/{id}")
    public String queryStudentById(@PathVariable("id") int id, Map<String, Object> map) {
        Student student = testService.queryStudentById(id);
        System.out.println(student);
        map.put("student", student);
        return "test";
    }

    @RequestMapping("homePage")
    public String toIndex() {
        return "homePage";
    }

}
