package bookManage.l.pjt.publisher.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.PublisherDAO;
import bookManage.l.pjt.domain.Publisher;

@Service
public class PublisherInsertService {

	@Autowired
	private PublisherDAO publisherDAO;

	public void insertPublisher(Publisher publisher) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("publisherName", publisher.getName());
		publisherDAO.insertPublisher(map);
	}
}
