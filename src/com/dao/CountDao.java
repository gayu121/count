package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Count;
import com.util.BaseConnection;




public class CountDao {
	
	public static boolean add(Count count)
	{
		boolean f = false;
		Connection conn = BaseConnection.getConnection();
		String sql = "insert into count1(year, month, day, money, lei) values('" + count.getYear() + "','" + count.getMonth() + "','" + count.getDay() + "','" +  count.getMoney() +  "','" + count.getLei() + "')";
		Statement state = null;
		int a = 0;
		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			BaseConnection.close(state, conn);
		}
		
		if(a >0)
		{
			System.out.println("添加成功");
			f = true;
		}else {
			System.out.println("失败");
		}
		return f;
	}
	
	public static List<Count> list() {
		String sql = "select * from count1";
		List<Count> list = new ArrayList<>();
		Connection conn = BaseConnection.getConnection();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Count count = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				int year = rs.getInt("year");
				int month = rs.getInt("month");
				int day = rs.getInt("day");
				double money = rs.getDouble("money");
				String lei = rs.getString("lei");
				count = new Count(id, year, month, day, money, lei);
				list.add(count);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BaseConnection.close(rs, state, conn);
		}
		
		return list;
	}
	
	
	public static Count getById(int id)
	{
		
		String sql = "select * from count1 where id ='" + id + "'";
		Connection conn = BaseConnection.getConnection();
		Count count = null;
		Statement state = null;
		ResultSet rs = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				int year = rs.getInt("year");
				int month = rs.getInt("month");
				int day = rs.getInt("day");
				double money = rs.getDouble("money");
				String lei = rs.getString("lei");
				
				
				count = new Count(id, year, month, day, money,lei);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			BaseConnection.close(rs, state, conn);
		}
		return count;
	}

	public static boolean delete(int id)
	{
		boolean f = false;
		
		String sql = "delete from count1 where id='" + id + "'";
		Statement state = null;
		Connection conn = BaseConnection.getConnection();
		
		int a = 0;
		
		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			BaseConnection.close(state, conn);
		}
		
		if(a > 0)
		{
			f = true;
		}
		return f;
		
	}
	
	
	public static boolean update(Count count) {
		String sql = "update count1 set year='" + count.getYear() + "', month='" + count.getMonth() + "', day='" + count.getDay() + "', money='" + count.getMoney() + "', lei='" + count.getLei()
			+ "' where id='" + count.getId() + "'";
		Connection conn = BaseConnection.getConnection();
		Statement state = null;
		boolean f = false;
		int a = 0;

		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BaseConnection.close(state, conn);
		}
		
		if (a > 0) {
			f = true;
		}
		return f;
	}
	
	public static List<Count> find(String year,String month,String day)
	{
		
		List<Count> list = new ArrayList<Count>();
		
		
		String sql = "select * from count1 where ";
		if (year != null) {
			
			sql += "year = '" + year + "'";
			if (month != null) {
				
				sql += "and month ='" + month + "'";
			}
			if (day != null) {
				sql += "and day = '" + day + "'";
			}
		}else if (month != null) {				
				sql += " month ='" + month + "'";
				if (day != null) {
					sql += "and day = '" + day + "'";
				}
		}else {
			sql += " day = '" + day + "'";
		}
		
		
		
		
		
		
		Connection conn = BaseConnection.getConnection();
		Statement state = null;
		ResultSet rs = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Count count = null;
			while (rs.next()) {
				
				int id = rs.getInt("id");
				int year1 = rs.getInt("year");
				int month1 = rs.getInt("month");
				int day1 = rs.getInt("day");
				double money = rs.getDouble("money");
				String lei = rs.getString("lei");
			
				count = new Count(id, year1,month1,day1,money,lei);
				list.add(count);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally
		{
			BaseConnection.close(rs, state, conn);
		}
		return list;
	}
	
	public static List<Count> lei(String lei)
	{
		
		List<Count> list = new ArrayList<Count>();
		
		
		String sql = "select * from count1 where ";
		
			sql += " lei = '" + lei + "'";		
		
		Connection conn = BaseConnection.getConnection();
		Statement state = null;
		ResultSet rs = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Count count = null;
			while (rs.next()) {
				
				int id = rs.getInt("id");
				int year1 = rs.getInt("year");
				int month1 = rs.getInt("month");
				int day1 = rs.getInt("day");
				double money = rs.getDouble("money");
				String lei1 = rs.getString("lei");
			
				count = new Count(id, year1,month1,day1,money,lei1);
				list.add(count);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally
		{
			BaseConnection.close(rs, state, conn);
		}
		return list;
	}
	
	
	public static List<Count> money() {
		String sql = "select * from count1 order by money DESC";
		List<Count> list = new ArrayList<>();
		Connection conn = BaseConnection.getConnection();
		Statement state = null;
		ResultSet rs = null;

		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Count count = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				int year = rs.getInt("year");
				int month = rs.getInt("month");
				int day = rs.getInt("day");
				double money = rs.getDouble("money");
				String lei = rs.getString("lei");
				count = new Count(id, year, month, day, money, lei);
				list.add(count);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BaseConnection.close(rs, state, conn);
		}
		
		return list;
	}

}
