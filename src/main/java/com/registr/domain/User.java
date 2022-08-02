package com.registr.domain;
import javax.persistence.*;

@Entity
@Table(schema = "public", name = "usr")
public class User{
@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String username;
    private String pss;
    private boolean active;
    private String email;
    private String dateReg;
    private String dateLogin;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPss() {
        return pss;
    }

    public void setPss(String pss) {
        this.pss = pss;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateReg() {
        return dateReg;
    }

    public void setDateReg(String dateReg) {
        this.dateReg = dateReg;
    }

    public String getDateLogin() {
        return dateLogin;
    }

    public void setDateLogin(String dateLogin) {
        this.dateLogin = dateLogin;
    }
}