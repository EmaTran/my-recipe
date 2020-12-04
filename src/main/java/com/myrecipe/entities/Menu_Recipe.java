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
    private Long menuID;

    @Column(name = "recipe_ID")
    private Long recipeID;
    public Long getMenu_ID() {
        return menuID;
    }

    public void setMenu_ID(Long menu_ID) {
        this.menuID = menu_ID;
    }

    public Long getRecipe_ID() {
        return recipeID;
    }

    public void setRecipe_ID(Long recipe_ID) {
        this.recipeID = recipe_ID;
    }

    public Menu_Recipe() {

    }
}
