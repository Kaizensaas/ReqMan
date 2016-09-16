package com.enpoc.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtility {

    private static Connection connection = null;

    public static Connection getConnection() throws URISyntaxException {
        if (connection != null) {
            return connection;
        } else {
            try {

                String dbu = null, driver = "", url = "", username = "", password = "";
                Properties prop = new Properties();
                dbu = System.getenv("DATABASE_URL");

                if (dbu == null) {
                    driver = "org.postgresql.Driver";
                    url = "jdbc:postgresql://localhost:5432/enoc";
                    username = "postgres";
                    password = "hardik";
                } else {
                    URI dbUri = new URI(dbu);
                    driver = "org.postgresql.Driver";
                    username = dbUri.getUserInfo().split(":")[0];
                    password = dbUri.getUserInfo().split(":")[1];
                    url = "jdbc:postgresql://" + dbUri.getHost() + ":" + dbUri.getPort() + "" + dbUri.getPath() + "?user=" + username + "&password=" + password;
                    System.out.println("JDBC Url :" + url);
                }

                Class.forName(driver);
                connection = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }

    }
}
