package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Steps")
@DynamicUpdate
public class Steps implements IEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "StepID")
    private Long stepID;

    @Column(name = "RecipeId")
    private String recipeId;

    @Column(name = "StepName")
    private String stepName;

    @Column(name = "StepInstruction")
    private String stepInstruction;


    @Column(name = "StepTime")
    private double stepTime;

    public Long getStepID() {
        return stepID;
    }

    public void setStepID(Long stepID) {
        this.stepID = stepID;
    }

    public String getStepName() {
        return stepName;
    }

    public void setStepName(String stepName) {
        this.stepName = stepName;
    }

    public String getStepInstruction() {
        return stepInstruction;
    }

    public void setStepInstruction(String stepInstruction) {
        this.stepInstruction = stepInstruction;
    }

    public double getStepTime() {
        return stepTime;
    }

    public void setStepTime(double stepTime) {
        this.stepTime = stepTime;
    }
}
