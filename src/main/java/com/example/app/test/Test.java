package com.example.app.test;

import java.util.Random;

public class Test {
	
	public void TestRandom() {
		
		Random random = new Random();
		int random4of1 = random.nextInt(10);
		int random4of2 = random.nextInt(10);
		if (random4of2 == random4of1) {
			random4of2 = random.nextInt(10);
		}
		int random4of3 = random.nextInt(10);
		if (random4of3 == random4of2 || random4of3 == random4of1) {
			random4of3 = random.nextInt(10);
		}
		int random4of4 = random.nextInt(10);
		if (random4of4 == random4of1 || random4of4 == random4of2 || random4of4 == random4of3) {
			random4of4 = random.nextInt(10);
		}
		
		int[] randomIntArray = {random4of1, random4of2, random4of3, random4of4};
		
		int random6of1 = (int) (Math.random() * randomIntArray.length);
		int random6of2 = (int) (Math.random() * randomIntArray.length);
		int random6of3 = (int) (Math.random() * randomIntArray.length);
		int random6of4 = (int) (Math.random() * randomIntArray.length);
		int random6of5 = (int) (Math.random() * randomIntArray.length);
		int random6of6 = (int) (Math.random() * randomIntArray.length);
		
		System.out.println(random6of1 + random6of2 + random6of3 + random6of4 + random6of5 + random6of6);
		
	}
	
}
