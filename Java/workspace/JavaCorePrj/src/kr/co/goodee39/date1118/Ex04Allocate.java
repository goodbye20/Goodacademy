package kr.co.goodee39.date1118;

import java.nio.ByteBuffer;

public class Ex04Allocate {
	public static void main(String[] args) {
		// 다이렉트 버퍼를 생성하기 이한 유일한 방법(allocate)
		ByteBuffer bb = ByteBuffer.allocate(100);
		System.out.println("저장용량 : "+bb.capacity()+" 바이트");
	}
}
