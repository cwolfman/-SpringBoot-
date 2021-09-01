package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @ClassName Product
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:15
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    private int productId;
    private String productName;
    private String productTitle;
    private BigDecimal productOriginalPrice;
    private BigDecimal productSalePrice;
    private int productSaleCount;
    private int productReviewCount;
}
