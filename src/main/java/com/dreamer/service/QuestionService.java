package com.dreamer.service;

import com.dreamer.domain.Question;

import java.util.List;

/**
 * Created by Shishkov A.V. on 12.09.2014.
 */
public interface QuestionService {
    void addQuestion(Question question);

    void deleteQuestionById(int id);

    void deleteQuestion(Question question);

    void modifyQuestion(Question question);

    List<Question> listQuestion();

    Question getQuestionById(int id);

    void removeQuestion(int id);

}
