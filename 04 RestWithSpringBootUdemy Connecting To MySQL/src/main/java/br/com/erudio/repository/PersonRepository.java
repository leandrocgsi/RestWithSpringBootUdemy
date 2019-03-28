package br.com.erudio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.erudio.model.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long>{

}