package kr.co.goodee39.date1116;

import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class Ex06Function {
	// Function
	/*
	 * - 매개변수와 리턴값이 있는 applyXXX() 메소드를 가지고 있는 람다 인터페이스
	 * - 매개변숭놔 리턴값을 매핑할 때 사용한다.
	 */
	public static List<Student> list = Arrays.asList(
				new Student("홍길동", 80, 70),
				new Student("임꺽정",55 , 43)
			);
	public static void printString(Function<Student, String> fn) {
		for (Student student : list) {
			System.out.print(fn.apply(student) + " ");
		}System.out.println();
	}
	public static void printInt(ToIntFunction<Student> fn) {
		for (Student student : list) {
			System.out.print(fn.applyAsInt(student) + " ");
		}System.out.println();
	}
	
	public static void main(String[] args) {
		System.out.println("[학생 이름]");
		printString(t -> t.getName());
		
		System.out.println("[영어 점수]");
		printInt(t -> t.getEngScore());
		
		System.out.println("[수학 점수]");
		printInt(t -> t.getMathScore());
	}

}
