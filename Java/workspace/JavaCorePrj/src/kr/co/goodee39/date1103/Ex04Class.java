package kr.co.goodee39.date1103;

public class Ex04Class {

	public static void main(String[] args) {
		// 객체 선언 방법
		/* - 객체선언타입 인스턴트명(변수명) = new 생성자함수(); 
		 * 
		 * */
		Car car1 = new Car();
		System.out.println(car1.color);
		System.out.println(car1.fuel);
		car1.putAccel();
		car1.putBreak();
		car1.color = "검은색";
		car1.fuel = 100;
		
		System.out.println("----------------------");
		System.out.println(car1.color);
		System.out.println(car1.fuel);
		
		System.out.println("======================");
		Car car2 = new Car();
		System.out.println(car2.color);
		System.out.println(car2.fuel);
		
		System.out.println("======================");
		Car car3 = car2;
		car3.color ="흰색";
		car3.fuel = 50;
		
		System.out.println(car3.color);
		System.out.println(car3.fuel);
		
		System.out.println(car2.color);
		System.out.println(car2.fuel);
		
		System.out.println("======================");
		System.out.println(car1);
	}

}
