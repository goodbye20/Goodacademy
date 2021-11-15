package kr.co.goodee39.date1115;

import java.util.LinkedList;
import java.util.Stack;

public class Ex03ListMethod {
	public static void main(String[] args) {
		Stack<Integer> stack = new Stack<Integer>();
		// ArrayList와 다를바 없지만 데이터를 꺼내는데 있어서 차이가 있다.
		stack.add(1);
		stack.add(2);
		stack.add(3);
		stack.add(4);
		stack.add(5);
		
		System.out.println(stack);
		
		System.out.println(stack.pop());
		
		System.out.println(stack);
		
		System.out.println("-----------");
		
		LinkedList<String> ll = new LinkedList<String>();
		
		ll.add("aaa");
		ll.add("bb");
		ll.add("ccc");
		ll.add("ddd");
		ll.add("ffff");
		
		System.out.println(ll);
		
		ll.addFirst("zzz");
		
		System.out.println(ll);
	}
}
