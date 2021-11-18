package kr.co.goodee39.date1118;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class Ex07ChannelRead {
	public static void main(String[] args) throws IOException {
		Path path = Paths.get("C:/ABC/AAA/222.txt");
		
		FileChannel fc = FileChannel.open(path, StandardOpenOption.READ);
		ByteBuffer buffer = ByteBuffer.allocate(100);
		Charset cs = Charset.defaultCharset();
		String data = " ";
		int byteCount;
		
		while(true) {
			byteCount = fc.read(buffer);
			if(byteCount == -1)break;
			// 무언가 하나라도 읽히면 값이 -1아님 결국 -1(읽을값이 없을때)가 될때 까지 색인하다가 종료
			buffer.flip();
			data += cs.decode(buffer).toString();
			buffer.clear();	
		}
		
		fc.close();
		System.out.println("bbb.txt : "+data);
	}
}
