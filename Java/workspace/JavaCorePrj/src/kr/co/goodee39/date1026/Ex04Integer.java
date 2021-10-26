package kr.co.goodee39.date1026;

public class Ex04Integer {

	public static void main(String[] args) {
		// 1바이트
		byte v1 = 1;
		// 2바이트
		short v2 = 2;
		// 3바이트
		int v3 = 3;
		// 4바이트
		long v4 = 4L;
		System.out.println("byte : " + v1);
		System.out.println("byte : " + v2);
		System.out.println("byte : " + v3);
		System.out.println("byte : " + v4);
		// 정수형
		/*
		 * - 정수를 받는 변수형
		 * - 정수형에는 모두 4개의 자료형이 존재한다(byte, short, int, long)
		 * - 각각의 크기는 byte가 가장 작고 long이 가장 크다.
		 * - 10진수 외에도 16진수 혹은 8진수로도 변수에 저장이 가능하다.
		 * - 정수형 변수들은 자신이 저장할 수 있는 범위를 넘어서면 에러가 난다. 강제 형변환까지 병행할 경우
		 *   의도치 않는 수가 나온다.
		 * - long형은 인자 뒤에 L값을 넣어야 하지만 자동 형변환으로 인해 넣지 않아도 크게 관계가 없다.
		 * - 정수형의 기본 타입은 int형이다.
		 * */
	}

}
