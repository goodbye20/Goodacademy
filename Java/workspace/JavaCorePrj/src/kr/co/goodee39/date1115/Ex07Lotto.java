package kr.co.goodee39.date1115;

import java.util.Set;
import java.util.TreeSet;

public class Ex07Lotto {
	public static void main(String[] args) {
		Set<Integer> set = new TreeSet<Integer>();
		
		while(set.size() < 6) {
			set.add(((int)(Math.random()*45)+1));
		}
		
		java.util.Iterator<Integer> iterator = set.iterator();
		// println(set)을해도 값이 출력되지만 혹시 리터럴값이 아닌 어떤
		// 예를 들면 객체를 넣고 값을 얻어야할때면 주소값혹은 의도하지 않은 값이 나올수있기 때문에 이터레이터로 출력
		
		while(iterator.hasNext()) {
			System.out.println(iterator.next());
		}
	}
}
