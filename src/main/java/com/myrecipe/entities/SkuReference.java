package com.myrecipe.entities;

import com.myrecipe.core.entities.IEntity;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "SkuReference")
@DynamicUpdate
public class SkuReference implements IEntity, Serializable{

    @Id
    @GeneratedValue
    @Column(name = "sku_number")
    private Long skuNumber;

    @Column(name = "ingredient_id")
    private Long ingredientID;

    @Column(name = "ingredient_description")
    private String ingredienDescription;

    @Column(name = "sku_product_info")
    private String skuProductInfo;

    @Column(name = "price")
    private double price;

    public Long getSkuNumber() {
        return skuNumber;
    }

    public void setSkuNumber(Long skuNumber) {
        this.skuNumber = skuNumber;
    }

    public Long getIngredientID() {
        return ingredientID;
    }

    public void setIngredientID(Long ingredientID) {
        this.ingredientID = ingredientID;
    }

    public String getIngredienDescription() {
        return ingredienDescription;
    }

    public void setIngredienDescription(String ingredienDescription) {
        this.ingredienDescription = ingredienDescription;
    }

    public String getSkuProductInfo() {
        return skuProductInfo;
    }

    public void setSkuProductInfo(String skuProductInfo) {
        this.skuProductInfo = skuProductInfo;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public SkuReference() {
    }

}
