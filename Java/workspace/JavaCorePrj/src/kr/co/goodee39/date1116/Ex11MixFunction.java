package kr.co.goodee39.date1116;

import java.util.function.Function;

public class Ex11MixFunction {
	public static void main(String[] args) {
		
	Function<Member, Address>functionA;
	Function<Address, String>functionB;
	Function<Member, String>functionAB;
	String city;
	
	// addrss속 country와 city 중 city만 뽑아내고 싶을때
	functionA = m -> m.getAddress();
	functionB = m -> m.getCity();
	
	functionAB = functionA.andThen(functionB);
	city = functionAB.apply(
				new Member("홍길동", "hong", new Address("한국","서울")));
			System.out.println("거주 도시 : "+city);
			
	functionAB = functionB.compose(functionA);
	// andThen 과 합치는 순서만 다를뿐 똑같다.
	city = functionAB.apply(
			new Member("홍길동", "hong", new Address("한국","서울")));
	System.out.println("거주 도시 : "+city);
			
	}
}
