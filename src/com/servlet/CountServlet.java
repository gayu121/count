package com.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Count;
import com.dao.CountDao;

/**
 * Servlet implementation class CountServlet
 */
@WebServlet("/CountServlet")
public class CountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		
		if (method.equals("add")) {
			add(request,response);
		}else if (method.equals("delete")) {
			delete(request,response);
		}else if (method.equals("update")) {
			update(request,response);
		}else if (method.equals("getById1")) {
			getById1(request,response);
		}else if (method.equals("getById2")) {
			getById2(request, response);
		}else if (method.equals("find")) {
			find(request,response);
		}else if (method.equals("list")) {
			list(request,response);
		}else if (method.equals("money")) {
			money(request,response);
		}else if (method.equals("lei")) {
			lei(request,response);
		}
	}

	private void lei(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		String lei = request.getParameter("lei");
		List<Count> count = CountDao.lei(lei);
		request.setAttribute("count", count);
		request.getRequestDispatcher("list.jsp").forward(request,response);
	}

	private void money(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		List<Count> count = CountDao.money();
		
		request.setAttribute("count", count);
		request.getRequestDispatcher("list.jsp").forward(request,response);
	}

	

	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
         List<Count> count = CountDao.list();
		
		request.setAttribute("count", count);
		request.getRequestDispatcher("list.jsp").forward(request,response);
	}

	private void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
		if (year.equals("请选择年份")) {
			year = null;
		}
		
		if (month.equals("请选择月份")) {
			month = null;
		}
		if (day.equals("请选择日期")) {
			day = null;
		}
		
		List<Count> count = CountDao.find(year, month, day);
		request.setAttribute("count", count);
		request.getRequestDispatcher("list.jsp").forward(request,response);
	}

	private void getById2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		Count count = CountDao.getById(id);
		
		request.setAttribute("count", count);
		request.getRequestDispatcher("delete.jsp").forward(request,response);
	}

	private void getById1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		Count count = CountDao.getById(id);
		
		request.setAttribute("count", count);
		request.getRequestDispatcher("update.jsp").forward(request,response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		int day = Integer.parseInt(request.getParameter("day"));
		double money = Double.parseDouble(request.getParameter("money"));
		String lei = request.getParameter("lei");
		Count count = new Count(id, year, month, day, money, lei);
		if (CountDao.update(count)) {
			request.setAttribute("message", "修改成功");
			request.getRequestDispatcher("CountServlet?method=list").forward(request, response);
		}else {
			request.setAttribute("message", "修改失败");
			request.getRequestDispatcher("CountServlet?method=list").forward(request, response);
		}
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		if (CountDao.delete(id)) {
			request.setAttribute("message", "删除成功");
			request.getRequestDispatcher("CountServlet?method=list").forward(request, response);
		}else {
			request.setAttribute("message", "删除失败");
			request.getRequestDispatcher("CountServlet?method=list").forward(request, response);
		}
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		request.setCharacterEncoding("UTF-8");
		String lei = request.getParameter("lei");
		if (lei == null) {
			request.setAttribute("message", "请选择消费类型");
			request.getRequestDispatcher("add.jsp").forward(request, response);
			return;
		}
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		int day = Integer.parseInt(request.getParameter("day"));
		double money = Double.parseDouble(request.getParameter("money"));
		
		Count count = new Count(year,month,day,money,lei);
		if (CountDao.add(count)) {
			request.setAttribute("message", "添加成功");
			request.getRequestDispatcher("add.jsp").forward(request, response);
		}else {
			request.setAttribute("message", "添加失败");
			request.getRequestDispatcher("add.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
