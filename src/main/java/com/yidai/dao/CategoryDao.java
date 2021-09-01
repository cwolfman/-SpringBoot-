package com.yidai.dao;

import com.yidai.pojo.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @ClassName CategoryDao
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 11:50
 * @Description TODO
 */
public interface CategoryDao extends JpaRepository<Category,Integer> {
}
