package kr.co.goodee39.date1117;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex01TryCatch {

	public static void main(String[] args) {
		try {
			Scanner scan = new Scanner(System.in);
			int n = scan.nextInt();
			System.out.println(n);
		}catch(InputMismatchException e) {
			System.out.println("에러가 발생했습니다.");
		}catch(NullPointerException e2) {
			System.out.println("데이터가 널입니다.");
		}catch(ArrayIndexOutOfBoundsException e3) {
			System.out.println("참조하고자 하는 배열의 영역을 벗어났습니다.");
		}catch(Exception e4) {
			System.out.println("뭔진 모르겠지만 아무튼 예외 발생함");
		}
	}

}