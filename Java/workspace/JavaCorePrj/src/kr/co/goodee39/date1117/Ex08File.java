package kr.co.goodee39.date1117;

import java.io.File;
import java.io.IOException;

public class Ex08File {
	public static void main(String[] args) throws IOException {
		File f = new File("C:/ABC/aaa.txt");
		// 해당 파일이 있는지 없는지를 검사
		System.out.println(f.exists());
		
		if(!f.exists()) {
			// 파일이 없을 경우
			try {
				f.createNewFile();
				// 파일을 생성하는 로직
				// 반드시 생성해야한다는 로직으로 예외처리를 해줘야하만함				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 파일인지 아닌지
		System.out.println("isfile : "+f.isFile());
		// 경로 확인
		System.out.println("절대경로 : "+f.getAbsolutePath());
		System.out.println("절대경로 : "+f.getCanonicalPath());
		System.out.println("경로 : "+f.getPath());
		// 파일 이름
		System.out.println("파일 이름 : "+f.getName());
		// 파일 이름을 제외한 상위 경로
		System.out.println("파일 이름 : "+f.getParent());
	}
	
}
