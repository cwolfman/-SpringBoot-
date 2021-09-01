package com.yidai.service;

import com.yidai.dao.CategoryDao;
import com.yidai.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CategoryService
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 11:52
 * @Description TODO
 */
@Service
public class CategoryService {
    @Autowired
    CategoryDao categoryDao;

    public List<Category> list() {
        Sort sort = Sort.by(Sort.Direction.DESC, "categoryId");
        return categoryDao.findAll(sort);
    }
}