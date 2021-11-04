package kr.co.goodee39.date1104;

public class Ex01StackNHeap {
	
	public void init() {
		{
		Ex01StackNHeap snh2 = new Ex01StackNHeap();
		snh2.method1();
		}
		System.out.println("이것은 init 메소드 입니다.");
	}
	public void method1() {
		int a = 1;
		int b = 2;
		System.out.println(a + b);
	}
	public static void main(String[] args) {
		Ex01StackNHeap snh1 = new Ex01StackNHeap();
		snh1.init();
		
	}
}
