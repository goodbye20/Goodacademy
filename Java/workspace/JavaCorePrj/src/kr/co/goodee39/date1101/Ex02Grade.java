package kr.co.goodee39.date1101;

import java.util.Scanner;

public class Ex02Grade {

	public static void main(String[] args) {
		// 학점 계산기
		/*
		 * - ㅣ입력된 정수 값 1~100 사이에 값을 입력 받음
		 * */
		Scanner scan = new Scanner(System.in);
		System.out.println("점수를 입력하세요.");
		int score = scan.nextInt();
		
		if(score >= 90) {
			System.out.println("A학점 입니다.");
		} else if(score >= 80) {
			System.out.println("B학점 입니다.");
		} else if(score >= 70) {
			System.out.println("C학점 입니다.");
		} else if(score >= 60) {
			System.out.println("D학점 입니다.");	
		} else {
			System.out.println("F학점 입니다.");
		}
	}

}
