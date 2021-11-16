package kr.co.goodee39.date1116;

public class Ex01InnerClass {
	class B { // 인스턴스 클래스
		public B() {}
		static int field2;
		int field1;
		void method1() {}
		static void method2() {}
	}
	
	static class C { // 스태틱 클래스
		public C() {}
		static int field1;
		int field2;
		static void method1() {}
		void method2() {}
	}
	
	public void method1() {
		class D { // 내부 클래스
			static int field1;
			int field2;
			static void method1() {}
			void method2() {}
		}
		D d = new D();
		d.field2 = 4;
		d.method1();
		// 위와 같이 내부에만 생성가능
	}
	
	public static void main(String[] args) {
		Ex01InnerClass ex = new Ex01InnerClass();
		Ex01InnerClass.B b = ex.new B();
		// 내부 메서드 접근법
		b.field1 = 1;
		b.method1();
		Ex01InnerClass.B.field2 = 2;
		Ex01InnerClass.B.method2();
		
	}

}
