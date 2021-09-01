package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName Property
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:16
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Property {
    private int propertyId;
    private String propertyName;
    private int propertyCategoryId;
}
