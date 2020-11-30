package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Menu")
@DynamicUpdate
public class Menu implements IEntity, Serializable {

    @Id
    @GeneratedValue
    @Column(name = "Id")
    private int id;

    @Column(name = "Menu_name")
    private String menuName;

    @Column(name = "menu_type_code")
    private int menuTypeCode;

    public int getMenuTypeCode() {
        return menuTypeCode;
    }

    public void setMenuTypeCode(int menuTypeCode) {
        this.menuTypeCode = menuTypeCode;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getCourse_number() {
        return course_number;
    }

    public void setCourse_number(int course_number) {
        this.course_number = course_number;
    }

    @Column(name = "menu_decription")
    private String menuDescription;

    @Column(name = "category_id")
    private int category_id;

    @Column(name = "course_number")
    private int course_number;

    public Menu() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuDescription() {
        return menuDescription;
    }

    public void setMenuDescription(String menuDescription) {
        this.menuDescription = menuDescription;
    }



}
