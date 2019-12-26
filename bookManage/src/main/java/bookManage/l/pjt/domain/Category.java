package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Category {

	@NotNull
	@Size(min = 1, max = 10, message = "10자 이내로 입력해주시기 바랍니다.")
	private String name;
	
	@NotNull
	private int idx;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

}
