package kr.co.goodee39.date1105;

public class Ex07_Object {
	// Object
	/*
	 * - 모든 클래스에 상속되는 최상위 객체
	 * - 객체에서 Object를 상속받지 않더라도 default로 상속이 되어있다.
	 * - 그러므로 모든 객체에서는 상속여부에 상관없이 Object에서 선언된 기능을 사용 가능하다.
	 * - 또한 object가 들어있는 java.lang 패키지에 있는 모든 클래스들은 import로 패키지에 접근할 필요 없이
	 *   모든 클래스가 사용이 가능하다.
	 * */
	public static void main(String[] args) {
		Ex07_Object ex = new Ex07_Object();
		System.out.println(ex.toString());
		
	}
}
