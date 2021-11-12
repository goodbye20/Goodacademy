package kr.co.goodee39.date1111;

public class SModuleAdapter implements CModule {
	
	SModule SModule;
	
	public SModuleAdapter(SModule SModule) {
		this.SModule = SModule;
	}
	
	@Override
	public void getList() {
		SModule.listUP();
	}

	@Override
	public void getItem() {
		SModule.detailItem();
	}

}

