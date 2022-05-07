package dao;

import java.util.List;
import dto.PersonBMICalculator;

public interface PersonBMICalculatorDAO {

	int insert(PersonBMICalculator bean);
	int delete(String name);
	int edit(PersonBMICalculator bean);
	PersonBMICalculator select(String name);
	List<PersonBMICalculator> selectList();
}
