package com.enpoc.service;

import com.enpoc.dao.UserDao;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.enpoc.model.Person;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.springframework.beans.factory.annotation.Autowired;

@Service("PersonService")
@Transactional
public class PersonServiceImpl implements PersonService {

    private Connection connection;
    @Autowired
    UserDao userDao;  //Service which will do all data retrieval/manipulation work

    public PersonServiceImpl() throws URISyntaxException {
        connection = DBUtility.getConnection();
    }

    @Override
    public List<Person> findAllUsers() {
        List<Person> personList = new ArrayList<Person>();

        try // check if user is login
        {

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from person");
            while (rs.next()) {
                Person person = new Person();
                person.setId(rs.getInt("id"));
                person.setFullname(rs.getString("name"));
                person.setBirthdate(rs.getDate("birthdate__c"));
                person.setAmount(rs.getDouble("amount__c"));
                personList.add(person);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return personList;
    }
}
