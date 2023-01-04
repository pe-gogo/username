package com.example.demo;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Collections;

@SpringBootTest
class DemoApplicationTests {

    @Test
    void contextLoads() {
        {
            FastAutoGenerator.create("jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true", "root", "12345678")
                    .globalConfig(builder -> {
                        builder.author("liqingyuan") // 设置作者
                                .fileOverride() // 覆盖已生成文件
                                .outputDir(System.getProperty("user.dir")+"/src/main/java"); // 指定输出目录
                    })
                    .packageConfig(builder -> {
                        builder.parent("com.example.demo") // 设置父包名
                                  .moduleName("") // 设置父包模块名
                                .pathInfo(Collections.singletonMap(OutputFile.mapperXml, System.getProperty("user.dir")+"/src/main/resources")); // 设置mapperXml生成路径
                    })
                    .strategyConfig(builder -> {
                        builder.addInclude("student") // 设置需要生成的表名
                                .addTablePrefix("t_", "c_"); // 设置过滤表前缀
                    })
                    .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                    .execute();
        }
    }

}
