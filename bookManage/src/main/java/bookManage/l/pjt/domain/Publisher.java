package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Publisher {

	@NotNull
	@Size(min = 1, max = 10, message = "10�� �̳��� �Է����ֽñ� �ٶ��ϴ�.")
	private String name;
	
	@NotNull
	private int idx;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

}
