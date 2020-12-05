package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "RecipeDetails")
@DynamicUpdate
public class RecipeDetail implements IEntity, Serializable {

    @Id
    @GeneratedValue
    @Column(name = "Id")
    private int id;

    @Column(name = "RecipeId")
    private String recipeId;

    @Column(name = "IngredientName")
    private String ingredientName;

    @Column(name = "Quantity")
    private int quantity;

    @Column(name = "Unit")
    private String unit;

    public RecipeDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(String recipeId) {
        this.recipeId = recipeId;
    }

    public String getIngredientName() {
        return ingredientName;
    }

    public void setIngredientName(String ingredientName) {
        this.ingredientName = ingredientName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}