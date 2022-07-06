package mvc;

import mvc.validation.CheckEmail;

import javax.validation.constraints.*;
import java.util.HashMap;
import java.util.Map;

public class Employee {
    @Size(min = 2,message = "name must be min 2 symbols")
    private String name;
    //@NotEmpty(message="Surname is required name")
    @NotBlank(message="Surname is required name")
    private String surname;
    private String department;
    @Min(value = 500,message = "Must be more then 499")
    @Max(value = 1000,message = "Must be less then 1001")
    private int salary;
    private Map<String,String> departments;

    private String carBrand;
    private Map<String,String> carBrands;
    private String[] languages;
    private Map<String,String> languageList;
    @Pattern(regexp = "\\d{2}-\\d{3}-\\d{3}-\\d{2}-\\d{2}"
            ,message = "Please use pattern XX-XXX-XXX-XX-XX")
    private String phoneNumber;
    @CheckEmail
    private String email;


    public Employee() {
        departments = new HashMap<>();
        departments.put("IT","Information Technology");
        departments.put("HR","Human Resources");
        departments.put("Sales","Sales Department");

        carBrands = new HashMap<>();
        carBrands.put("BMW","BMW");
        carBrands.put("Audi","Audi");
        carBrands.put("Mercedes Benz","Mercedes Benz");

        languageList = new HashMap<>();
        languageList.put("English","EN");
        languageList.put("French","FR");
        languageList.put("Deutch","DE");

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Map<String, String> getDepartments() {
        return departments;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrend) {
        this.carBrand = carBrend;
    }

    public Map<String, String> getCarBrands() {
        return carBrands;
    }

    public void setCarBrands(Map<String, String> carBrands) {
        this.carBrands = carBrands;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public void setDepartments(Map<String, String> departments) {
        this.departments = departments;
    }

    public Map<String, String> getLanguageList() {
        return languageList;
    }

    public void setLanguageList(Map<String, String> languageList) {
        this.languageList = languageList;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", department='" + department + '\'' +
                ", salary=" + salary +
                '}';
    }
}
