package kr.co.goodee39.date1111;

public class Ex02PolyInter {
	public static void main(String[] args) {
		UserInter1 AirconRemote1 = new AirConditioner();
		AirconRemote1.putStart();
		AirconRemote1.putMode();
		
		UserInter1 AircleanRemote1 = new AirCleaner();
		AircleanRemote1.putStart();
		AircleanRemote1.putMode();
		
		
	}
}
