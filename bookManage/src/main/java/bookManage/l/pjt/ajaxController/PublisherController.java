package bookManage.l.pjt.ajaxController;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import bookManage.l.pjt.domain.Publisher;
import bookManage.l.pjt.service.PublisherService;

@RestController
@RequestMapping(value = "publisher")
public class PublisherController {

	private static Logger logger = LoggerFactory.getLogger(PublisherController.class);

	@Autowired
	PublisherService publisherService;

	@Autowired
	ObjectMapper objMapper;

	@GetMapping(value = "/addPublisher", produces = "text/plain;charset=UTF-8")
	public String addPublisher(@Valid Publisher publisher, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> error = result.getAllErrors();
			for (ObjectError errorIndex : error) {
				logger.warn(errorIndex.getDefaultMessage());
				return errorIndex.getDefaultMessage();
			}
		}
		publisherService.insertPublisher(publisher);
		return "출판사가 등록되었습니다.";
	}

	@GetMapping(value = "/updatePublisher", produces = "text/plain;charset=UTF-8")
	public String updatePublisher(@Valid Publisher publisher, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> error = result.getAllErrors();
			for (ObjectError errorIndex : error) {
				logger.warn(errorIndex.getDefaultMessage());
				return errorIndex.getDefaultMessage();
			}
		}
		publisherService.updatePublisher(publisher);
		return "출판사가 수정되었습니다.";
	}

	@GetMapping(value = "/deletePublisher", produces = "text/plain;charset=UTF-8")
	public String deletePublisher(Publisher publisher) {
		publisherService.deletePublisher(publisher);
		return "출판사가 정상적으로 삭제되었습니다.";
	}

	@GetMapping(value = "/selectPublisher", produces = "text/plain;charset=UTF-8")
	public String selectPublisher() throws JsonGenerationException, JsonMappingException, IOException {
		return objMapper.writeValueAsString(publisherService.selectPublisher());
	}
}
