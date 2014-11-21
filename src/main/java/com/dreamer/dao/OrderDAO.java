package com.dreamer.dao;

import com.dreamer.domain.Order;

import java.util.List;

/**
 * Created by Shishkov A.V. on 22.11.2014.
 */
public interface OrderDAO {
	void addOrder(Order order);

	void deleteOrder(Order order);

	void deleteOrderById(int id);

	void modifyOrder(Order order);

	List<Order> listOrder();

	Order getOrderById(int id);
}
