package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Ref_Menu_Type")
@DynamicUpdate
public class Ref_Menu_Type implements IEntity, Serializable {
    @Id
    @GeneratedValue


    @Column(name = "menu_type_code")
    private Long menu_type_code;


    @Column(name = "menu_Description")
    private String menuDescription;


    public Long getMenu_type_code() {
        return menu_type_code;
    }

    public void setMenu_type_code(Long menu_type_code) {
        this.menu_type_code = menu_type_code;
    }

    public String getMenuDescription() {
        return menuDescription;
    }

    public void setMenuDescription(String menuDescription) {
        this.menuDescription = menuDescription;
    }

    public Ref_Menu_Type() {

    }

}

