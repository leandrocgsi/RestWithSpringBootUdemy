package br.com.erudio.web.controllers;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

import br.com.erudio.models.Person;
import br.com.erudio.services.PersonService;

@Api(value = "person")
@RestController
@RequestMapping("/person/")
public class PersonController {
	
	@Autowired
	private PersonService personService;
	
	@ApiOperation(value = "Find person by ID" )
    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/{personId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Person get(@PathVariable(value = "personId") String personId){
        Person person = personService.findById(personId);
        addHATEOASSupport(person, personId);
		return person;
    }
	
	@ApiOperation(value = "Find all persons" )
	@ResponseStatus(HttpStatus.OK)
	@RequestMapping(value = "/findAll", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Person> findAll(){
		List<Person> persons = personService.findAll();
		ArrayList<Person> personsReturn = new ArrayList<Person>();
		for (Person person : persons) {
			String idPerson = person.getIdPerson().toString();
			addHATEOASSupport(person, idPerson);
			personsReturn.add(person);
		}
		return personsReturn;
	}
	
	@ApiOperation(value = "Create a new person" )
	@ResponseStatus(HttpStatus.OK)
	@RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public Person create(@RequestBody Person person){
		Person createdPerson = personService.create(person);
		String idPerson = createdPerson.getIdPerson().toString();
		addHATEOASSupport(createdPerson, idPerson);
		return createdPerson;
	}
	
	@ApiOperation(value = "Update an existing person")
	@ResponseStatus(HttpStatus.OK)
	@RequestMapping(method = RequestMethod.PUT,consumes = MediaType.APPLICATION_JSON_VALUE)
	public Person update(@RequestBody Person person){
		Person updatedPerson = personService.update(person);
		String idPerson = updatedPerson.getIdPerson().toString();
		addHATEOASSupport(updatedPerson, idPerson);		
		return updatedPerson;
	}

	@ApiOperation(value = "Delete person by ID" )
	@ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/{personId}", method = RequestMethod.DELETE)
    public void delete(@PathVariable(value = "personId") String personId){
        personService.delete(personId);
    }

	private void addHATEOASSupport(Person person, String idPerson) {
		person.add(linkTo(methodOn(PersonController.class).get(idPerson)).withSelfRel());
	}
}
