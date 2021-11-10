package kr.co.goodee39.date1110;

public class Ex05SpecialMethod1 implements SampleInterface2{
	public static void main(String[] args) {
		Ex05SpecialMethod1 sm = new Ex05SpecialMethod1();
		sm.method1();

		// SampleInterface2.method1(); -> error
		// default 메서드는 직접적인 인터페이스에 접근해서 사용불가
		// 반드시 상속받아서만 사용 가능
		
		
//		sm.method2(); -> error
		SampleInterface2.method2();
		// static 메서는 상속받아서는 사용 불가
		// static 메서드는 직접적인 인터페이스에 접근해서만 사용 가능
	}
}
