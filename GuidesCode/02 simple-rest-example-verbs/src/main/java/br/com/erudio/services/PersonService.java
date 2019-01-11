package br.com.erudio.services;

import java.util.List;

import br.com.erudio.models.Person;

public interface PersonService {
    
    Person create(final Person person);
    Person findById(final String personId);
    List<Person> findAll();
    Person update(Person person);
    void delete(final String personId);

}
