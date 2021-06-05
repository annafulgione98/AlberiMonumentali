package com.example.AlberiMonumentali.operdb;

public class UserBean {

        String username;
        String password;

    public UserBean(String username, String password) {
        username= "";
        password="";
    }

    public String getUsername() {
            return username;
        }
        public String getPassword() {
            return password;
        }


        public void setUsername(String username) {
            this.username=username;
        }
        public void setPassword(String password) {
            this.password=password;
        }

    }




