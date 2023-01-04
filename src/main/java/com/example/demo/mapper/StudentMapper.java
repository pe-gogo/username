package com.example.demo.mapper;

import com.example.demo.entity.Student;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author liqingyuan
 * @since 2023-01-04
 */
@Mapper
public interface StudentMapper extends BaseMapper<Student> {

}
