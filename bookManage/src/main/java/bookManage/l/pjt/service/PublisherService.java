package bookManage.l.pjt.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.PublisherDAO;
import bookManage.l.pjt.domain.Publisher;

@Service
public class PublisherService {

	@Autowired
	private PublisherDAO publisherDAO;

	public void insertPublisher(Publisher publisher) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("publisherName", publisher.getName());
		publisherDAO.insertPublisher(map);
	}

	public void deletePublisher(Publisher publisher) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("publisherIdx", publisher.getIdx());
		publisherDAO.deletePublisher(map);
		publisherDAO.deletePublisherRelation(map);
	}

	public List<Map<String, String>> selectPublisher() {
		return publisherDAO.selectPublisher();
	}

	public void updatePublisher(Publisher publisher) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("publisherName", publisher.getName());
		map.put("publisherIdx", publisher.getIdx());
		publisherDAO.updatePublisher(map);
	}
}
