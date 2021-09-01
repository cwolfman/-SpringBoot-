package com.yidai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName AdminPageController
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 15:43
 * @Description TODO
 */

@Controller
@RequestMapping("/admin")
public class AdminPageController {
    @GetMapping("/admin")
    public String admin() {
        return "admin/login";
    }

    @GetMapping("/category_list")
    public String listCategory() {
        return "main/listCategory";
    }
}
