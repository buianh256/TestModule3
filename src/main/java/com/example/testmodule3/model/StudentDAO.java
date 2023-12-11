package com.example.testmodule3.model;

import com.example.testmodule3.entity.Student;

import java.util.List;

public interface StudentDAO {
    List<Student> getAll();
    void studentAdd(Student student);
    Student findStudentById(int id);
    void studentRemove(int id);
    void studentUpdate(Student student);
    List<Student> search(String keyword);
}
