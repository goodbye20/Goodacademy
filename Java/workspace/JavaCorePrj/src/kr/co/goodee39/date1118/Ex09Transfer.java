package kr.co.goodee39.date1118;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

public class Ex09Transfer {
	public static void main(String[] args) throws Exception{
		FileChannel fcFrom = new FileInputStream("C:/ABC/aaa.txt").getChannel();
		FileChannel fcTo= new FileOutputStream("C:/ABC/444.txt").getChannel();
		fcFrom.transferTo(0, fcFrom.size(), fcTo);
		// 용량의 맨처음(0), fcFrom의 size만큼, fcTo로
		fcTo.transferFrom(fcFrom, 0, fcFrom.size());
		//fcFrom으로 부터, 용량의 맨처음부터, fcFrom사이즈만큼 전송
	}
}
