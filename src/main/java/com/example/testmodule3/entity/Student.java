package com.example.testmodule3.entity;

public class Student {
    private int id;
    private String name;
    private String dateOfBirth;
    private String email;
    private String address;
    private String phone;
    private String classroom;
    private int classroomId;

    public Student(int id, String name, String dateOfBirth, String email, String address, String phone, String classroom) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.classroom = classroom;
    }

    public Student(int id, String name, String dateOfBirth, String email, String address, String phone, int classroomId) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.classroomId = classroomId;
    }

    public Student(String name, String dateOfBirth, String email, String address, String phone, int classroomId) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.classroomId = classroomId;
    }
    public int getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(int classroomId) {
        this.classroomId = classroomId;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

}
