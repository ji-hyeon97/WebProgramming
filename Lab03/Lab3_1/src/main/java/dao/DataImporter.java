package dao;

import java.io.*;
import java.util.*;

public class DataImporter {
	public static void main(String[] args)throws IOException{
		
		String file = "C:\\Users\\jihyeon.DESKTOP-R4U5I8I\\eclipse-workspace\\Lab3_1\\src\\main\\webapp\\MFSD-Agriculture.csv";
		BufferedReader reader = null;
		String line = "";
		int num = 0;
		
		BufferedReader br = new BufferedReader(new BufferedReader(new FileReader(file))); //
		while ((line = br.readLine()) != null) { // 

			String first_Cut_string[] = line.replace(" ", "").split(","); 
			
			if (num != 0) {

				for (int i = 0; i < first_Cut_string.length; i++) {
					if (first_Cut_string[i].compareTo(",") == 0) {
						first_Cut_string[i] = "";
					}
				}

				String temp_string = "";
				for (int i = 0; i < first_Cut_string.length; i++) {

					if (i != first_Cut_string.length - 1) {
						temp_string += first_Cut_string[i] + ",";
					} else {
						temp_string += first_Cut_string[i];
					}
				}
		

				String Second_Cut_String[] = temp_string.split(",");

				
			for (int i = 0; i < Second_Cut_String.length; i++) {
				System.out.println(Second_Cut_String[i]);
			}
			System.out.println();	
			}
			num++;
			
		}
	}
}