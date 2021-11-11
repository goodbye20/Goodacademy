package kr.co.goodee39.date1111;

public class FinanceBoard  implements SystemMode{

	@Override
	public void getlist() {
		System.out.println("재무재표 보드리스트 출력");
	}

	@Override
	public void selectItem() {
		System.out.println("재무재표 아이템 확인");
	}

	@Override
	public void updateList() {
		System.out.println("재무재표 리스트 갱신");
	}

}
