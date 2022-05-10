package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.FoodBeanManager;
import dto.FoodBean;

public class AddFoodBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
		   String sample_id = request.getParameter("sample_id");
		   String name = request.getParameter("name");
		   String category = request.getParameter("category");
		   int serving_size = Integer.parseInt(request.getParameter("serving_size"));
		   double calorie = Double.parseDouble(request.getParameter("calorie"));
		   double water = Double.parseDouble(request.getParameter("water"));
		   double protein = Double.parseDouble(request.getParameter("protein"));
		   double fat = Double.parseDouble(request.getParameter("fat"));
		   double carbohydrate = Double.parseDouble(request.getParameter("carbohydrate"));
		   double sugars = Double.parseDouble(request.getParameter("sugars"));
		   double fiber = Double.parseDouble(request.getParameter("fiber"));
		   int calcium = Integer.parseInt(request.getParameter("calcium"));
		   double iron = Double.parseDouble(request.getParameter("iron"));
		   int magnesium = Integer.parseInt(request.getParameter("magnesium"));
		   int phosphorus = Integer.parseInt(request.getParameter("phosphorus"));
		   int potassium = Integer.parseInt(request.getParameter("potassium"));
		   int sodium = Integer.parseInt(request.getParameter("sodium"));
		   double zinc = Double.parseDouble(request.getParameter("zinc"));
		   double copper = Double.parseDouble(request.getParameter("copper"));
		   double manganese = Double.parseDouble(request.getParameter("manganese"));
		   double selenium = Double.parseDouble(request.getParameter("selenium"));
		   
		   FoodBean foodbean = new FoodBean();
		   foodbean.setSample_id(sample_id);
		   foodbean.setName(name);
		   foodbean.setCategory(category);
		   foodbean.setServing_size(serving_size);
		   foodbean.setCalorie(calorie);
		   foodbean.setWater(water);
		   foodbean.setProtein(protein);
		   foodbean.setFat(fat);
		   foodbean.setCarbohydrate(carbohydrate);
		   foodbean.setSugars(sugars);
		   foodbean.setFiber(fiber);
		   foodbean.setCalcium(calcium);
		   foodbean.setIron(iron);
		   foodbean.setMagnesium(magnesium);
		   foodbean.setPhosphorus(phosphorus);
		   foodbean.setPotassium(potassium);
		   foodbean.setSodium(sodium);
		   foodbean.setZinc(zinc);
		   foodbean.setCopper(copper);
		   foodbean.setManganese(manganese);
		   foodbean.setSelenium(selenium);

		   FoodBeanManager service = FoodBeanManager.getInstance();
			service.add(foodbean);
	    }
}