package kr.co.goodee39.date1115;

import java.util.HashSet;
import java.util.Set;

public class Ex06SetIterator {
	public static void main(String[] args) {
		Set<Student> set = new HashSet<Student>();
		
		set.add(new Student("마동석", 10));
		set.add(new Student("김종국", 20));
		set.add(new Student("이정재", 30));
		set.add(new Student("이순재", 40));
		set.add(new Student("이나영", 50));
		
		java.util.Iterator<Student> iterator = set.iterator();
		
		while(iterator.hasNext()) {
			Student std = iterator.next();		
		System.out.println("이름 : "+std.getName());
		System.out.println("나이 : "+std.getAge());
		System.out.println("-------------");
		}
	}
}
