package com.zdy.dao;

import com.zdy.po.Student;

import java.util.List;

public interface StudentDao {
    public Student findStudentById(Integer id);
    public List<Student> selectStudentList();
    public int addStudent(Student Student);
    // 更新客户信息
    public int updateStudent(Student Student);
    // 删除客户
    int deleteStudent (Integer id);
    public List<Student>  findStudentByName(String s);
}
