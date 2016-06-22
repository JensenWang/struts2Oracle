package org.action;

import java.io.File;
import java.io.FileInputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.jdbc.StudentJdbc;
import org.vo.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class StudentAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private Student student;
	File zpfile;		// 定义文件类
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public File getZpfile() {
		return zpfile;
	}
	public void setZpfile(File zpfile) {
		this.zpfile = zpfile;
	}
	
	private List<Student> studentList;

	/**
	 * 添加学生
	 * @return
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		StudentJdbc studentJ = new StudentJdbc();
		
		student.setXh(student.getXh());
		student.setBz(student.getBz());
		student.setCssj(student.getCssj());
		student.setXb(student.getXb());
		student.setXm(student.getXm());
		student.setZxf(student.getZxf());
		student.setZy(student.getZy());
		
		if (this.getZpfile() != null){
			// 创建文件输入流，用于读取图片
			FileInputStream fis = new FileInputStream(this.getZpfile());
			// 创建字节类数组，存放图片二进制数据
			byte[] buffer = new byte[fis.available()];
			// 将图片类容读入到字节数组中
			fis.read(buffer);
			student.setZp(buffer);
		}
		
		if(studentJ.addStudent(student)){
			return SUCCESS;
		} else {
			return ERROR;
		}
		
	}
	
	public String showAllStudent() {
		Student student = new Student();
		StudentJdbc studentJ = new StudentJdbc();
		
		try {
			studentList = studentJ.showStudent();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 返回一个Map对象
		Map<String, List<Student>> request = (Map)ActionContext.getContext().get("request");
		request.put("studentList",studentList);
		
		return SUCCESS;
	}
	
}