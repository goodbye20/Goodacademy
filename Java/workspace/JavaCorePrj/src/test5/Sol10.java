package test5;

import java.util.Scanner;

public class Sol10 {
	public static void main(String[] args) {
		boolean run = true;
		int balance = 0;
		Scanner scanner = new Scanner(System.in);

		while (run) {
			System.out.println("-------------");
			System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료|");
			System.out.println("-------------");
			System.out.println("선택>");

			int selNum = Integer.parseInt(scanner.nextLine());
			if (selNum == 1) {
				System.out.println("예금액>");
				balance += Integer.parseInt(scanner.nextLine());
			} else if (selNum == 2) {
				System.out.println("출금액>");
				balance -= Integer.parseInt(scanner.nextLine());;
			} else if (selNum == 3) {
				System.out.println(balance);
			} else if (selNum == 4) {
				run = false;
			} else {
				System.out.println("선택지 선택 혹은 4를 입력하여 종료 해주세요");
			}
		}
		System.out.println("프로그램 종료.");
	}
}
