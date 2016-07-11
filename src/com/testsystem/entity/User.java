package com.testsystem.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Integer type;
	private String userName;
	private String userPass;
	private Boolean sex;
	private Integer age;
	private String tel;
	private String userRealName;
	private Set teachercourses = new HashSet(0);
	private Set studentcoursesForStudentId = new HashSet(0);
	private Set studentcoursesForTeacherId = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(Integer type, String userName, String userPass, Boolean sex,
			Integer age, String tel, String userRealName, Set teachercourses,
			Set studentcoursesForStudentId, Set studentcoursesForTeacherId) {
		this.type = type;
		this.userName = userName;
		this.userPass = userPass;
		this.sex = sex;
		this.age = age;
		this.tel = tel;
		this.userRealName = userRealName;
		this.teachercourses = teachercourses;
		this.studentcoursesForStudentId = studentcoursesForStudentId;
		this.studentcoursesForTeacherId = studentcoursesForTeacherId;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return this.userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public Boolean getSex() {
		return this.sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUserRealName() {
		return this.userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public Set getTeachercourses() {
		return this.teachercourses;
	}

	public void setTeachercourses(Set teachercourses) {
		this.teachercourses = teachercourses;
	}

	public Set getStudentcoursesForStudentId() {
		return this.studentcoursesForStudentId;
	}

	public void setStudentcoursesForStudentId(Set studentcoursesForStudentId) {
		this.studentcoursesForStudentId = studentcoursesForStudentId;
	}

	public Set getStudentcoursesForTeacherId() {
		return this.studentcoursesForTeacherId;
	}

	public void setStudentcoursesForTeacherId(Set studentcoursesForTeacherId) {
		this.studentcoursesForTeacherId = studentcoursesForTeacherId;
	}

}