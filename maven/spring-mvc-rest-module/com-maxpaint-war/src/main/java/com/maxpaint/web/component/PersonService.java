package com.maxpaint.web.component;


import com.maxpaint.web.dto.Person;
import org.springframework.stereotype.Component;

@Component
public class PersonService implements IPersonService {

	public Person getPersonDetail(Integer id){
		Person p = new Person();
		p.setId(id);
		p.setLocation("Varanasi");
		p.setName("Ram");
		return p;
	}
}
