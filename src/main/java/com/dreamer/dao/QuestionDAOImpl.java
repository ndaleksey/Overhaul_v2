package com.dreamer.dao;

import com.dreamer.domain.Question;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Shishkov A.V. on 12.09.2014.
 */
@Repository
public class QuestionDAOImpl implements QuestionDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addQuestion(Question question) {
		sessionFactory.getCurrentSession().save(question);
	}

	@Override
	public void deleteQuestionById(int id) {
		sessionFactory.getCurrentSession().delete(getQuestionById(id));
	}

	@Override
	public void deleteQuestion(Question question) {
		sessionFactory.getCurrentSession().delete(question);
	}

	@Override
	public void modifyQuestion(Question question) {
		sessionFactory.getCurrentSession().update(question);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> listQuestion() {
		return sessionFactory.getCurrentSession().createQuery("from Question").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Question getQuestionById(int id) {
		return (Question) sessionFactory.getCurrentSession().createQuery("from Question where id = :id").setParameter("id", id).list().get(0);
	}
}
