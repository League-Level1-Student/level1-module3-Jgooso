package _01_intro_to_static;

public class Athlete {
    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        bibNumber = nextBibNumber;
        nextBibNumber = bibNumber + 1;
    }

    public static void main(String[] args) {
        //create two athletes
        //print their names, bibNumbers, and the location of their race. 
    	Athlete john = new Athlete("John", 25);
    	Athlete jim = new Athlete("Jim", 13);
    	System.out.println(john.name + ", " + john.bibNumber + ", ");
    	System.out.println(jim.bibNumber + ", " + jim.name);
    	System.out.println(raceLocation);
    	//System.out.println(john + " " + Athlete.nextBibNumber);
    	//System.out.println(jim + " " + Athlete.nextBibNumber+1);
    }
}
