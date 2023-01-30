package Sprint_Task4_2;

public class User {
    int id;
    String email;
    String password;
    String FullName;
    public User(){
    }
    public User(int id, String email, String password, String FullName){
        this.id=id;
        this.email=email;
        this.password=password;
        this.FullName=FullName;
    }

    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFullName() {
        return FullName;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }
}
