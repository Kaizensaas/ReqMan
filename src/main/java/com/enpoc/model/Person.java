package com.enpoc.model;

import java.util.Date;

public class Person {

    private long id;
    private String fullname;
    private Date birthdate;
    private Double amount;
    

    public Person() {

    }

    public Person(long id, String fullname, Date birthdate, Double amount) {
        this.id = id;
        this.fullname = fullname;
        this.birthdate = birthdate;
        this.amount = amount;
    }


    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Person{" + "id=" + id + ", fullname=" + fullname + ", birthdate=" + birthdate + ", amount=" + amount + '}';
    }
}
