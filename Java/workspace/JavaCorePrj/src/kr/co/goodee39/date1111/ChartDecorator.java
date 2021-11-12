package kr.co.goodee39.date1111;

public class ChartDecorator implements Chart {
	// 여기서 차트를 상속받아주는게 핵심
	
	private Chart chart;
	
	public ChartDecorator(Chart chart) {
		this.chart = chart;
	}
	
	
	@Override
	public String decorator() {
		return chart.decorator();
	}

}
