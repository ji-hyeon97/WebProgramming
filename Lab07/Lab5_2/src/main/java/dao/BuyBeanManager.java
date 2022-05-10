package dao;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import dto.BuyBean;

public class BuyBeanManager implements BuyDAO {
	private List<BuyBean> pList = new ArrayList<BuyBean>();

	private static BuyBeanManager instance = new BuyBeanManager();
	public static BuyBeanManager getInstance(){
		return instance;
	}
	
	public BuyBeanManager() {
		pList.add(new BuyBean(1, "10","10",10,10));
		pList.add(new BuyBean(2, "10","10",10,10));
		pList.add(new BuyBean(3, "10","10",10,10));
	}
	
	public List<BuyBean> getList() {
		return pList;
	}

	public void setList(List<BuyBean> list) {
		this.pList = list;
	}
	
	// add 
	public void add(BuyBean buybean) {
		pList.add(buybean);
	}
	
	// remove all 
	public void removeAll() {
		Iterator<BuyBean> it = pList.iterator();
		while (it.hasNext()) {
			BuyBean p = it.next();
			it.remove();
		}
	}
	
	// remove 
	public void remove(BuyBean other) {
		Iterator<BuyBean> it = pList.iterator();
		while (it.hasNext()) {
			BuyBean p = it.next();
		    if (p == other) {
				it.remove();
		    }
		}
	}
	
	// get 
	public BuyBean get(BuyBean other) {
		Iterator<BuyBean> it = pList.iterator();
		while (it.hasNext()) {
			BuyBean p = it.next();
		    if (p == other) {
		    	return p;
		    }
		}
		return null;
	}

	// get (by name)
	public BuyBean get(String prod_name) {
		BuyBean buybean = null;
		for (BuyBean p : pList) {
			if (p != null && p.getProd_name().equals(prod_name)) {
				buybean = p;
				break;
			}
		}
		return buybean;
	}

	// replace
	public void replace(String prod_name, BuyBean other) {
		int index = pList.indexOf(get(prod_name));
		pList.set(index, other);
	}

private Connection conn = null;
	
	public BuyBeanManager(Connection conn) {
		this.conn = conn;
	}

	public int insert(BuyBean bean) {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into buy values (?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getNum());
			pstmt.setString(2, bean.getProd_name());
			pstmt.setString(3, bean.getGroup_name());
			pstmt.setInt(4, bean.getPrice());
			pstmt.setInt(5, bean.getAmount());
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

	public int delete(int num) {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from mfdsfood where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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

	public int edit(BuyBean bean) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update buy set prod_name=?,group_name=?,price=?,amount=? where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getProd_name());
			pstmt.setString(2, bean.getGroup_name());
			pstmt.setInt(3, bean.getPrice());
			pstmt.setInt(4, bean.getAmount());
			pstmt.setInt(5, bean.getNum());
			
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
}