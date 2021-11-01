package kr.co.goodee39.date1101;

import java.util.Random;

public class Ex04Random {

	public static void main(String[] args) {
		double d = Math.random();
		System.out.println(d);
		
		int i = (int)(Math.random()*6)+1;
		// 1~6 사이의 랜덤한 숫자 값을 받기
		// 0.0001 ~ 0.9999 *6 = 0.0001 ~ 0.9999 {(int)} => 0 ~ 5  {+1} => 1 ~ 6 
		System.out.println(i);
		
		Random ran = new Random();
		
		System.out.println(ran.nextDouble());
		// 0.99999 ~ 0.99999 랜덤 출력
		System.out.println(ran.nextInt());
		// 정수형 최소부터 최대값 랜덤 출력
		System.out.println(ran.nextInt(5));
		// 정수형 int의 0부터 지정한 범위만큼 출력
		System.out.println(ran.nextInt(5)+3);
		// 정수형 최소값을 지정해 주고 싶다면 하기를 추가해주면 손쉽게 지정할 수 있을 것이다.
		System.out.println(ran.nextBoolean());
	}

}
