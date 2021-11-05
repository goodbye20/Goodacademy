package kr.co.goodee39.date1105;

public class Ex01Static {
	// static
	/*
	 * - 클래스 영역에 선언하고자 하는 메서드 혹은 필드를 선언할 때 쓰는 명령어
	 * - static으로 선언한 필드와 메서드는 다른 인스턴스에 공유가 된다.
	 * - 또한 static으로 선언된 필드나 메서드는 인스턴스 선언 없이 사용이 가능하다.
	 * - static으로 선언된 필드나 메서드는 메모리 클래스 영역에 선언되게 된다.
	 * ※ static 영역을 통해 선언된 필드 값은 갱신하면 할수록 메모리를 더 잡아먹게 되고 나중에는 memory의 오버플로우를
	 *   발생시키게 되므로 static을 통해 가변 변수를 사용하거나 static을 남용해서 쓰는 것은 금물이다.
	 * */

	static int a = 3;
	// 스태틱 변수 선언
		   int b = 4;
    // 일반 변수 선언
		   
	public static void method1() {
	// 스태틱 메소드 선언
		System.out.println("method1 실행");
	}
	
	public void method2() {
	// 일반 메소드 선언
		System.out.println("method2 실행");
	}
	
	public static void main(String[] args) {
		Ex01Static st1 = new Ex01Static();
		st1.b = 8;
		Ex01Static st2 = new Ex01Static();
		st2.b = 12;
	
		System.out.println(st1.b);
		System.out.println(st2.b);
		// 일반 변수는 값을 각각 다르게 산출
		
		st1.a = 7;
		System.out.println(st1.a);
		System.out.println(st2.a);
		// 스태틱 변수는 변수의 값을 모두 공유
		
		st1.method1();
		Ex01Static.method1();
		
		method1();
		// 스태틱 메서드는 그냥 호출가능
		
//		emthod2(); -> 일반 메소드는 error발생(반드시 인스턴스화 해줘야함)
	}
}
