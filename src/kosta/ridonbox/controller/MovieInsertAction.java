package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;

public class MovieInsertAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ModelAndView mv = new ModelAndView();
		mv.setPath("web/adminRegist.jsp");
		mv.setRedirect(true);
		String saveDir="C:\\images";
		MultipartRequest m = new MultipartRequest(request, saveDir,
				1000000,"UTF-8",new DefaultFileRenamePolicy());
		String moviePath=saveDir+"\\"+m.getFilesystemName("file");
		String movieNum=m.getParameter("movieNum");
		String movieTitle = m.getParameter("movieTitle");
		String movieEtitle = m.getParameter("movieEtitle");
		if(movieEtitle==null || movieEtitle.isEmpty()) {movieEtitle="정보 없음";}
		String movieDir = m.getParameter("movieDir");
		String movieDate = m.getParameter("movieDate");
		String movieYoutube = m.getParameter("movieYoutube");
		String movieState = m.getParameter("movieState");
		String movieCountry = m.getParameter("movieCountry");
		MovieDTO dto = new MovieDTO(movieNum, movieTitle, movieEtitle, movieDate, movieCountry, movieDir, movieState, moviePath, movieYoutube);
		
		AdminService service = new AdminServiceImpl();
		try {
			service.movieInsert(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return mv;
	}

}