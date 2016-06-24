package org.action;

import java.io.File;
import java.io.FileInputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
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
	
	/**
	 * 查询所有学生信息
	 * @return
	 */
	public String showAllStudent() {
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
	
	/**
	 * 查询单个学生
	 * @return
	 * @throws Exception
	 */
	public String showOneStudent() throws Exception {
		Student student1 = new Student();
		StudentJdbc studentJ = new StudentJdbc();
		student1 = studentJ.showOneStudent(student.getXh());
		Map<String, Student> request = (Map)ActionContext.getContext().get("request");
		// 将单个学生信息放入到Map容器中
		request.put("student1", student1);
		return SUCCESS;
	}
	
	/**
	 * 获取相片
	 * @return
	 * @throws Exception
	 */
	public String getImage() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		Student student1 = new Student();
		StudentJdbc studentJ = new StudentJdbc();
		String xh = student.getXh();
		// 查询一个学生
		student1 = studentJ.showOneStudent(xh);
		byte[] img = student1.getZp();
		// 制定HTTP响应的编码
		response.setContentType("image/jpeg");
		// 返回一个输出流
		ServletOutputStream os = response.getOutputStream();
		if (img != null && img.length != 0) {
			for (int i = 0; i < img.length; i++) {
				os.write(img[i]);	// 向流中写入数据
			}
		}
		
		return NONE;
		
	}
	
	public String deleteStudent() throws Exception {
	    StudentJdbc studentJ = new StudentJdbc();
	    studentJ.deleteStudent(student.getXh());
	    return SUCCESS;
	}
}














