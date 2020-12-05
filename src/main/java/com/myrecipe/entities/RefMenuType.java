package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "RefMenuTypes")
@DynamicUpdate
public class RefMenuType implements IEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MenuTypeCode")
    private Long menuTypeCode;

    @Column(name = "MenuDescription")
    private String menuDescription;


    public Long getMenuTypeCode() {
        return menuTypeCode;
    }

    public void setMenuTypeCode(Long menuTypeCode) {
        this.menuTypeCode = menuTypeCode;
    }

    public String getMenuDescription() {
        return menuDescription;
    }

    public void setMenuDescription(String menuDescription) {
        this.menuDescription = menuDescription;
    }

    public RefMenuType() {

    }

}

