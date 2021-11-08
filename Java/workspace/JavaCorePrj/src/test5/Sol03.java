package test5;

import java.util.Scanner;

public class Sol03 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("이름을 입력하세요: ");
		String name = scanner.nextLine();
		System.out.print("주민번호 앞 6자리를 입력하세요: ");
		String fNum = scanner.nextLine();
		System.out.print("전화번호를 입력하세요: ");
		String tel = scanner.nextLine();
		System.out.println();
		System.out.println("이름: " + name);
		System.out.println("주민번호 앞 6자리: " + fNum);
		System.out.println("전화번호: " + tel);
		}
	
	}
