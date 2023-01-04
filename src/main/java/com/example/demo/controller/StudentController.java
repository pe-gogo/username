package com.example.demo.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.Student;
import com.example.demo.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author liqingyuan
 * @since 2023-01-04
 */
@RestController
public class StudentController {
    @Autowired
    StudentMapper studentMapper;

    @RequestMapping("/student/getList")
    public List<Student> get(){
        List<Student> students = studentMapper.selectList(null);
        return students;
    }

    @RequestMapping("/student/search")
    public Student searchStudents(@RequestParam("stuName") String stuName,Model model) {
        Student students =studentMapper.selectOne(new QueryWrapper<Student>().eq("stu_name",stuName));
        model.addAttribute("students",students);
        return students;
    }


}
