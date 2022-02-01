package tests.helper;
import com.mifmif.common.regex.Generex;

public class DataGenerator {

    public static String idGenerator(){
        Generex id = new Generex("[0-9]{9}");
        String secondString = id.random();
        return secondString;
    }
    public static String userName(){
        Generex user = new Generex( "[a-zA-Z0-9]{8}");
        String username = user.random();
        return username;
    }
    public static String randomName(){
        Generex name = new Generex("[A-Z][a-z]{3,8}");
        String randomname= name.random();
        return randomname;

    }
    public static String emailGenerator(){
        Generex email = new Generex("[a-z]{5,10}");
        String gmail = email.random()+"@gmail.com";
        return gmail;
    }
    public static String passwordGenerator(){
        Generex pass = new Generex("[a-zA-Z0-9]{5,10}");
        String password = pass.random();
        return password;
    }
    public static String phoneGenerator(){
        Generex phone = new Generex("53[0-9]{8}");
        String number = phone.random();
        return "+90" + number;
    }
    public static String userStatus(){
        Generex id = new Generex("[0-9]{1}");
        String secondString = id.random();
        return secondString;
    }
}
