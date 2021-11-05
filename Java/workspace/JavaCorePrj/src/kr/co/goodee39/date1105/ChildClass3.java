package kr.co.goodee39.date1105;

public class ChildClass3 extends ParentClass3{
	int a2;
	String s2;
	
	public ChildClass3() {
	  // super(); // 디폴트 값으로 디폴트 생성자와 같이 선언되어짐
	   super(1, "abc"); 
	   // 디폴트 생성자는 상속은 되지않지만 자동으로 생성되어 선언하지않아도 참조되어 사용가능하지만
	   // 디폴트 생성자가 아닌 매개변수를 가진 생성자를 참조하기 위해서는
	   // super을 사용해야 참조가 가능하다.
	   
	}// 생성자가 생성되지 않으면 위와같이 자동으로 디폴트 생성자가 생성
	
	public void method3 () {
		System.out.println("method3 실행");
		super.method1();
	}
	
	public void method4 () {
		System.out.println("method4 실행");
	}
}
