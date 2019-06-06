package br.com.erudio.converter.mocks;

import java.util.ArrayList;
import java.util.List;

import br.com.erudio.data.model.Person;
import br.com.erudio.data.vo.v1.PersonVO;

public class MockPerson {


    public Person mockEntity() {
    	return mockEntity(0);
    }
    
    public PersonVO mockVO() {
    	return mockVO(0);
    }
    
    public List<Person> mockEntityList() {
        List<Person> persons = new ArrayList<Person>();
        for (int i = 0; i < 14; i++) {
            persons.add(mockEntity(i));
        }
        return persons;
    }

    public List<PersonVO> mockVOList() {
        List<PersonVO> persons = new ArrayList<>();
        for (int i = 0; i < 14; i++) {
            persons.add(mockVO(i));
        }
        return persons;
    }
    
    private Person mockEntity(Integer number) {
    	Person person = new Person();
    	person.setAddress("Addres Test" + number);
        person.setFirstName("First Name Test" + number);
        person.setGender(((number % 2)==0) ? "Male" : "Female");
        person.setId(number.longValue());
        person.setLastName("Last Name Test" + number);
        return person;
    }

    private PersonVO mockVO(Integer number) {
    	PersonVO person = new PersonVO();
    	person.setAddress("Addres Test" + number);
        person.setFirstName("First Name Test" + number);
        person.setGender(((number % 2)==0) ? "Male" : "Female");
        person.setKey(number.longValue());
        person.setLastName("Last Name Test" + number);
        return person;
    }

}
