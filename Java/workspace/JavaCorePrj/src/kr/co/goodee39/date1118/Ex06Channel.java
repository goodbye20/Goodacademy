package kr.co.goodee39.date1118;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class Ex06Channel {
	public static void main(String[] args) throws IOException {
		Path path = Paths.get("C:/ABC/AAA/222.txt");
		
		FileChannel fc = FileChannel.open(path, StandardOpenOption.CREATE, StandardOpenOption.WRITE);
		
		String data = "안녕하세요";
		Charset cs = Charset.defaultCharset();
		ByteBuffer bb = cs.encode(data);
		// 인코딩 해주는 작업
		
		int byteCount = fc.write(bb);
		System.out.println("bbb.txt : " +byteCount);
		
		fc.close();
		// 채널을 항상 열었으면 닫아준다.
	}
}
