package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @ClassName User
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:16
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int userId;
    private String userName;
    private String userPassword;
    private String userRealName;
    private boolean userGender;
    private Date userBirthday;
    private String userAddress;
}
