package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Gender;
import dto.Person;
import dto.PersonBMICalculator;

public class PersonBMICalculatorImpl implements PersonBMICalculatorDAO {
	private Connection conn = null;
	   
	public PersonBMICalculatorImpl(Connection conn) {
		this.conn = conn;
	}
	
	// insert
	@Override
	public int insert(PersonBMICalculator person) {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into person values (?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, person.getName());
			pstmt.setInt(2, person.getAge());
			pstmt.setString(3, person.getGender().toString());
			pstmt.setDouble(4, person.getHeight());
			pstmt.setDouble(5, person.getWeight());
			pstmt.setDouble(6, person.getNeck());
			pstmt.setDouble(7, person.getWaist());
			pstmt.setDouble(8, person.getHip());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}

	// delete
	@Override
	public int delete(String name) {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from person where name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}

	// edit
	@Override
	public int edit(PersonBMICalculator person) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update person set age=?, gender=?, height=?, weight=?, neck=?, waist=?, hip=? where name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, person.getAge());
			pstmt.setString(2, person.getGender().toString());
			pstmt.setDouble(3, person.getHeight());
			pstmt.setDouble(4, person.getWeight());
			pstmt.setDouble(5, person.getNeck());
			pstmt.setDouble(6, person.getWaist());
			pstmt.setDouble(7, person.getHip());
			pstmt.setString(8, person.getName());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return 0;
	}
	
	// select(find/get)
	public PersonBMICalculator select(String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from person where name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return createFromResultSet(rs);
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	
	public PersonBMICalculator createFromResultSet(ResultSet rs) throws SQLException {
		String name = rs.getString("name");
		int age = Integer.parseInt(rs.getString("age"));
		Gender gender = Gender.nameOf(rs.getString("gender"));
		Double height = rs.getDouble("height");
		Double weight = rs.getDouble("weight");
		Double neck = rs.getDouble("neck");
		Double waist = rs.getDouble("waist");
		Double hip = rs.getDouble("hip");
		PersonBMICalculator person = new PersonBMICalculator(name, age, gender, height, weight, neck, waist, hip);
		return person;
	}
	
	// selectList
	public List<PersonBMICalculator> selectList() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from person";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<PersonBMICalculator> list = new ArrayList<>();
			while (rs.next()) {
				list.add(createFromResultSet(rs));
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

}
