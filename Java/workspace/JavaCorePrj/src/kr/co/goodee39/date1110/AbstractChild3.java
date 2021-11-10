package kr.co.goodee39.date1110;

public class AbstractChild3 extends AbstractParent3{

	@Override
	public void method4() {
		System.out.println("최상위 클래스부터 선언되지 않은 모든 추상메서드를 오버라이딩 해야만 한다.");
	}

	@Override
	public void method2() {
		System.out.println("추상메서드를 상속받는 최하위 클래스는");
		
	}

}
