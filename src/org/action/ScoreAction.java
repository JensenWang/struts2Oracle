package org.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.jdbc.ScoreJdbc;
import org.vo.Course;
import org.vo.Score;
import org.vo.Student;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ScoreAction extends ActionSupport{
	
	private Student student;
	private Course course;
	private List<Student> studentList;
	private List<Course> courseList;
	private Score score;
	public Score getScore() {
		return score;
	}
	public void setScore(Score score) {
		this.score = score;
	}

	public String execute() throws Exception {
		return SUCCESS;
	}
	
	/**
	 * 添加学生成绩
	 * @return
	 * @throws Exception
	 */
	public String addScore() throws Exception {
		ScoreJdbc scoreJ = new ScoreJdbc();
		score.setXh(score.getXh());
		score.setKch(score.getKch());
		score.setCj(score.getCj());
		scoreJ.addScore(score);
		return SUCCESS;
	}
	
	/**
	 * 查询所有学生和课程信息
	 * @return
	 * @throws SQLException
	 */
	public String showAllScore() throws SQLException {
		ScoreJdbc scoreJ = new ScoreJdbc();
		courseList = scoreJ.showCourse();
		studentList = scoreJ.showStudent();
		Map<String, List<?>> request = (Map)ActionContext.getContext().get("request");
		request.put("courseList", courseList);
		request.put("studentList", studentList);
		return SUCCESS;
	}
	
}
