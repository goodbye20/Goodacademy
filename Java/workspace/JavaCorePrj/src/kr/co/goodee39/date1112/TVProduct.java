package kr.co.goodee39.date1112;

public class TVProduct extends TV {
	public static void main(String[] args) {
	TVProduct tv = new TVProduct();

	if(tv instanceof TV) {
		System.out.println("이 객체는 TV를 상속받은 객체입니다.");
		}
	}
}
