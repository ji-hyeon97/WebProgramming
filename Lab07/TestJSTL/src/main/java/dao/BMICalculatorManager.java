package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import dto.BMICalculator;
import dto.Gender;
import dto.Person;

public class BMICalculatorManager {
	private List<BMICalculator> data = null;

	private static BMICalculatorManager instance = new BMICalculatorManager();
	public static BMICalculatorManager getInstance(){
		return instance;
	}
	
	public BMICalculatorManager() {
		this.data = new ArrayList<BMICalculator>();
		this.data.add(new BMICalculator("K", 10, Gender.MALE, 180, 75));
		this.data.add(new BMICalculator("S", 20, Gender.MALE, 175, 80));
		this.data.add(new BMICalculator("P", 30, Gender.FEMALE, 165, 55));
	}
	
	// get
	public BMICalculator get(int index){
		return this.data.get(index);
	}
	
	// getList
	public List<BMICalculator> getList() {
		return this.data;
	}

	// add 
	public void add(BMICalculator bmi) {
		this.data.add(bmi);
	}
	
	// addList
	public void addList(List<BMICalculator> data) {
		this.data = data;
	}
	
	// insert
	void insert(int index, BMICalculator data){
		this.data.add(index, data);
	}	

	// remove 
	public void remove(BMICalculator other) {
		Iterator<BMICalculator> it = this.data.iterator();
		while (it.hasNext()) {
			BMICalculator p = it.next();
		    if (p == other) {
				it.remove();
		    }
		}
	}
	
	// remove all 
	public void removeAll() {
		this.data.clear();
	}
	
	// get (by name)
	public BMICalculator find(String name) {
		BMICalculator person = null;
		for (BMICalculator p : this.data) {
			if (p != null && p.getName().equals(name)) {
				person = p;
				break;
			}
		}
		return person;
	}

	// replace
	public void replace(String name, BMICalculator other) {
		int index = this.data.indexOf(find(name));
		this.data.set(index, other);
	}

}
