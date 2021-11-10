package kr.co.goodee39.date1110;

public class Ex01Abstract {
	public static void main(String[] args) {
		// 추상클래스
		/*
		 * - 일부 메서드를 기능 없이 선언할 수 있는 클래스
		 * - 클래스의 일부 기능을 정의하지 않고 자식 클래스가 오버라이드 하여 정의하도록 할 경우 선언하는 클래스
		 * - 클래스의 재사용성과 확장성을 위해 사용되는 경우가 많다.
		 * - 추상클래스는 클래스 선언부 앞에 abstract 명령어를 붙여 선언한다.
		 * - 추상클래스는 일반 클래스 처럼 사용이 가능하지만 메서드 중 일부를 추상 메서드로 선언할 경우 메서드의 리턴타입 앞에
		 *   abstract를 붙여 메서드의 선언만 할 수 있다.
		 * - 위와 같은 메서드를 추상 메서드라고 하며 이 추상 메서드는 자식 클래스에서 상속 받을 시 무조건 강제 override를 해야만 한다.
		 * - 추상클래스에서 추상클래스로의 상속을 받을 때는 추상 클래스의 메서드를 구현하지 않아도 상관이 없다.
		 * - 다만 맨 하위 클래스에서는 모든 상위 추상 클래스의 구현되지 않은 메서드들을 전부 구현하여야 한다.
		 * - 추상 클래스로는 인스턴스 생성이 불가능하지만 추상 클래스로 인스턴스 선언 시 추상 메서드 부분에 대한 기능을 
		 *   다이렉트로 구현할 경우 인스턴스의 선언이 가능하다.
		 * */
		AbstractChild hammer = new AbstractChild();
			hammer.method1();
			hammer.method2();
			
		AbstractChild2 spike = new AbstractChild2();
			spike.method1();
			spike.method2();
			
		AbstractParent ap = new AbstractParent() {
			
			@Override
			public void method2() {
				System.out.println("추상클래스는 인스턴스화가 불가능하지만");
				System.out.println("같은 메서드를 위와 같이 선언 및 구현해주면 가능");
			}
		};
		ap.method1();
		ap.method2();
	}
}
