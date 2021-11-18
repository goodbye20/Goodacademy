package kr.co.goodee39.date1118;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;

public class Ex01Path {
	public static void main(String[] args) {
		// 경로를 알아내는 법
		Path path = Paths.get("C:ABC/111.txt");
		
		System.out.println("[파일명] "+path.getFileName());
		System.out.println("[부모 디렉터리 명] "+path.getParent().getFileName());
		System.out.println("중첩 경로 수 "+path.getNameCount());
		
		System.out.println();
		for(int i=0; i < path.getNameCount(); i++) {
			// 인덱스 값을 통해 접근가능.
			System.out.println(path.getName(i));
		}
		
		System.out.println();
		Iterator<Path> iterator = path.iterator();
		// 이러테이터를 통해 Path(경로)를 알아내는 법
		while(iterator.hasNext()) {
			Path temp = iterator.next();
			System.out.println(temp.getFileName());
		}
	}
}
