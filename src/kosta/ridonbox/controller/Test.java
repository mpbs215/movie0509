package kosta.ridonbox.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class Test
 */
@WebServlet("/test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MultipartRequest m = new MultipartRequest(request, request.getServletContext().getRealPath("/save"),
				1000000,"UTF-8",new DefaultFileRenamePolicy());
		System.out.println("file2 = "+m.getParameter("movieTitle"));
		System.out.println("file2 = "+m.getFilesystemName("file2"));
		
	}



}
