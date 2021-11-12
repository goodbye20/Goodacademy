package kr.co.goodee39.date1112;

public class Ex03Generic {
	public static void main(String[] args) {
		Box<String>box1 = new Box<String>();
		box1.setT("hello");
		System.out.println(box1.getT());
		
//		Box<int> box2 = new Box<int>(); // error 제네딕 타입은 반드시 참조형으로
		Box<Integer> box2 = new Box<Integer>();
		box2.setT(10);
		System.out.println(box2.getT());
		
		Product<String, Integer> product = new Product<String, Integer>();
		// 한개만 이 아닌 복수개로도 설정 할 수 있다.
		product.setType("A타입");
		product.setModel(1);
		
		System.out.println("타입 : "+product.getType());
		System.out.println("모델 : "+product.getModel());
		
		// Product<String> product1 = new Product<String>(); // error
		
		System.out.println("----------------");
		Ex03Generic ex = new Ex03Generic();
		ex.printBox(box2);
	}
		public <T> void printBox(Box<T> box) {
			// 메서드도 제데딕 타입으로 선언해서 사용가능
			// 메서드의 매개변수(Box box) 혹은 리턴타입이 <T>를 물고 있어야 의미가 있음
			System.out.println(box.getT());
	}
		public <T, M> void printProduct(Product<T,M> product) {
			System.out.println(product.getType());
			System.out.println(product.getModel());
		}
		
		public <T extends Number> int compare(T t1, T t2) {
			// Number를 상속시켜줌으로써 제네딕의 범위를 숫자로 축소
			double v1 = t1.doubleValue();
			double v2 = t2.doubleValue();
			return Double.compare(v1, v2);
		}
}
