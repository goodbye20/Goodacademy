package kr.co.goodee39.date1117;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;

public class Ex09FileStream {
	public static void main(String[] args) {
		File file = new File("C:/ABC/aaa.txt");
		try {
			FileInputStream fiStream = new FileInputStream(file);
			// 바이트 기반
			int temp1 = 0;
			while((temp1 = fiStream.read())!=-1) {
				// 값을 넣어준 변수(temp)가 -1이 될때 -> 페이즈의 끝까지
				System.out.print((char)temp1);
				// char로 변환시켜줘야 숫자값이 아닌 문자값을 얻을 수 있음
			}
			System.out.println();
			System.out.println("-------");
			
			FileReader fiReader = new FileReader(file);
			// 영어 숫자가 아닌값을 읽기 위해서 바이트 기준인 파일스트림대신
			// 문자 기준인 파일리더를 사용
			int temp2 = 0;
			while((temp2 = fiReader.read())!=-1) {
				// 값을 넣어준 변수(temp)가 -1이 될때 -> 페이즈의 끝까지
				System.out.print((char)temp2);
				// char로 변환시켜줘야 숫자값이 아닌 문자값을 얻을 수 있음
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
