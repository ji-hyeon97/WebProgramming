<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식품 영양 성분</title>
</head>
<body>

<%!
public class FoodBean implements java.io.Serializable {
	private String sample_id;
	private String name;
	private String category;
	private double serving_size;
	private double calorie;
	private double water;
	private double protein;
	private double fat;
	private double carbohydrate;
	private double sugars;
	private double fiber;
	private double calcium;
	private double iron;
	private double magnesium;
	private double phosphorus;
	private double potassium;
	private double sodium;
	private double zinc;
	private double copper;
	private double manganese;
	private double selenium;
	
	public FoodBean() {}
	
	public FoodBean(String sample_id, String name, String category, double serving_size,
			double calorie, double water, double protein, double fat, double carbohydrate,
			double sugars, double fiber, double calcium, double iron, double magnesium,
			double phosphorus, double potassium, double sodium, double zinc, double copper, double manganese,
			double selenium) {
		this.sample_id = sample_id;
		this.name = name;
		this.category = category;
		this.serving_size = serving_size;
		this.calorie = calorie;
		this.water = water;
		this.protein = protein;
		this.fat = fat;
		this.carbohydrate = carbohydrate;
		this.sugars = sugars;
		this.fiber = fiber;
		this.calcium = calcium;
		this.iron = iron;
		this.magnesium = magnesium;
		this.phosphorus = phosphorus;
		this.potassium = potassium;
		this.sodium = sodium;
		this.zinc = zinc;
		this.copper = copper;
		this.manganese = manganese;
		this.selenium = selenium;
	}
	
	public String getSample_id() {
		return this.sample_id;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getCategory() {
		return this.category;
	}
	
	public double getServing_size() {
		return this.serving_size;
	}
	
	public double getCalorie() {
		return this.calorie;
	}
	
	public double getWater() {
		return this.water;
	}
	
	public double getProtein() {
		return this.protein;
	}
	
	public double getFat() {
		return this.fat;
	}
	
	public double getCarbohydrate() {
		return this.carbohydrate;
	}
	
	public double getSugars() {
		return this.sugars;
	}
	
	public double getFiber() {
		return this.fiber;
	}
	
	public double getCalcium() {
		return this.calcium;
	}
	
	public double getIron() {
		return this.iron;
	}
	
	public double getMagnesium() {
		return this.magnesium;
	}
	
	public double getPhosphorus() {
		return this.phosphorus;
	}
	
	public double getPotassium() {
		return this.potassium;
	}
	
	public double getSodium() {
		return this.sodium;
	}
	
	public double getZinc() {
		return this.zinc;
	}
	
	public double getCopper() {
		return this.copper;
	}
	
	public double getManganese() {
		return this.manganese;
	}
	
	public double getSelenium() {
		return this.selenium;
	}
	
	public void setSample_id(String sample_id) {
		this.sample_id = sample_id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setServing_size(double serving_size) {
		this.serving_size = serving_size;
	}
	
	public void setCalorie(double calorie) {
		this.calorie = calorie;
	}
	
	public void setWater(double water) {
		this.water = water;
	}
	
	public void setProtein(double protein) {
		this.protein = protein;
	}
	
	public void setFat(double fat) {
		this.fat = fat;
	}
	
	public void setCarbohydrate(double carbohydrate) {
		this.carbohydrate = carbohydrate;
	}
	
	public void setSugars(double sugars) {
		this.sugars = sugars;
	}
	
	public void setFiber(double fiber) {
		this.fiber = fiber;
	}
	
	public void setCalcium(double calcium) {
		this.calcium = calcium;
	}
	
	public void setIron(double iron) {
		this.iron = iron;
	}
	
	public void setMagnesium(double magnesium) {
		this.magnesium = magnesium;
	}
	
	public void setPotassium(double potassium) {
		this.potassium = potassium;
	}
	
	public void setPhosphorus(double phosphorus) {
		this.phosphorus = phosphorus;
	}
	
	public void setSodium(double sodium) {
		this.sodium = sodium;
	}
	
	public void setZinc(double zinc) {
		this.zinc = zinc;
	}
	
	public void setCopper(double copper) {
		this.copper = copper;
	}
	
	public void setManganese(double manganese) {
		this.manganese = manganese;
	}
	
	public void setSelenium(double selenium) {
		this.selenium = selenium;
	}
}

public class FoodBeanManager{
	
	private List<FoodBean> csv = new ArrayList<>();
	private List<String> list = new ArrayList<>();
	
	public FoodBeanManager(){
		
		csv.add(new FoodBean("R002545-ZZ-AVG", "분유, 1단계", "우유및유제품류", 100, 508,2.1, 12.41, 25.75, 56.88, 49.01, 0, 553, 3.98, 56, 323, 697, 164, 4.07, 0.302, 0.044, 12.87));
		csv.add(new FoodBean("R002546-ZZ-AVG", "분유, 2단계", "우유및유제품류", 100, 506,2, 12.63, 25.38, 56.93, 49, 0, 635, 5.72, 60, 374, 739, 171, 4.01, 0.301, 0.06, 13.69));
		csv.add(new FoodBean("R003196-ZZ-AVG", "코코아, 가루", "차류", 100, 268,1.7, 22.85,20.06, 43.63, 0.49, 0, 161, 55.84,509, 634, 4287, 24, 7.08, 4.036,4.662, 9.41));
		csv.add(new FoodBean("R003197-ZZ-AVG", "홍삼차, 액상", "차류", 100, 40,90.1, 0.28, 0.24, 9.27, 6.32, 0, 4, 0.2, 4, 7, 51, 4,0.06, 0.009, 0.16, 0.11));
		csv.add(new FoodBean("R003198-ZZ-AVG", "홍차, 복숭아, 가루", "차류", 100, 397,0.9, 0.32, 0.38, 98.12, 42.31, 0, 10, 0,1, 2, 164,41,0.11, 0.007,1.366, 0));
		csv.add(new FoodBean("R003199-ZZ-AVG", "마요네즈,저칼로리", "조미료류", 100, 341,53.1, 0.89, 31.97, 12.35, 3.56, 0, 7, 0.28, 2, 25, 26, 600, 0.16, 0, 0, 4.57));
		csv.add(new FoodBean("R003200-ZZ-AVG", "인삼, 수삼, 삶은것", "기타", 100, 86,76.3, 3.54, 0.69, 18.23, 9.18, 2.4, 82, 2.34, 35, 90, 348, 10, 0.28, 0.236, 1.109, 0.86));
		
		String file = "C:\\Users\\jihyeon.DESKTOP-R4U5I8I\\eclipse-workspace\\Lab3_1\\src\\main\\webapp\\MFSD-Agriculture.csv";
		BufferedReader reader = null;
		String line = "";
		int num = 0;
		
		try{			
		BufferedReader br = new BufferedReader(new BufferedReader(new FileReader(file))); // 버퍼리더 만들기.
		
		while ((line = br.readLine()) != null) { // 한 라인씩 읽어오기.

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
		
				
				
			}
			num++;
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
			 
	
	public List<FoodBean> get(){
		return csv;
	}	
	
	public FoodBean get(String sample_id){
		FoodBean foodnutrientfacts = null;
		for(FoodBean f : csv){
			if( f !=null && f.getSample_id().equals(sample_id)){
				foodnutrientfacts = f;
				break;
			}
		}
		return foodnutrientfacts;		
	}
}
FoodBeanManager manager = new FoodBeanManager();
%>
</body>