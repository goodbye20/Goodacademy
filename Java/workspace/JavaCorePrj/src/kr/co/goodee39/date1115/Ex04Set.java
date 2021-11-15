package kr.co.goodee39.date1115;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class Ex04Set {
	// Set
	/*
	 * - 데이터가 중복되지 않으며 순서가 없는 데이터를 관리할 때 사용하는 콜렉션
	 * - 리스트 하고는 달리 인덱스를 통해 접근할 수 없다.
	 * - 데이터를 순차적으로 접근하기 위해서 foreach 혹은 iterator를 통해 접근해야한다.
	 * - Set은 동일 데이터를 넣을 시 false를 리턴하고 해당 데이터를 드랍한다.
	 * - 데이터의 중복을 불허하는 점에서 유니크한 데이터만 저장/관리가 가능하다는 장점이 있다.
	 * - Set의 대표적인 클래스로는 HashSet, TreeSet 등이 있다.
	 */
	public static void main(String[] args) {
		Set<String> set1 = new HashSet<String>();
		
		set1.add("bbb");
		set1.add("aaa");
		set1.add("ddd");
		set1.add("eee");
		set1.add("ccc");
		
		System.out.println("bbb".hashCode());
		System.out.println("aaa".hashCode());
		System.out.println("ccc".hashCode());
		
		System.out.println(set1);
		
		System.out.println("-----------");
		
		set1.add("ccc");
		
		Set<String> set2 = new TreeSet<String>();
		
		set2.add("bbb");
		set2.add("aaa");
		set2.add("ddd");
		set2.add("eee");
		set2.add("ccc");
		
		
		System.out.println(set2);
		System.out.println(set2.size());
		
		System.out.println(set2.remove("ddd"));
		System.out.println(set2);
	}
}
