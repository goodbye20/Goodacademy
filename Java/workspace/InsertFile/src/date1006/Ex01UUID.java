package date1006;

import java.util.UUID;

public class Ex01UUID {
	public static void main(String[] args) {
		// UUID란 고유성이 보장되는 id를 만들기위한 표준규약
		// Universally unique identifier의 약자로서, 정보 식별을 위하여 사용되는 식별자
		// 고유 식별자라고도 불린다.
		for (int i = 0; i < 3; i++) {
			String str = UUID.randomUUID().toString();
			
			System.out.println(str);
		}
	}
}
