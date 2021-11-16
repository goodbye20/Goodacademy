package kr.co.goodee39.date1116;

import java.util.Arrays;
import java.util.List;
import java.util.function.ToIntFunction;

public class Ex07Function2 {
	public static List<Student> list = Arrays.asList(
			new Student("홍길동", 80, 70),
			new Student("임꺽정",55 , 43)
		);
	
	public static double avg(ToIntFunction<Student> fn) {
		int sum = 0;
		for (Student student : list) {
			sum += fn.applyAsInt(student);
		}
		double avg = (double)sum/list.size();
		return avg;
	}
	
	public static void main(String[] args) {
		double engAvg = avg(s -> s.getEngScore());
		System.out.println("영어 평균 점수 : "+engAvg);
		
		double mathAvg = avg(s -> s.getMathScore());
		System.out.println("수학 평균 점수 : "+mathAvg);

	}

}