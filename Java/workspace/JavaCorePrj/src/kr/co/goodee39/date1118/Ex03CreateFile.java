package kr.co.goodee39.date1118;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Ex03CreateFile {
	public static void main(String[] args) throws IOException {
		Path path1 = Paths.get("C:/ABC/AAA");
		Path path2 = Paths.get("C:/ABC/AAA/222.txt");
		
		Path path3 = Paths.get("C:/ABC/111.txt");
		Path path4 = Paths.get("C:/ABC/AAA/333.txt");		
		if(Files.notExists(path1))Files.createDirectories(path1);
		// 만약 색인하고자 하는 폴더가 없다면. 생성
		if(Files.notExists(path2))Files.createFile(path2);
		// 만약 색인하고자 하는 파일이 없다면. 생성		
		if(Files.notExists(path4))Files.copy(path3, path4);
		// 파일의 내용을 복사 (sourse, destination)
		if(Files.exists(path4))Files.delete(path4);
		// 색인하는 파일이 있다면 삭제.
		
		
	}
}
