package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Manager<T> {
	private List<T> data = null;

	private static Manager instance = new Manager();
	public static Manager getInstance(){
		return instance;
	}
	
	public Manager() {
		this.data = new ArrayList<T>();
	}
	
	// get
	public T get(int index) {
		return this.data.get(index);
	}
	
	// getList
	public List<T> getList() {
		return this.data;
	}
	
	// getListBy
	public List<T> getListBy(Predicate<? super T> predicate) {
		return this.data.stream().filter(predicate).collect(Collectors.toList());
	}
	
	// add 
	public void add(T t) {
		this.data.add(t);
	}
	
	// addList
	public void addList(List<T> list) {
		this.data = list;
	}
	
	// insert
	void insert(int index, T data) {
		this.data.add(index, data);
	}
	
	// remove all 
	public void removeAll() {
		this.data.clear();
	}
	
	// remove 
	public void remove(T other) {
		Iterator<T> it = (Iterator<T>) this.data.iterator();
		while (it.hasNext()) {
		    Object t = it.next();
		    if (t == other) {
				it.remove();
		    }
		}
	}
	
	// find 
	public Object find(T other) {
		Iterator<T> it = (Iterator<T>) this.data.iterator();
		while (it.hasNext()) {
			Object t = it.next();
		    if (t == other) {
		    	return t;
		    }
		}
		return null;
	}
}
