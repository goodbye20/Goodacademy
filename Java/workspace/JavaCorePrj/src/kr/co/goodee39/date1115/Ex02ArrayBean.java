package kr.co.goodee39.date1115;

import java.util.ArrayList;
import java.util.List;

public class Ex02ArrayBean {

	public static void main(String[] args) {
//		SampleBean bean1 = new SampleBean();
//		
//		System.out.println(bean1);
//		
		
		List<SampleBean> list = new ArrayList<SampleBean>();
		// 빈 객체를 리스트에 넣어버림
		
		list.add(new SampleBean(1, "aaa"));
		list.add(new SampleBean(2, "bbb"));
		list.add(new SampleBean(3, "ccc"));
		
		for (SampleBean sampleBean : list) {
			System.out.println(sampleBean);
		}
	}
}
