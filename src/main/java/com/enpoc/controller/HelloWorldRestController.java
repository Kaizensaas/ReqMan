package com.enpoc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.enpoc.model.Person;
import com.enpoc.service.PersonService;

@RestController
@RequestMapping("/person")
public class HelloWorldRestController {

    @Autowired
    PersonService personService;  //Service which will do all data retrieval/manipulation work

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ResponseEntity<List<Person>> listAllUsers() {
        List<Person> users = personService.findAllUsers();
        if (users.isEmpty()) {
            return new ResponseEntity<List<Person>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        System.out.println("controller users " + users);
        return new ResponseEntity<List<Person>>(users, HttpStatus.OK);
    }


}
