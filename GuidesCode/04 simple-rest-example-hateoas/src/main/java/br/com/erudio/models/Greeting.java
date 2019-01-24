package br.com.erudio.models;

import org.springframework.hateoas.ResourceSupport;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Greeting extends ResourceSupport {

    private final long idGreeting;
    private final String content;

    @JsonCreator
    public Greeting(@JsonProperty("id") long id, @JsonProperty("content") String content) {
        this.idGreeting = id;
        this.content = content;
    }

    public long getIdGreeting() {
        return idGreeting;
    }

    public String getContent() {
        return content;
    }
}
