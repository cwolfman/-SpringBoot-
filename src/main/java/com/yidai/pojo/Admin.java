package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName Admin
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:15
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
    private int adminId;
    private String adminName;
    private String adminPassword;
}
