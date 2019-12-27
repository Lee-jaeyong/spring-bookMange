package bookManage.l.pjt.publisher.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.PublisherDAO;

@Service
public class PublisherSelectService {
	
	@Autowired
	private PublisherDAO publisherDAO;
	
	public List<Map<String, String>> selectPublisher(){
		return publisherDAO.selectPublisher();
	}
}
