package kr.co.goodee39.date1110;

public interface SampleInterface2 {
	// default 메서드
	// 인터페이스에 추상메서드가 아닌 메서드를 만드는 방법1
	default void method1() {
		System.out.println("method1 호출");
	}
	
	// static 메서드
	// 인터페이스에 추상메서드가 아닌 메서드를 만드는 방법2
	public static void method2() {
		System.out.println("method2 호출");
	}
}
