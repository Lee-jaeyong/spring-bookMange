package bookManage.l.pjt.databaseTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import bookManage.l.pjt.DAO.BookDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:database-context.xml")
public class DatabaseTest {

	private static final Logger logger = LoggerFactory.getLogger(DatabaseTest.class);

	@Autowired
	BookDAO book;

	@Test
	public void test() {
	}

}
