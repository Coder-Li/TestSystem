package com.testsystem.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer courseId;
	private String courseName;
	private String submitStartTime;
	private String submitEndTime;
	private String courseInfo;
	private String courseStartTime;
	private String courseAddress;
	private Set teachercourses = new HashSet(0);
	private Set studentcourses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** full constructor */
	public Course(String courseName, String submitStartTime,
			String submitEndTime, String courseInfo, String courseStartTime,
			String courseAddress, Set teachercourses, Set studentcourses) {
		this.courseName = courseName;
		this.submitStartTime = submitStartTime;
		this.submitEndTime = submitEndTime;
		this.courseInfo = courseInfo;
		this.courseStartTime = courseStartTime;
		this.courseAddress = courseAddress;
		this.teachercourses = teachercourses;
		this.studentcourses = studentcourses;
	}

	// Property accessors

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getSubmitStartTime() {
		return this.submitStartTime;
	}

	public void setSubmitStartTime(String submitStartTime) {
		this.submitStartTime = submitStartTime;
	}

	public String getSubmitEndTime() {
		return this.submitEndTime;
	}

	public void setSubmitEndTime(String submitEndTime) {
		this.submitEndTime = submitEndTime;
	}

	public String getCourseInfo() {
		return this.courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}

	public String getCourseStartTime() {
		return this.courseStartTime;
	}

	public void setCourseStartTime(String courseStartTime) {
		this.courseStartTime = courseStartTime;
	}

	public String getCourseAddress() {
		return this.courseAddress;
	}

	public void setCourseAddress(String courseAddress) {
		this.courseAddress = courseAddress;
	}

	public Set getTeachercourses() {
		return this.teachercourses;
	}

	public void setTeachercourses(Set teachercourses) {
		this.teachercourses = teachercourses;
	}

	public Set getStudentcourses() {
		return this.studentcourses;
	}

	public void setStudentcourses(Set studentcourses) {
		this.studentcourses = studentcourses;
	}

}