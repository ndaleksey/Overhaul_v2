package com.dreamer.dao;

import com.dreamer.domain.Question;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by Shishkov A.V. on 12.09.2014.
 */
@Repository
public class QuestionDAOImpl implements QuestionDAO {

    static {
        File file = new File("autowired_block.txt");
        try {
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addQuestion(Question question) {
        sessionFactory.getCurrentSession().save(question);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Question> listQuestion() {
        return sessionFactory.getCurrentSession().createQuery("from Question").list();
    }

    @Override
    public void removeQuestion(int id) {
        Question question = (Question) sessionFactory.getCurrentSession().load(Question.class, id);

        if (question != null) {
            sessionFactory.getCurrentSession().delete(question);
        }
    }
}
