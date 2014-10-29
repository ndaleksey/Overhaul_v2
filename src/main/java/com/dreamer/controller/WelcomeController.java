package com.dreamer.controller;

import com.dreamer.domain.Question;
import com.dreamer.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by Shishkov A.V. on 10.09.2014.
 */
@Controller
@RequestMapping(value = "/")
public class WelcomeController {

    @Autowired
    private QuestionService questionService;

    String methodName;

    @RequestMapping(value = "/error404")
    public String error404() {
        return "error404";
    }

    @RequestMapping(value = "/admin")
    public String admin() {
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/index")
    public String index() {
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/examples")
    public String examples() {
        return "examples";
    }

    @RequestMapping(value = "/order_request")
    public String orderRequest() {
        return "order_request";
    }

    @RequestMapping(value = "/order_response", method = RequestMethod.POST)
    public String order_response(@RequestParam(required = true, defaultValue = "Гость") String userName,
                                 @RequestParam(required = true) String email,
                                 @RequestParam(required = true) String address,
                                 @RequestParam(required = true) String phoneNumber,
                                 @RequestParam(required = true, defaultValue = "0.0") float flatSquare,
                                 @RequestParam(required = true, defaultValue = "1") int roomsQuantity,
                                 @RequestParam String message, ModelMap model) {

        model.addAttribute("userName", userName);
        model.addAttribute("email", email);
        model.addAttribute("address", address);
        model.addAttribute("phoneNumber", phoneNumber);
        model.addAttribute("flatSquare", flatSquare);
        model.addAttribute("roomsQuantity", roomsQuantity);

        return "questions";
    }

    @RequestMapping(value = "/questions")
    public String questions(ModelMap model) {
        Question question = new Question();
        model.addAttribute("question", question);
        model.addAttribute("questionList", questionService.listQuestion());
        return "questions";
    }

    @RequestMapping(value = "/add_question", method = RequestMethod.POST)
    public String addQuestion(@ModelAttribute("question") Question question) {
        question.setPostDate(new Timestamp(new Date().getTime()));
        question.setAnswerDate(new Timestamp(new Date().getTime()));
        questionService.addQuestion(question);
        return "redirect:/questions";
    }

    @RequestMapping(value = "/answers")
    public String answers(ModelMap model) {
        Question question = new Question();
        model.addAttribute("question", question);
        model.addAttribute("method_name", methodName);
        model.addAttribute("questionList", questionService.listQuestion());
        return "answers";
    }

    @RequestMapping(value = "/update_question", method = RequestMethod.GET)
    public String updateQuestion(@RequestParam("questionId") String questionId,
                                 @RequestParam("answer") String answer) {

        if (!answer.trim().equals("")) {
            int id = Integer.parseInt(questionId);
            Question question = questionService.getQuestionById(id);
            question.setAnswer(answer);
            question.setAnswerDate(new Timestamp(new Date().getTime()));
            System.out.println(question.getAnswer());
            questionService.modifyQuestion(question);
        }

        return "redirect:/answers";
    }

    @RequestMapping(value = "/delete_answer")
    public String deleteAnswer(ModelMap model) {
//        Question question = new Question();
//        model.addAttribute("question", question);

        model.addAttribute("questionList", questionService.listQuestion());
        return "answers";
    }

    /*@RequestMapping(value = "/questions")
    public String getQuestions(@ModelAttribute(value = "questions") List<Question> questions, ModelMap model) {
        questions = questionService.listQuestion();

        try(FileWriter file = new FileWriter(new File("questions.txt"))) {
            StringBuilder text = new StringBuilder();
            for (Question question : questions) {
                text.append(question + "\r\n");
            }
            file.write(text.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
//        model.addAttribute("questions", questions);
        return "questions";
    }*/
}
