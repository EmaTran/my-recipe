package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Menu_Recipe")
@DynamicUpdate
public class Menu_Recipe implements IEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    @Column(name = "menu_ID")
    private Long menu_ID;


    @Column(name = "recipe_ID")
    private Long recipe_ID;
    public Long getMenu_ID() {
        return menu_ID;
    }

    public void setMenu_ID(Long menu_ID) {
        this.menu_ID = menu_ID;
    }

    public Long getRecipe_ID() {
        return recipe_ID;
    }

    public void setRecipe_ID(Long recipe_ID) {
        this.recipe_ID = recipe_ID;
    }

    public Menu_Recipe() {

    }
}
