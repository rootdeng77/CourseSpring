package com.zdy.service.impl;

import com.zdy.dao.StudentDao;
import com.zdy.po.Student;
import com.zdy.serivce.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    public Student findStudentById(Integer id){
        return this.studentDao.findStudentById(id);
    }
    @Override
    public List<Student> selectStudentList() {
        return studentDao.selectStudentList();
    }
    @Override
    public Student getStudentById(Integer id){
        return studentDao.findStudentById(id);
    }
    @Override
    public List<Student> findStudentByName(String s){
        return studentDao.findStudentByName(s);
    }
    public int addStudent(Student student){
        return studentDao.addStudent(student);
    }
    public int updateStudent(Student student){
        return studentDao.updateStudent(student);
    }
    public int deleteStudent(Integer id){
        return studentDao.deleteStudent(id);
    }
}
