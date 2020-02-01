package _06_gridworld;
import 	info.gridworld.world.World;
import info.gridworld.actor.*;
import info.gridworld.grid.*;
import info.gridworld.gui.*;

import java.util.ArrayList;
import java.util.Random;
import java.awt.Color;
public class Gridworld {
	public static World world = new World();
	public static Bug bug = new Bug();
	public static Flower flower1 = new Flower();
	//public static Flower flower2 = new Flower();
	static Color blue = new Color(0,0,255);
	public static Bug rbug = new Bug(blue);
	public static Location l1 = new Location(1,1);
	public static Grid<?> grid;
	public static Random ran = new Random();
	
	public static Location r1 = new Location(ran.nextInt(10),ran.nextInt(9) );
	public static Location fR = new Location (r1.getRow(), r1.getCol()+1);
	
	
	
	public static void main(String[] args) {
	world.show();
	ArrayList<Location> locs = new ArrayList<Location>();
	//world.add(fR, flower1);
	
	for(int x = 0; x < 11; x++) {
	for(int i = 0; i < 10; i++) {
		
	locs.add(new Location(0+i,0+x));
		
	world.add(locs.get(i+9*x), flower1);
	}
	}
	world.add(r1, rbug);
	world.add(l1, bug);
	//System.out.print(locs);
	
	
	
	
	//world.add(fL, flower1);
	
	rbug.turn();
	rbug.turn();
	}
		
	
}
