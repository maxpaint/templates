package com.maxpaint.core.spring.service;

import com.maxpaint.core.spring.model.Employee;
import org.joda.time.LocalDate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;

/**
 * Created by che_maxpaint on 13.04.2015.
 */
@ContextConfiguration("classpath:spring4.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class EmployeeServiceTest {

    @Autowired
    private EmployeeService service;

    @Test
    public void Test(){
        Employee employee = new Employee();
        employee.setName("max");
        employee.setSalary(new BigDecimal(1000));
        employee.setJoiningDate(LocalDate.now());
        employee.setSsn("sfsdf");

        service.saveEmployee(employee);

        service.findAllEmployees();
    }
}
