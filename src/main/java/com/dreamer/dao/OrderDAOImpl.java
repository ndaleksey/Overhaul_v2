package com.dreamer.dao;

import com.dreamer.domain.Order;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Shishkov A.V. on 22.11.2014.
 */
@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addOrder(Order order) {
		sessionFactory.getCurrentSession().save(order);
	}

	@Override
	public void deleteOrder(Order order) {
		sessionFactory.getCurrentSession().delete(order);
	}

	@Override
	public void deleteOrderById(int id) {
		sessionFactory.getCurrentSession().delete(getOrderById(id));
	}

	@Override
	public void modifyOrder(Order order) {
		sessionFactory.getCurrentSession().update(order);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> listOrder() {
		return sessionFactory.getCurrentSession().createQuery("from Order").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Order getOrderById(int id) {
		return (Order) sessionFactory.getCurrentSession().createQuery("from Order where id = :id")
				.setParameter("id", id).list().get(0);
	}
}
