package kr.co.goodee39.date1102;

public class Ex02Sort {
	public static void main(String[] args) {
		int[] a = { 2, 3, 5, 1, 4 };
		int temp = a[0];

		// 1.a의 최소값을 구하라.
		for (int i = 1; i < a.length; i++) {	
			if (a[i] < temp) {
				temp = a[i];
			}
		}
		System.out.println(temp);
		// 2.a의 오름차순으로 sort시켜라.
		
		for (int i = a.length-1; i>0; i--) {
			for (int j=0; j < i; j++) {
				if(a[j] > a[j+1]) {
					temp = a[j];
					a[j] = a[j+1];
					a[j+1] = temp;
				}
			}
		}
		for (int i : a) {
			System.out.println(i);
		}
	}
}
