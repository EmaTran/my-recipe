package entities;

import javax.persistence.*;

@Entity
@Table(name = "User", schema = "dbo", catalog = "MyRecipe")
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long menu_id;

    public Menu(){

    }
}
