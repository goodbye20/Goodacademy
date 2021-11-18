package kr.co.goodee39.date1118;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class Ex08FileCopyChannel {
	public static void main(String[] args) throws IOException {
		Path from = Paths.get("C:/ABC/111.txt");
		Path to = Paths.get("C:/ABC/333.txt");
		
		FileChannel fcFrom = FileChannel.open(from, StandardOpenOption.READ);
		FileChannel fcTo = FileChannel.open(to, StandardOpenOption.WRITE);
		
		ByteBuffer buffer = ByteBuffer.allocate(100);
		int byteCount;
		while(true) {
			buffer.clear();
			// 버퍼를 우선 초기화
			byteCount = fcFrom.read(buffer);
			if(byteCount == -1) break;
			// 무언가 하나라도 읽히면 값이 -1아님 결국 -1(읽을값이 없을때)가 될때 까지 색인하다가 종료
			buffer.flip();
			fcTo.write(buffer);
		}
		fcFrom.close();
		fcTo.close();
		System.out.println("파일 복사 성공");
	}
}
