package com.myrecipe.data_access.sample_databases;

import com.github.javafaker.Faker;
import com.myrecipe.business.abstrct.IRecipeService;
import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.business.concrete.managers.RecipeManager;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class SampleDatabase {

    public static void initializeDatabase() {


        IUserService userService = new UserManager();
        IRecipeService recipeService = new RecipeManager();

        Faker faker = new Faker();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        for (int i = 0; i < 3; i++) {
            // Adding Users
            User newUser = new User();
            newUser.setEmail(faker.internet().emailAddress());
            newUser.setFirstName(faker.name().firstName());
            newUser.setLastName(faker.name().lastName());
            newUser.setName("user" + (i + 1));
            newUser.setPassword("123456");
            userService.add(newUser);
        }

        // Add Recipes
        String[] recipes = new String[]{
                "Roast Beef with Roasted Potatoes and Carrots",
                "Beef and Cheddar Casserole",
                "Beef Burger", "Beef Stew", "Beef Stroganoff"
        };

        String[] steps = new String[]{
                "Step 1:Put salt and pepper on the beef/meat. Cover it with oil nd set in aside for 10 mins",
                "Step 2:In the cooking tray add chopped carrots and potatoes and add seasoning, dazzle oil from the top. Bake at 250 degree for 15 mins.",
                "Step 3:Add the seasoned beef/meat on the cooking tray and bake at 300 degrees until its cooked.",
                "Step 4:Check the meat temp at 275 degrees and serve hot."
        };

        for (String s : recipes) {
            Recipe recipe = new Recipe();
            recipe.setRecipeName(s);
            recipe.setServicingSize("for two");
            recipe.setTotalStep(faker.number().numberBetween(2, 7));

            for (int i = 0; i < recipe.getTotalStep(); i++) {
                RecipeDetail detail = new RecipeDetail();
                detail.setIngredientName(faker.food().ingredient());
                detail.setQuantity(faker.number().numberBetween(1, 10));
                detail.setUnit(faker.food().measurement());

                recipe.getRecipeDetails().add(detail);
            }

            for (int i = 0; i < steps.length; i++) {
                Steps newStep = new Steps();
                String[] stepStr = steps[i].split(":");
                newStep.setStepInstruction(stepStr[1]);
                newStep.setStepName(stepStr[0]);
                newStep.setStepTime(faker.number().randomDouble(0, 0, 2));

                recipe.getRecipeSteps().add(newStep);
            }

            recipeService.add(recipe);
        }
    }
}