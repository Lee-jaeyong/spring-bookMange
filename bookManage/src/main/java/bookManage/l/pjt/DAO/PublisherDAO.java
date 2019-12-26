package bookManage.l.pjt.DAO;

import java.util.List;
import java.util.Map;

public interface PublisherDAO {
	public void insertPublisher(Map<String, String> map);

	public List<Map<String, String>> selectPublisher();

	public void updatePublisher(Map<String, Object> map);

	public void deletePublisher(Map<String, Object> map);
}
