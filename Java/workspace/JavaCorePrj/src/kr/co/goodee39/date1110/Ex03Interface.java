package kr.co.goodee39.date1110;

public class Ex03Interface implements SampleInterface1{
	public int value1 = 5;
	
	public static void main(String[] args) {
		// 인터페이스
		/* - 클래스의 설계를 담당하는 도면 역할을 하는 [기준]
		 * - 인터페이스는 로직을 내부적으로 작성해서 실행시키기 보다 다른 클래스들에 표준을 제공하기 위해 존재하는 데이터이다.
		 * - 인터페이스는 설계의 역할을 담당하며 설계를 통해 인터페이스를 상속받는 클래스들에게 메서드 개발의 기준을 제공한다.
		 * - 또한 인터페이스는 결합도를 낮추고 응집도를 높여 클래스간의 독립성을 크게 향상시키는 역할을 한다.
		 * - 인터페이스는 class 라는 키워드 대신 interface라는 키워드가 존재한다.
		 * - 인터페이스에서 선언되는 필드는 전부 static final 필드가 된다.[상수화]
		 * - 인터페이스에서 선언되는 일반 메서드는 전부 추상 메서드로만 선언이 가능하며 상속받은 클래스에서는 추상 클래스와
		 *   마찬가지로 상속 받는 즉시 해당 추상메서드들을 오버라이드 해서 써야 한다.
		 * - 추상 메서드는 일반 클래스에서 상속 받을 때 implements라는 키워드를 통해 상속을 받을 수 있다.
		 * - 인터페이스에서 인터페이스로의 상속이 이루어질 경우 extends라는 키워드를 통해 상속이 이루어진다.
		 * - 인터페이스는 인터페이스 혹은 클래스에서 상속 시 다중 상속이 가능하다.
		 * - 인터페이스에서 로직을 구현할 수 있는 메서드는 default 메서드와 static 메서드가 존재한다.
		 * - default 메서드는 하위 클래스에서 선언하지 않아도 되는 메서드일 경우 해당 기능을 호출하는 데 있어 불필요한
		 *   에러를 제거하기 위한 목적으로 기본적인 로직을 담아 제공하는 메서드를 의미한다.
		 * - default 메서드를 통해 기본 로직을 인터페이스에 선언하여 하위 클래스들의 상솩 시 불필요한 에러를 사전에
		 *   차단할 수 있다.
		 * - default 메서드는 다른 인스턴스에서 상속을 받은 후에 사용이 가능하다.
		 * - static 메서드 또한 인터페이스에서 사용이 가능하며 static 메서드는 인터페이스를 통한 직접 호출을 통해
		 *   실행이 가능하다.
		 * - static 메서드를 상속받은 클래스의 인스턴스에서 호출은 불가능하다.
		 * */
		Ex03Interface ex = new Ex03Interface();
		ex.method1();
		ex.method2();
		
		System.out.println(SampleInterface1.VALUE_1);
		System.out.println(SampleInterface1.VALUE_2);
	}

	@Override
	public void method1() {
		System.out.println("method1 호출");
	}

	@Override
	public void method2() {
		System.out.println("method2 호출");
		
	}

}
