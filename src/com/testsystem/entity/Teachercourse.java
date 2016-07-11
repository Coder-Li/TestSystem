package com.testsystem.entity;

/**
 * Teachercourse entity. @author MyEclipse Persistence Tools
 */

public class Teachercourse implements java.io.Serializable {

	// Fields

	private Integer teacherCouseId;
	private Course course;
	private User user;
	private Boolean isTest;

	// Constructors

	/** default constructor */
	public Teachercourse() {
	}

	/** full constructor */
	public Teachercourse(Course course, User user, Boolean isTest) {
		this.course = course;
		this.user = user;
		this.isTest = isTest;
	}

	// Property accessors

	public Integer getTeacherCouseId() {
		return this.teacherCouseId;
	}

	public void setTeacherCouseId(Integer teacherCouseId) {
		this.teacherCouseId = teacherCouseId;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Boolean getIsTest() {
		return this.isTest;
	}

	public void setIsTest(Boolean isTest) {
		this.isTest = isTest;
	}

}