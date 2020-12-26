package com.clothe.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.clothe.bean.Products;
import com.clothe.bean.Users;
import com.clothe.model.Database;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Products> lists = new ArrayList<>();
	static ArrayList<String> cart = new ArrayList<>();
	ArrayList<Users> users = new ArrayList<>();
	HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pages = request.getParameter("page");
		if(pages == null || pages.equals("index")) {
			
			Database db = new Database();
			 try {
				lists = db.fetch();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 session = request.getSession();
			 session.setAttribute("cartlist", cart);
			 session.setAttribute("list", lists);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			doPost(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pages = request.getParameter("page");
		if(pages.equals("login")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		if(pages.equals("sign-up")) {
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
		
		if(pages.equals("sign-up-form")) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String address = request.getParameter("address");
			String password_1 = request.getParameter("password_1");
			String password_2 = request.getParameter("password_2");
			
			if(password_1.equals(password_2)) {
				
				Users user = new Users();
				user.setAddress(address);
				user.setEmail(email);
				user.setName(name);
				user.setUsername(username);
				user.setPassword(password_1);
				
				Database db = new Database();
				try {
					db.addUsers(user);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				request.setAttribute("username", username);
				request.setAttribute("msg", "Account created successfully, Please Login!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
			}else {
				request.setAttribute("msg", "The two passwords do not match");
				request.setAttribute("name", name);
				request.setAttribute("address", address);
				request.setAttribute("email", email);
				request.setAttribute("username", username);
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			}
			
		}
		
		if(pages.equals("login-form")) {
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			Database db = new Database();
			Users user = new Users();
			boolean status = false;
			try {
				status = db.checkUsers(username,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status) {
				session = request.getSession();
				session.setAttribute("session", session);
				
				try {
					users = db.fetchUser();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				session.setAttribute("address", user.fetchadd(users,username));
				session.setAttribute("email", user.fetchemail(users,username));
				session.setAttribute("name", user.fetchname(users,username));
				session.setAttribute("username", username);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				request.setAttribute("msg", "Invalid Crediantials");
				request.setAttribute("username", username);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
		}
		
		if(pages.equals("logout")) {
			session = request.getSession();
			session.invalidate();
			
			 session = request.getSession();
			 cart.clear();
			 session.setAttribute("cartlist", cart);
			 session.setAttribute("list", lists);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		if(pages.equals("kids_5") || pages.equals("kids_10") || pages.equals("clothing") || pages.equals("woman_western") || pages.equals("women") || 
                        pages.equals("woman_shrugs") || pages.equals("woman_party")|| 
                        pages.equals("men_ethnic") || pages.equals("mens_cas") ||  pages.equals("mens_jeans") ||
                        pages.equals("mens_formals") || pages.equals("all-products")) {
			Database db = new Database();
			 try {
				lists = db.fetch();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("list", lists);
			
			if(pages.equals("kids_5"))
				request.getRequestDispatcher("kids_5.jsp").forward(request, response);
			if(pages.equals("kids_10"))
				request.getRequestDispatcher("kids_10.jsp").forward(request, response);
			if(pages.equals("clothing"))
				request.getRequestDispatcher("clothing.jsp").forward(request, response);
			if(pages.equals("women"))
				request.getRequestDispatcher("women.jsp").forward(request, response);
                        if(pages.equals("woman_western"))
				request.getRequestDispatcher("woman_western.jsp").forward(request, response);
                         if(pages.equals("woman_shrugs"))
				request.getRequestDispatcher("woman_shrugs.jsp").forward(request, response);
                          if(pages.equals("woman_party"))
				request.getRequestDispatcher("woman_party.jsp").forward(request, response);
                           if(pages.equals("men_ethnic"))
				request.getRequestDispatcher("men_ethnic.jsp").forward(request, response);
                           if(pages.equals("mens_cas"))
				request.getRequestDispatcher("mens_cas.jsp").forward(request, response);
                            if(pages.equals("mens_jeans"))
				request.getRequestDispatcher("mens_jeans.jsp").forward(request, response);
                             if(pages.equals("mens_formals"))
				request.getRequestDispatcher("mens_formals.jsp").forward(request, response);
			if(pages.equals("all-products"))
				request.getRequestDispatcher("all-products.jsp").forward(request, response);
                        
		}
		
		
		
		if(pages.equals("showcart")) {
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
		
		if(pages.equals("addtocart")) {
			String id = request.getParameter("id");
			String action = request.getParameter("action");
			Products p = new Products();
			boolean check = p.check(cart,id);
			
			if(check)
				JOptionPane.showMessageDialog(null, "Product is already added to Cart", "Info", JOptionPane.INFORMATION_MESSAGE);
			else {
			cart.add(id);
			JOptionPane.showMessageDialog(null, "Product successfully added to Cart", "Info", JOptionPane.INFORMATION_MESSAGE);
			}
			
			if(action.equals("index"))
				request.getRequestDispatcher("index.jsp").forward(request, response);
			if(action.equals("allproducts"))
				request.getRequestDispatcher("all-products.jsp").forward(request, response);
			if(action.equals("clothing"))
				request.getRequestDispatcher("clothing.jsp").forward(request, response);
			if(action.equals("women"))
				request.getRequestDispatcher("women.jsp").forward(request, response);
                        if(action.equals("woman_western"))
				request.getRequestDispatcher("woman_western.jsp").forward(request, response);
                         if(action.equals("woman_shrugs"))
				request.getRequestDispatcher("woman_shrugs.jsp").forward(request, response);
			if(action.equals("kids_10"))
				request.getRequestDispatcher("kids_10.jsp").forward(request, response);
			if(action.equals("kids_5"))
				request.getRequestDispatcher("Kids_5.jsp").forward(request, response);
                         if(action.equals("woman_party"))
				request.getRequestDispatcher("woman_party.jsp").forward(request, response);
                          if(action.equals("men_ethnic"))
				request.getRequestDispatcher("men_ethnic.jsp").forward(request, response);
                          if(action.equals("mens_cas"))
				request.getRequestDispatcher("mens_cas.jsp").forward(request, response);
                            if(action.equals("mens_jeans"))
				request.getRequestDispatcher("mens_jeans.jsp").forward(request, response);
                            if(action.equals("mens_formals"))
				request.getRequestDispatcher("mens_formals.jsp").forward(request, response);
		}
		
		if(pages.equals("success")) {
			
			request.getRequestDispatcher("success.jsp").forward(request, response);
			
			session = request.getSession();
			 cart.clear();
			 session.setAttribute("cartlist", cart);
		}
                
		if(pages.equals("checkout")) {
			
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
			
			session = request.getSession();
			 cart.clear();
			 session.setAttribute("cartlist", cart);
		}
		
		if(pages.equals("remove")) {
			String id = request.getParameter("id");
			Products p = new Products();
			cart = p.remove(cart,id);
			
			session = request.getSession();
			session.setAttribute("cartlist", cart);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
		
		if(pages.equals("price-sort")) {
			String price = request.getParameter("sort");
			String action = request.getParameter("action");
			Products p = new Products();
			if(price.equals("low-to-high"))
				lists = p.lowtohigh(lists);
			else
				lists = p.hightolow(lists);
			
			session.setAttribute("list", lists);
			
			if(action.equals("index"))
				request.getRequestDispatcher("index.jsp").forward(request, response);
			if(action.equals("all-products"))
				request.getRequestDispatcher("all-products.jsp").forward(request, response);
			if(action.equals("kids_5"))
				request.getRequestDispatcher("kids_5.jsp").forward(request, response);
			if(action.equals("kids_10"))
				request.getRequestDispatcher("kids_10.jsp").forward(request, response);
			if(action.equals("clothing"))
				request.getRequestDispatcher("clothing.jsp").forward(request, response);
			if(action.equals("women"))
				request.getRequestDispatcher("women.jsp").forward(request, response);
                        if(action.equals("woman_western"))
				request.getRequestDispatcher("woman_western.jsp").forward(request, response);
                        if(action.equals("woman_shrugs"))
				request.getRequestDispatcher("woman_shrugs.jsp").forward(request, response);
                        if(action.equals("woman_party"))
				request.getRequestDispatcher("woman_party.jsp").forward(request, response);
                         if(action.equals("men_ethnic"))
				request.getRequestDispatcher("men_ethnic.jsp").forward(request, response);
                         if(action.equals("mens_cas"))
				request.getRequestDispatcher("mens_cas.jsp").forward(request, response);
                          if(action.equals("mens_jeans"))
				request.getRequestDispatcher("mens_jeans.jsp").forward(request, response);
                          if(action.equals("mens_formals"))
				request.getRequestDispatcher("mens_formals.jsp").forward(request, response);
		}
	}

}
