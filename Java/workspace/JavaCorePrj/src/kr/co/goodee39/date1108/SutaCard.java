package kr.co.goodee39.date1108;

public class SutaCard {
	int num;
	boolean isKwang;

	
	public SutaCard(int num, boolean isKwang) {
		this.num = num;
		this.isKwang = isKwang;
	}


	public SutaCard() {
		// TODO Auto-generated constructor stub
		
	}


	@Override
	public String toString() {
		return num + (isKwang ? "K": "");
	}
	
	
}
