package bookManage.l.pjt.categoryTest;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import org.codehaus.jackson.map.ObjectMapper;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;

import bookManage.l.pjt.DAO.CategoryDAO;
import bookManage.l.pjt.ajaxController.CategoryController;
import bookManage.l.pjt.category.service.CategorySelectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:database-context.xml")
public class CategoryTest {
	private MockMvc mockMvc;

	@Autowired
	CategoryDAO categoryDAO;

	@Before
	public void setup() throws Exception {
		this.mockMvc = standaloneSetup(new CategoryController()).alwaysExpect(status().isFound()).build();
	}

	@Test
	public void selectCategory() throws Exception{
		System.out.println(new ObjectMapper().writeValueAsString(categoryDAO.selectCategory()));
	}
	
	@Test
	@Ignore
	public void addCategory() throws Exception {
		this.mockMvc.perform(get("/category/addCategory").param("categoryName", "sasa"));
	}
}
