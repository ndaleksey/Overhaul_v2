package com.dreamer.controller;

import com.dreamer.domain.Question;
import com.dreamer.domain.Order;
import com.dreamer.service.OrderService;
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

	@Autowired
	private OrderService orderService;

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

	@RequestMapping(value = "/update_question", method = RequestMethod.POST)
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
		return "redirect:/answers";
	}

	@RequestMapping(value = "/delete_question")
	public String deleteQuestion(@RequestParam("questionId") String questionId) {
		if (!questionId.trim().equals("")) {
			questionService.deleteQuestionById(Integer.parseInt(questionId));
		}

		return "redirect:/answers";
	}

	@RequestMapping(value = "/order")
	public String request(ModelMap model) {
		Order order = new Order();
		model.addAttribute("order", order);
		return "order";
	}

	@RequestMapping(value = "/add_order", method = RequestMethod.POST)
	public String addRequest(@ModelAttribute("order") Order order) {
		order.setOrderDate(new Timestamp(new Date().getTime()));
		orderService.addOrder(order);
		return "redirect:/order";
	}
	@RequestMapping(value = "/orders")
	public String orders(ModelMap model) {
		model.addAttribute("orderList", orderService.listOrder());
		return "orders";
	}
}
