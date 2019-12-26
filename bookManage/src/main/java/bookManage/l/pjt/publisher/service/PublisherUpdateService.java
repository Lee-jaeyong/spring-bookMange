package bookManage.l.pjt.publisher.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.PublisherDAO;
import bookManage.l.pjt.domain.Publisher;

@Service
public class PublisherUpdateService {

	@Autowired
	private PublisherDAO publisherDAO;

	public void updatePublisher(Publisher publisher) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("publisherName", publisher.getName());
		map.put("publisherIdx", publisher.getIdx());
		publisherDAO.updatePublisher(map);
	}
}
