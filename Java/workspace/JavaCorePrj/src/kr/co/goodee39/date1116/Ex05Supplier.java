package kr.co.goodee39.date1116;

import java.util.function.IntSupplier;

public class Ex05Supplier {
	// Suppier : 매개변수가 없고 리턴값이 있는 getXXX() 메소드를 가진 람다식
	public static void main(String[] args) {
		IntSupplier s1 = () -> (int)(Math.random()*6)+1;
		
		int num = s1.getAsInt();
		System.out.println("주사위의 값은 : "+ num);
	}
}
