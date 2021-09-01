package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @ClassName Orderitem
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:15
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderItem {
    private int orderItemId;
    private int orderItemNumber;
    private BigDecimal orderItemPrice;
    private int orderItemProductId;
    private int orderItemOrderId;
    private int orderItemUserId;
    private String orderItemNote;
}
