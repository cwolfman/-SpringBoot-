package com.yidai.pojo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @ClassName Category
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 11:24
 * @Description 分类
 */
/**
 * @description: 表示这个是一个实体类
 */
@Entity
/**
 * @description: 表示对应的表名是category
 */
/**
 * @description: 忽略handler 和 hibernateLazyInitializer这两个无须 json化的属性
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {
    @Id
    private int categoryId;
    private String categoryName;
}
