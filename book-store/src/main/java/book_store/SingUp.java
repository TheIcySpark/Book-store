package book_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class SingUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SingUp() {
        super();
    }


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String lastName = request.getParameter("last_name");
		String direction = request.getParameter("direction");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Connection databaseConnection = DatabaseConnection.createConnection();
		
		PreparedStatement preparedStatement;
		try {
			preparedStatement = databaseConnection.prepareStatement("INSERT INTO user (name, last_name, email, password, direction, credits) VALUES (?, ?, ?, ?, ?, ?)");
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, password);
			preparedStatement.setString(5, direction);
			preparedStatement.setFloat(6, 0);
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
