package com.example.servlets;

import java.util.ArrayList;

class SquareDao {
	static ArrayList<Integer> getSquares(int n) {
		ArrayList<Integer> squareItems = new ArrayList();
		for (int i = 1; i <= n; ++i)
			squareItems.add(i * i);
		return squareItems;
	}
}
