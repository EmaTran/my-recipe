package entities;

import javax.persistence.*;

@Entity
@Table(name = "User", schema = "dbo", catalog = "MyRecipe")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;

    private String firstName;

    private String lastName;

    private String password;
    public User(){

    }
}
