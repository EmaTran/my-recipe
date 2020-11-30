package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Recipe")
@DynamicUpdate
public class Recipe implements IEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "recipe_id")
    private Long recipeId;

    @Column(name = "recipe_id")
    private String recipeID;


    @Column(name = "total_steps")
    private String totalSteps;

    @Column(name = "serving_size")
    private String servingSize;

    public Long getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(Long recipeId) {
        this.recipeId = recipeId;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getTotalSteps() {
        return totalSteps;
    }

    public void setTotalSteps(String totalSteps) {
        this.totalSteps = totalSteps;
    }

    public String getServingSize() {
        return servingSize;
    }

    public void setServingSize(String servingSize) {
        this.servingSize = servingSize;
    }

    public Recipe(){

    }

}
