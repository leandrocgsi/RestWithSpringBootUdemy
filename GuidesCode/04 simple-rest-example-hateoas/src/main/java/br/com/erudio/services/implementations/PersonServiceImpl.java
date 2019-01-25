package br.com.erudio.services.implementations;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import br.com.erudio.models.Person;
import br.com.erudio.services.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
	
	private static final Logger logger = Logger.getLogger(PersonServiceImpl.class);
    
    private final AtomicLong counter = new AtomicLong();

    @Override
    public Person create(Person person) {
    	logger.info("Creating a person");
        Person createdPerson = person;
        createdPerson.setIdPerson(counter.incrementAndGet());
		return createdPerson;
    }

    @Override
    public Person findById(String personId) {
    	logger.info("Finding a person by ID");
        Person person = new Person();
        person.setIdPerson(Long.parseLong(personId));
        person.setFirstName("Leandro");
        person.setLastName("Costa");
        person.setAddress("Uberlândia - Minas Gerais - Brasil");
        return person;
    }

    @Override
    public List<Person> findAll() {
    	logger.info("Finding all persons");
        ArrayList<Person> persons = new ArrayList<>();
        for (int i = 0; i < 8; i++) {
            Person person = mockPerson();
            persons.add(person);
        }
        return persons;
    }

    private Person mockPerson() {
    	long id = counter.incrementAndGet();
    	
        Person person = new Person();
		person.setIdPerson(id);
        person.setFirstName("Person Name " + id);
        person.setLastName("Last Name " + id);
        person.setAddress("Some Address in Brasil " + id);
        return person;
    }
    
    @Override
    public Person update(Person person) {
    	logger.info("Updating a person");
    	return person;
    }

    @Override
    public void delete(String personId) {
    	logger.info("Deleting a person");
    }
}
