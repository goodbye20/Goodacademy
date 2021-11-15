package kr.co.goodee39.date1115;

import java.util.ArrayList;
import java.util.List;

public class Ex01ArrayList {
	// List
	/*
	 * - 연속적인 테이터를 담고자 하는 자료구조 공간
	 * - 각 테이터는 배열처럼 인덱스라는 주소값을 가지고 접근이 가능하다.
	 * - 데이터를 추가할 때나 삭제될 때 List의 크기가 유동적으로 늘어났다 줄어든다.
	 * - List를 통해 데이터의 추가/삭제가 일어날 경우 기존 데이터들이 빈 공간을 메꿔 중간의 데이터들의 구멍이 생기는 것을 방지한다.
	 * - 모든 리스트를 순차적으로 색인할 겨웅 사용하는 대표적인 콜렉션 중 하나
	 * - 종류로는 ArrayList, LinkedList, Stack 등이 있다.
	 * 
	 */
	public static void main(String[] args) {
		
//	ArrayList<Integer> list = new ArrayList<Integer>();
	List<Integer> list = new ArrayList<Integer>();
	
	list.add(1);
	list.add(2);
	list.add(3);
	list.add(4);
	list.add(5);
	
	System.out.println(list.toString());
	
	System.out.println(list.get(2));
	
	list.set(3, 10);
	
	System.out.println(list);
	
	list.remove(1);
	
	System.out.println(list);
	// list는 배열과 다르게 중간의 값을 제거해줘도 유연하게 빈공간을 채워 정렬된다.
	// 아마 일반적인 배열이었다면 제거시킨 인덱스의 값이 출력시 null이 출력 되었을 것이다.
	}
}
