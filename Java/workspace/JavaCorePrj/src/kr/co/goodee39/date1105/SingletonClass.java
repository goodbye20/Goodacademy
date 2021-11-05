package kr.co.goodee39.date1105;

public class SingletonClass {
	private static TargetClass target;
	
	public SingletonClass() {
		target = new TargetClass();
	}
	
	public TargetClass getTargetClass() {
		if(target == null) target = new TargetClass();
		
		return target;
	}
	// 참조자가 여러개가 들어와도 하나의 타겟클래스만을 생성하고서 계속 참조 할수 있도록하는 로직
	// 불필요한 생성, 삭제 반복을 없앨 수 있음.
}
