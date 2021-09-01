package com.yidai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @ClassName Order
 * @Author 一呆
 * @Version 1.0.0
 * @Date 2021/8/16 21:15
 * @Description TODO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int orderId;
    private String orderCode;
    private String orderAddress;
    private String orderPost;
    private String orderReceiver;
    private String orderMobile;
    private String orderNote;
    private Date orderCreateDate;
    private Date orderPayDate;
    private Date orderDeliveryDate;
    private Date orderConfirmDate;
    private String orderStatus;
    private int orderUserId;
}
