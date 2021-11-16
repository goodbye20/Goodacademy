package kr.co.goodee39.date1116;

import java.util.function.Function;
import java.util.function.IntBinaryOperator;
import java.util.function.ToIntBiFunction;

public class Ex14MethodRef {
	
	public static void main(String[] args) {
		// 메서드에 대한 메서드 참조
		IntBinaryOperator op;
		// 바이너리오퍼레이터도 두개의 인자값을 받아 하나의 결과를 받고
		
//		op = (x,y) -> Calculator.staticMethod(x,y);
		// 스태틱 메소드또한 두개의 인자값을 받아 하나의 결과값을 받기에
		// 아래와 같이 생략하여 간략한 코드로 작성 가능
		op = Calculator :: staticMethod;
		System.out.println("결과1 : "+op.applyAsInt(1, 2));
		
		Calculator obj = new Calculator();
//		op = (x,y) -> obj.instanceMethod(x, y);
		op = obj :: instanceMethod;
		System.out.println("결과2 : "+op.applyAsInt(2, 3));
		
		// 매개변수 상 메서드 참조
		ToIntBiFunction<String, String> fn;
		
//		fn = (a,b) -> a.compareToIgnoreCase(b);
		fn = String :: compareToIgnoreCase;
		
		// 생성자 참조
//		Function<String, Member> fn1 = a -> {return new Member(a);};
		Function<String, Member> fn1 = Member :: new;
	}
}
