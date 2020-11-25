package springmvc;

import java.util.Objects;

public class Login {

    private int id;
    private String username;
    private String password;

    public Login() {
    }

    public Login(int id, String name, String password) {
        this.id = id;
        this.username = name;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Login user = (Login) obj;
        return id == user.id;
    //    return super.equals(obj);
    }

    @Override
    public int hashCode() {
    //    return super.hashCode();
        return Objects.hash(id);
    }
}
