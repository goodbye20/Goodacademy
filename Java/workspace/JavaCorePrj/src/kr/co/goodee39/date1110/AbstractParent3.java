package kr.co.goodee39.date1110;

public abstract class AbstractParent3 extends AbstractParent2{

	public void method3() {
		System.out.println("추상메서드 끼리의 상속은 오버라이딩이 강제되지 않음");
	}
	
	public abstract void method4();
}
