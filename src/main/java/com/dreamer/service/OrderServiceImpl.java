package com.dreamer.service;

import com.dreamer.dao.OrderDAO;
import com.dreamer.domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Shishkov A.V. on 22.11.2014.
 */
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDAO;

	@Transactional
	@Override
	public void addOrder(Order order) {
		orderDAO.addOrder(order);
	}

	@Transactional
	@Override
	public void deleteOrderById(int id) {
		orderDAO.deleteOrderById(id);
	}

	@Transactional
	@Override
	public void deleteOrder(Order order) {
		orderDAO.deleteOrder(order);
	}

	@Transactional
	@Override
	public void modifyOrder(Order order) {
		orderDAO.modifyOrder(order);
	}

	@Transactional
	@Override
	public List<Order> listOrder() {
		return orderDAO.listOrder();
	}

	@Transactional
	@Override
	public Order getOrderById(int id) {
		return orderDAO.getOrderById(id);
	}
}
