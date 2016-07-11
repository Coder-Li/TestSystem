package com.testsystem.entity;

/**
 * Studentcourse entity. @author MyEclipse Persistence Tools
 */

public class Studentcourse implements java.io.Serializable {

	// Fields

	private Integer studentCourseId;
	private User userByStudentId;
	private Course course;
	private User userByTeacherId;
	private Integer score;
	private String submitTime;

	// Constructors

	/** default constructor */
	public Studentcourse() {
	}

	/** full constructor */
	public Studentcourse(User userByStudentId, Course course,
			User userByTeacherId, Integer score, String submitTime) {
		this.userByStudentId = userByStudentId;
		this.course = course;
		this.userByTeacherId = userByTeacherId;
		this.score = score;
		this.submitTime = submitTime;
	}

	// Property accessors

	public Integer getStudentCourseId() {
		return this.studentCourseId;
	}

	public void setStudentCourseId(Integer studentCourseId) {
		this.studentCourseId = studentCourseId;
	}

	public User getUserByStudentId() {
		return this.userByStudentId;
	}

	public void setUserByStudentId(User userByStudentId) {
		this.userByStudentId = userByStudentId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getUserByTeacherId() {
		return this.userByTeacherId;
	}

	public void setUserByTeacherId(User userByTeacherId) {
		this.userByTeacherId = userByTeacherId;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getSubmitTime() {
		return this.submitTime;
	}

	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}

}