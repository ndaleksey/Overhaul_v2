package com.dreamer.service;

import com.dreamer.domain.Order;

import java.util.List;

/**
 * Created by Shishkov A.V. on 22.11.2014.
 */
public interface OrderService {
	void addOrder(Order order);

	void deleteOrderById(int id);

	void deleteOrder(Order order);

	void modifyOrder(Order order);

	List<Order> listOrder();

	Order getOrderById(int id);
}
