package bookManage.l.pjt;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import org.junit.Before;
import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

import bookManage.l.pjt.mainController.AdminPageController;

public class AdminPageControllerTest {

	private MockMvc mockMvc;

	@Before
	public void setup() throws Exception {
		this.mockMvc = standaloneSetup(new AdminPageController()).alwaysExpect(status().isFound()).build();
	}

	@Test
	public void addBook() throws Exception {
		
		// ���� �߸� �Է� ���̽�
		this.mockMvc.perform(post("/addBook").param("bookName", "�ڹ٤�����������������").param("isbn", "sasa")
				.param("bookPrice", "11").param("stock", "4").param("author", "�����").param("lendStatus", "1")
				.param("categoryNum", "1").param("publisherNum", "1").param("bookImg", "fdsfsd")
				.param("bookContent", "fdsfsd").param("bookDetail", "fdsfsd")).andExpect(redirectedUrl("/bookList"));

		// ���� �߸� �Է� ���̽�
		this.mockMvc.perform(post("/addBook").param("bookName", "�ڹ�").param("isbn", "����������").param("bookPrice", "11")
				.param("stock", "s4").param("author", "�����").param("lendStatus", "1").param("categoryNum", "1")
				.param("publisherNum", "1").param("bookImg", "fdsfsd").param("bookContent", "fdsfsd")
				.param("bookDetail", "fdsfsd")).andExpect(redirectedUrl("/bookList"));
		
		// ���� ���̽�
		this.mockMvc.perform(post("/addBook").param("bookName", "�ڹ�").param("isbn", "������������").param("bookPrice", "11")
				.param("stock", "4").param("author", "�����").param("lendStatus", "1").param("categoryNum", "1")
				.param("publisherNum", "1").param("bookImg", "fdsfsd").param("bookContent", "fdsfsd")
				.param("bookDetail", "fdsfsd")).andExpect(redirectedUrl("/bookList"));
	}

}
