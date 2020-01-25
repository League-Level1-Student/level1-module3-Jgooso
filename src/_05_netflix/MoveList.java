package _05_netflix;

public class MoveList {
	
	public static void main(String[] args) {
		Movie chucky = new Movie("Child's Play", 5);
		Movie leather = new Movie("Texas Chainsaw Massacre", 4);
		Movie jason = new Movie("Friday the 13th", 3);
		Movie candy = new Movie("Candyman",2);
		Movie freddy = new Movie("Nightmare on Elm Street", 1);
		chucky.getTicketPrice();
		
		NetflixQueue horror = new NetflixQueue();
		horror.addMovie(freddy);
		horror.addMovie(candy);
		horror.addMovie(jason);
		horror.addMovie(leather);
		horror.addMovie(chucky);
		for(int i = 0; i < 5; i++) {
		System.out.println(horror.getMovie(i));
		}
		System.out.println("The best movie is " + horror.getBestMovie());
		System.out.println("The second best movie is " + horror.getMovie(1));
	}
}
