package com.dreamer.dao;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by Shishkov A.V. on 22.11.2014.
 */
@Entity
public class Question {
	private int id;
	private String authorName;
	private String message;
	private Timestamp postDate;
	private String answer;
	private Timestamp answerDate;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Basic
	@Column(name = "author_name")
	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	@Basic
	@Column(name = "message")
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Basic
	@Column(name = "post_date")
	public Timestamp getPostDate() {
		return postDate;
	}

	public void setPostDate(Timestamp postDate) {
		this.postDate = postDate;
	}

	@Basic
	@Column(name = "answer")
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Basic
	@Column(name = "answer_date")
	public Timestamp getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(Timestamp answerDate) {
		this.answerDate = answerDate;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Question question = (Question) o;

		if (id != question.id) return false;
		if (answer != null ? !answer.equals(question.answer) : question.answer != null) return false;
		if (answerDate != null ? !answerDate.equals(question.answerDate) : question.answerDate != null) return false;
		if (authorName != null ? !authorName.equals(question.authorName) : question.authorName != null) return false;
		if (message != null ? !message.equals(question.message) : question.message != null) return false;
		if (postDate != null ? !postDate.equals(question.postDate) : question.postDate != null) return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = id;
		result = 31 * result + (authorName != null ? authorName.hashCode() : 0);
		result = 31 * result + (message != null ? message.hashCode() : 0);
		result = 31 * result + (postDate != null ? postDate.hashCode() : 0);
		result = 31 * result + (answer != null ? answer.hashCode() : 0);
		result = 31 * result + (answerDate != null ? answerDate.hashCode() : 0);
		return result;
	}
}
