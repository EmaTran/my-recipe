package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "MenuRecipes")
@DynamicUpdate
public class MenuRecipe implements IEntity, Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MenuID")
    private Long menuID;

    @Column(name = "RecipeID")
    private Long recipeID;

    public MenuRecipe() {

    }

    public Long getMenuID() {
        return menuID;
    }

    public void setMenuID(Long menuID) {
        this.menuID = menuID;
    }

    public Long getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(Long recipeID) {
        this.recipeID = recipeID;
    }
}
