package kr.co.goodee39.date1112;

public class ChildProduct1<T,M,C> extends ParentProduct1<T, M>{
	// 자식객체에서 제네릭을 추가하고 싶다면 위와같이 앞에 같이 선언해줘야함.
	private C c;

	public C getC() {
		return c;
	}

	public void setC(C c) {
		this.c = c;
	}
	
	
}
