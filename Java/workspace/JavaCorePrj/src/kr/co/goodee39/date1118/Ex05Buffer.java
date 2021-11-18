package kr.co.goodee39.date1118;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public class Ex05Buffer {
	public static void main(String[] args) {
		System.out.println("[8바이트 크기로 버퍼 생성]");
		ByteBuffer buffer = ByteBuffer.allocate(8);
		printState(buffer);
		
		buffer.put((byte)10);
		buffer.put((byte)11);
		System.out.println("[2바이트 저장 후]");
		// 10, 11 이라는 값들을 각각 넣어줌.
		// 그러면서 1바이트 씩 영역을 차지하여 그만큼 postion이 밀려남.
		printState(buffer);
		
		buffer.put((byte)12);
		buffer.put((byte)13);
		buffer.put((byte)14);
		System.out.println("[+3바이트 저장 후]");
		printState(buffer);
		
		// flip() : limit가 postion으로 position이 0으로 이동
		buffer.flip();
		System.out.println("filp() 실행 후");
		printState(buffer);
		
		byte[] byte1 = new byte[3];
		// 배열을 선언하고 여러개의 값을 같이 넣어줌
		buffer.get(byte1);
		for(byte b : byte1) {
		System.out.print(b+ " ");
		
		
		}
		System.out.println("");
		printState(buffer);
		
		
		buffer.mark();
		System.out.println("---------------------[현재 위치를 마크해놓음]");
	
		// 2바이트 읽기
		byte[] byte2 = new byte[2];
		buffer.get(byte2);
		for(byte b : byte2) {
			System.out.print(b+ " ");
		}
		System.out.println("");
		printState(buffer);
		
		
		// reset 실행
		buffer.reset();
		System.out.println("[position reset 후]");
		printState(buffer);
		// 다시 읽기
		byte[] byte3 = new byte[2];
		buffer.get(byte3);
		for(byte b : byte3) {
			System.out.print(b+ " ");
		}
	}
	public static void printState(Buffer buffer) {
		System.out.print("\tpostion : "+buffer.position()+ ", ");
		System.out.print("\tlimit : "+buffer.limit()+ ", ");
		System.out.println("\tcapacity : "+buffer.capacity()+ ", ");
	}
}
