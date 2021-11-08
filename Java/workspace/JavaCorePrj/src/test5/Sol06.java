package test5;

public class Sol06 {
	public static void main(String[] args) {
		
		while(true) {
			int diceNum1 = (int) (Math.random() * 6) + 1;
			int diceNum2 = (int) (Math.random() * 6) + 1;
			System.out.println("(" + diceNum1 + ", " + diceNum2 + ")");
			
			if ((diceNum1 + diceNum2) == 5) {
			break;
			}
		}
	}
}
