package com.zdy.controller;
import com.zdy.po.Student;
import com.zdy.serivce.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/findStudentById")
    public String findStudentById(Integer id, Model model){
        Student student=studentService.findStudentById(id);
        model.addAttribute("student",student);
        return "student";
    }
    @RequestMapping("/findStudentByName")
    public String findStudentByName(String name,Model model){
        System.out.println(name);
        List<Student> rows=studentService.findStudentByName(name);
        System.out.println(rows.size());
        model.addAttribute("rows",rows);
        return "student";
    }
    @RequestMapping("/addStudent")
    public String addStudent(Student student, HttpSession session){
        int rows=studentService.addStudent(student);
        if(rows>0){
            return"OK";
        }else {
            return "Error";
        }
    }
    @RequestMapping("/selectStudentList")
    public String selectStudentList(Model model){
        List<Student> rows=studentService.selectStudentList();
        model.addAttribute("rows",rows);
        return "student";
    }
    @RequestMapping("/deleteStudent")
    @ResponseBody
    public String deleteStudent(Integer id){
        int rows=studentService.deleteStudent(id);
        if(rows>0){
            return "OK";
        }else{
            return "Error";
        }
    }
    @RequestMapping("/getStudentById")
    @ResponseBody
    public Student getStudentById(Integer id){
        Student student=studentService.findStudentById(id);
        return student;
    }
    @RequestMapping("/updateStudent")
    @ResponseBody
    public String updateStudent(Student student){
        System.out.println(student.getName());
        int rows=studentService.updateStudent(student);
        if(rows>0){
            return "OK";
        }else{
            return "Error";
        }
    }
}
