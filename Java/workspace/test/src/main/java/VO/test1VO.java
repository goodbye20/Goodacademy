package VO;

public class test1VO {
	String uname;
	int age;
	String comments;
	
	public test1VO() {
		// TODO Auto-generated constructor stub
	}
	public test1VO(String uname, int age, String comments) {
		super();
		this.uname = uname;
		this.age = age;
		this.comments = comments;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}
