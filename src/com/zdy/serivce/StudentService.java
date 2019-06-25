package com.zdy.serivce;

import com.zdy.po.Student;

import java.util.List;

public interface StudentService {
    public Student findStudentById(Integer id);
    public List<Student> selectStudentList();
    public int addStudent(Student student);
    public int updateStudent(Student student);
    public int deleteStudent(Integer id);
    public Student getStudentById(Integer id);
    public List<Student> findStudentByName(String s);
}
