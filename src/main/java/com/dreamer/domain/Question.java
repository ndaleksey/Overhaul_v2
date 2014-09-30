package com.dreamer.domain;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Shishkov A.V. on 30.09.2014.
 */
@Entity
@Table(name = "Question")
public class Question {
    private int id;
    private String message;
    private String authorName;
    private Timestamp postDate;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "author_name")
    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    @Basic
    @Column(name = "post_date")
    public Timestamp getPostDate() {
        return postDate;
    }

    public void setPostDate(Timestamp postDate) {
        this.postDate = postDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Question question = (Question) o;

        if (id != question.id) return false;
        if (authorName != null ? !authorName.equals(question.authorName) : question.authorName != null) return false;
        if (message != null ? !message.equals(question.message) : question.message != null) return false;
        if (postDate != null ? !postDate.equals(question.postDate) : question.postDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (authorName != null ? authorName.hashCode() : 0);
        result = 31 * result + (postDate != null ? postDate.hashCode() : 0);
        return result;
    }
}
