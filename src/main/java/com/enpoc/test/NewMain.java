/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.enpoc.test;

import com.enpoc.model.Person;
import com.enpoc.service.PersonServiceImpl;
import java.net.URISyntaxException;
import java.util.List;
import java.net.URL;
import java.net.URLClassLoader;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
/**
 *
 * @author Hardik
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws URISyntaxException {
        // TODO code application logic here
        System.out.println("main method is  called");
//        PersonServiceImpl personObj = new PersonServiceImpl();
//        List<Person> personList = personObj.findAllUsers();
//        System.out.println("personList " + personList);
               
//        ClassLoader cl = ClassLoader.getSystemClassLoader();
//
//        URL[] urls = ((URLClassLoader)cl).getURLs();
//
//        for(URL url: urls){
//        	System.out.println(url.getFile());
//        }
//        
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode("welcome");
        System.out.println("password"+hashedPassword);
    }

}
