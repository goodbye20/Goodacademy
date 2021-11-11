package kr.co.goodee39.date1104;

public class Ex06This {
	// This
	
	/*
	 * - 객체 나 자신을 가리킬 때 쓰는 예약어
	 * - 같은 객체 내에서 존재하는 필드나 메서드를 사용할 경우 사용하는 키워드
	 * - 클래스 내의 메서드에서 해당 클레스에 존재하는 다른 메서드 혹은 필드에 접근할 경우 this. 를 활용하여 접근이 가능하다.
	 * - 단 클래스 내의 메서드에서 해당 필드나 메서드를 접근하기 위해 this.은 생략이 가능하다.
	 * - this. 를 쓸 경우 강제적으로 내 클래스 안의 필드 혹은 메서드를 가르키는 효과가 있으므로 외부에서
	 *   받아온 매개변수의 이름이 필으의 이름과 같을 시 시작적으로 구분을 해줄 수 있다.
	 * - 생성자를 접근할 경우 this.(생성자에서 선언한 매개변수) 를 활용하여 접근할 수 있다.
	 * - 단 생성자에 접근할 경우 생성자 내에서만 접근이 가능하며 생성자는 다른 필드나 메서드의 접근 또한 가능하지만, 일반 메서드에서
	 *   생성자의 접근은 불가능하다.
	 * */
		int a;
		String b;
		
		public Ex06This() {
			this(3,"cdf");
			// 생성자에서 생성자를 호출할때 단순히 this로 호출할 수 있다.
		}
		
		public Ex06This(int a, String b) {
			this.a = a;
			this.b = b;
		}
		
		public void method1() {
			a = 10; // 사실 앞에 this.가 생략되어 있음
			this.b = "abc"; // 그냥 b = "abc"; 해줘도 이상 없이 정상작동
//			this.method2();
			method2();
		
		}
		
		public void method2() {
			// 단순 출력 메소드
			System.out.println("int a : "+a);
			System.out.println("String b : "+b);
		}
		
		public void method3(int a, String b) {
			// this를 일부로 꼭 사용해주는 경우가 있는데
			// 같은 값을 부여하며 초기화할 경우 가독성을 위해 this를 붙여준다.
			this.a = a;
			this.b = b;
		}
		
		public void method4() {
//          생성자에서 생성자는 접근가능, 생성자에서 필드, 메소드 또한 접근 가능.
			
		// 하지만 
			
//			this(); 메소드에서 생성자를 호출하려했으나 -> error
			
//			=> 생성자는 처음 생성시에만 잠시 생성됬다가 소멸하기 때문에 메소드가 호출됬을 때엔
//			이미 생성자는 소멸하고 없기 때문에 error가 발생
		}
		public static void main(String[] args) {
			Ex06This ex = new Ex06This();
			ex.method2();
			System.out.println("구분선 ==========");
			ex.method1();
	}
}
