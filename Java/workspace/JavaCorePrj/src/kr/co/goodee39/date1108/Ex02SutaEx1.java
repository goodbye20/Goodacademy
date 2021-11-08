package kr.co.goodee39.date1108;

public class Ex02SutaEx1 {

	public static void main(String[] args) {
		SutaDeck deck = new SutaDeck();
		
		
		System.out.println(deck.pick(0));
		System.out.println(deck.pick());
		deck.shuffle();
		
//		for(int i = 0; i < deck.cards.length; i++) {
//			System.out.println(deck.cards[i] + ",");
//		}
		
		for(int i = 0; i < deck.cards.size(); i++) {
			System.out.print(deck.cards.get(i) + ",");
		}

		System.out.println();
		System.out.println(deck.pick(0));
	}

}
