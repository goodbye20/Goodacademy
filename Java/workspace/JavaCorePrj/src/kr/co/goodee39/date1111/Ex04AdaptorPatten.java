package kr.co.goodee39.date1111;

public class Ex04AdaptorPatten {
	public static void main(String[] args) {
		CModule module1 = new CMouduleImpl();
		Board(module1);
		
		System.out.println("------------------------");
		
		CModule module2 = new SModuleAdapter(new SModuleImpl());
		Board(module2);
	}
	
	public static void Board(CModule cModule) {
		cModule.getList();
		cModule.getItem();
	}
}
