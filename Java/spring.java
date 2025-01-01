package Java;

public class spring {
  public static void main(String[] args) {

    Myname obj = new Myname("Rahul", 20);
    System.out.println(obj.name);

    Info obj1 = new Info("payel", 103, "Female");
    System.out.println(obj1.getgender());

  }
}

class Myname {

  String name;
  int Age;

  Myname(String name, int Age) {
    this.name = name;
    this.Age = Age;

  }
}

class Info extends Myname {

  private String gender;

  Info(String name, int Age, String gender) {
    super(name, Age);
    this.gender = gender;
  }

  String getgender() {
    return this.gender;
  }
}