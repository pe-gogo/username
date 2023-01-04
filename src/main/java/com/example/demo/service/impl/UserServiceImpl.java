package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.User;
import com.example.demo.mapper.SUserMapper;
import com.example.demo.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author liqingyuan
 * @since 2023-01-03
 */
@Service
public class UserServiceImpl extends ServiceImpl<SUserMapper, User> implements IUserService {

    public SUserMapper sUserMapper;

    // 注册方法
    public boolean register(String username, String password) {
        System.out.println(username+password);
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        // 判断用户名是否已被使用
        sUserMapper.insert(user);
        // 返回成功
        return true;
    }
}
