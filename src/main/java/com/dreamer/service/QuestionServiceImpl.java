package com.dreamer.service;

import com.dreamer.dao.QuestionDAO;
import com.dreamer.domain.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Shishkov A.V. on 12.09.2014.
 */
@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    QuestionDAO questionDAO;

    @Transactional
    @Override
    public void addQuestion(Question question) {
        questionDAO.addQuestion(question);
    }

    @Transactional
    @Override
    public List<Question> listQuestion() {
        return questionDAO.listQuestion();
    }

    @Transactional
    @Override
    public void removeQuestion(int id) {
        questionDAO.removeQuestion(id);
    }
}
