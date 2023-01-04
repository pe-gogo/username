package com.example.demo.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.Student;
import com.example.demo.entity.User;
import com.example.demo.mapper.SUserMapper;
import com.example.demo.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author liqingyuan
 * @since 2023-01-03
 */
@Controller
@RequestMapping()
public class UserController {
    @Autowired
    SUserMapper userMapper;

    @Autowired
    StudentMapper studentMapper;

    @PostMapping("/register")
    public HttpServletResponse register(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password, HttpServletResponse response ) throws IOException {
        System.out.println(username+""+password);
        User user1 = userMapper.selectOne(new QueryWrapper<User>().eq("username", username).eq("password", password));
        if(user1!=null){
            response.sendRedirect("index.jsp");
            return response ;
        }
        // 校验参数...
        User user = new User();
        // 调用业务逻辑层的注册方法
        user.setPassword(password);
        user.setUsername(username);
        userMapper.insert(user);
        response.sendRedirect("index.jsp");
        return response;
    }

    @PostMapping("/login")
    public HttpServletResponse login(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password, HttpServletResponse response) throws IOException {
        System.out.println(username+""+password);
        // 调用业务逻辑层的注册方法
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("username", username).eq("password", password));
        user.setPassword(password);
        user.setUsername(username);
        response.sendRedirect("add.jsp");
        return response;
    }

    @RequestMapping("/add")
    public HttpServletResponse add(@RequestParam("StuNo")Integer StuNo,
                                   @RequestParam("StuName") String stuName,
                                   @RequestParam("sex") String sex,
                                   @RequestParam("idCode") String idCode,
                                   @RequestParam("education") String education,
                                   @RequestParam("degree") String degree,
                                   @RequestParam("major") String major,
                                   @RequestParam("educationForm") String educationForm,
//                    @RequestParam("joinData") LocalDateTime joinData,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("email") String email,
                                   HttpServletResponse response
    ) throws IOException {
        Student student = new Student();
        student.setIdCode(idCode);
        student.setEducation(education);
        student.setDegree(degree);
        student.setMajor(major);
        student.setEducationForm(educationForm);
//        student.setJoinDate(joinData);
        student.setPhone(phone);
        student.setEmail(email);
        student.setStuNo(StuNo);
        student.setSex(sex);
        student.setStuName(stuName);
        studentMapper.insert(student);
        return response;
    }
}
