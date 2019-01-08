package br.com.erudio.services.implementations;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Service;

import br.com.erudio.models.Person;
import br.com.erudio.services.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
    
    private final AtomicLong counter = new AtomicLong();

    @Override
    public Person create(Person person) {
        return person;
    }

    @Override
    public Person findById(String personId) {
        Person person = new Person();
        person.setId(counter.incrementAndGet());
        person.setFirstName("Leandro");
        person.setLastName("Costa");
        person.setAddress("Uberlândia - Minas Gerais - Brasil");
        return person;
    }

    @Override
    public List<Person> findAll() {
        ArrayList<Person> persons = new ArrayList<>();
        for (int i = 0; i < 8; i++) {
            Person person = mockPerson(i);
            persons.add(person);
        }
        return persons;
    }

    private Person mockPerson(int i) {
        Person person = new Person();
        person.setId(counter.incrementAndGet());
        person.setFirstName("Person Name " + i);
        person.setLastName("Last Name " + i);
        person.setAddress("Some Address in Brasil " + i);
        return person;
    }
    
    @Override
    public Person update(Person person) {
    	return person;
    }

    @Override
    public void delete(String personId) {

    }
}
