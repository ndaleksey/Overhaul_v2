package com.dreamer.dao;

import com.dreamer.domain.Question;

import java.util.List;

/**
 * Created by Shishkov A.V. on 12.09.2014.
 */
public interface QuestionDAO {

    void addQuestion(Question question);

    void modifyQuestion(Question question);

    List<Question> listQuestion();

    Question getQuestionById(int id);

    void removeQuestion(int id);
}
