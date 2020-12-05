package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;

@Entity
@Table(name = "Recipes")
@DynamicUpdate
public class Recipe implements IEntity, Serializable {

    @Id
    @GeneratedValue
    @Column(name = "Id")
    private int id;

    @Column(name = "ServicingSize")
    private String servicingSize;

    @Column(name = "RecipeName")
    private String recipeName;

    @Column(name = "TotalStep")
    private int totalStep;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "RecipeId")
    private Set<RecipeDetail> recipeDetails;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "RecipeId")
    private Set<Steps> recipeSteps;

    @Transient
    private List<Steps> displaySteps;

    public Recipe() {
        recipeDetails = new HashSet<>();
        recipeSteps = new HashSet<>();
        displaySteps = new ArrayList<>();
    }

    public List<Steps> getDisplaySteps() {
        displaySteps = new ArrayList<>(recipeSteps);
        Collections.sort(displaySteps, Comparator.comparing(Steps::getStepName));
        return displaySteps;
    }

    public Set<RecipeDetail> getRecipeDetails() {
        return recipeDetails;
    }

    public Set<Steps> getRecipeSteps() {
        return recipeSteps;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServicingSize() {
        return servicingSize;
    }

    public void setServicingSize(String servicingSize) {
        this.servicingSize = servicingSize;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public int getTotalStep() {
        return totalStep;
    }

    public void setTotalStep(int totalStep) {
        this.totalStep = totalStep;
    }
}