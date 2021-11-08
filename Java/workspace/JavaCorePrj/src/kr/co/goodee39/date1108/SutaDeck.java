package kr.co.goodee39.date1108;

import java.util.ArrayList;

public class SutaDeck {
	final int CARD_NUM = 20;
	// 상수 선언 방식
//	SutaCard[] cards = new SutaCard[CARD_NUM];
	// 카드들의 비어있는 인스턴스만 생성됨(데이터를 넣어줘야함)
	// 배열의 약점 = 값들이 변화(추가, 삭제, 변경)에 대응이 불가
	ArrayList<SutaCard> cards = new ArrayList<SutaCard>();
	// <참조형>으로 선언해줘야함
	ArrayList<Integer> ints = new ArrayList<Integer>();
	
	
	public SutaDeck() {
//		for(int i = 0; i < cards.length; i++) {
		// 배열 방식
		for(int i = 0; i < CARD_NUM; i++) {
			int num = i % 10 + 1;
//			boolean isKwang = (i < 10)&&(num==1|num==3|num==8);
			boolean isKwang = (i==0||i==2||i==7);
			// 첫번째 1~10의  1,3,8 은 광으로 주는 로직 2가지
			
//			cards[i] = new SutaCard(num, isKwang);
			// 배열 방식
			cards.add(new SutaCard(num, isKwang));
			// num, 광을 하나씩 list(콜렉션)에 추가
		}
	}
	public void shuffle() {
//		for(int i = 0; i < cards.length; i++) {
		// 배열 방식
		for(int i = 0; i < CARD_NUM; i++) {
			int j = (int)(Math.random()*CARD_NUM);
			
//			SutaCard tmp = cards[i];
//			cards[i] = cards[j];
//			cards[j] = tmp;
			// 배열 방식
			SutaCard tmp = cards.get(i);
			cards.set(i, cards.get(j));
			cards.set(j, tmp);
		}
	}
	
	// pick -> 지정된 위치의 섯다 카드를 반환
	public SutaCard pick(int index) {
		if(index < 0 || index >= CARD_NUM) return null;
//		return cards[index];
		//배열 방식
		return cards.get(index);
	}
	
	public SutaCard pick() {
		int index = (int)(Math.random()*CARD_NUM);
		return pick(index);
	}
}
