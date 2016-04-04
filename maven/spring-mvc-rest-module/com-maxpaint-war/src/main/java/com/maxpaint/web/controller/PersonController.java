package com.maxpaint.web.controller;


import com.maxpaint.web.component.IPersonService;
import com.maxpaint.web.dto.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/data")
public class PersonController {

	@Autowired
	private IPersonService personService;
	
	@RequestMapping("/person")
	public Person getPersonDetail(@RequestParam(value = "id",required = false, defaultValue = "0") Integer id) {
		Person p = personService.getPersonDetail(id);
		return p;
	}
}