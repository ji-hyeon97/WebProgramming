package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.BuyBean;

public class BuyDAOImpl implements BuyDAO {
	private Connection conn = null;
	
	public BuyDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
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

	@Override
	public int delete(int num) {
		PreparedStatement pstmt = null;
		try {
			String sql = "delete from buy where num=?";
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

	@Override
	public int edit(BuyBean bean) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update buy set prod_name=?,group_name=?,price=?,amount=? where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getNum());
			pstmt.setString(2, bean.getProd_name());
			pstmt.setString(3, bean.getGroup_name());
			pstmt.setInt(4, bean.getPrice());
			pstmt.setDouble(5, bean.getAmount());
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