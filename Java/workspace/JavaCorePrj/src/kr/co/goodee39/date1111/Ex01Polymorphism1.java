package kr.co.goodee39.date1111;

public class Ex01Polymorphism1 {
	public static void main(String[] args) {
		// 다형성
		/*
		 * - 하나의 객체 타입으로 여러가지 객체를 참조할 수 있는 성질을 의미
		 * - 조상 타입을 상속받은 하위 객체들은 실제 조상의 타입으로 자신의 객체로 인스턴스 생성이 가능하다.
		 * - 이렇게 되면 하나의 변수로 여러가지 참조 값을 변수에서 가져갈 수 있으며 여러 용도로 사용이 가능하다.
		 * - 이후 GoF에서 만든 디자인 패턴의 보급과 함께 현재 중요해지고 있는 이론 중에 하나이다.
		 * */
		ChildClass1 cc1 = new ChildClass1();
		cc1.method1();
		cc1.method2();
		System.out.println(cc1.str1);
		System.out.println(cc1.str2);
		
		cc1.method3();
		
		System.out.println("------------------");
		
		ParentClass1 cc2 = new ChildClass1();
		// 부모의 클래스를 통해 자식 객체를 생성 할 수 있다.
		cc2.method1();
		cc2.method2();
		System.out.println(cc2.str1);
		System.out.println(cc2.str2);
		
		((ChildClass1)cc2).method3();
		
		System.out.println("------------------");
		ParentClass1 cc3 = new ChildClass1();
		// 부모의 클래스를 통해 자식 객체를 생성 할 수 있다.
		cc3.method1();
		cc3.method2();
		System.out.println(cc3.str1);
		System.out.println(cc3.str2);
		
	}
}
