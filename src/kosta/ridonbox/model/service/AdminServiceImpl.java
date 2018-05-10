package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dao.AdminDAO;
import kosta.ridonbox.model.dao.AdminDAOImpl;
import kosta.ridonbox.model.dto.BranchDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;

public class AdminServiceImpl implements AdminService {
	private static AdminDAO adminDAO = new AdminDAOImpl();

	@Override
	public int eventInsert(EventDTO eventDTO) throws SQLException {
		int result = adminDAO.eventInsert(eventDTO);
		if(result==0) throw new SQLException("등록되지 않았습니다");
		return result;
	}

	@Override
	public int eventUpdate(EventDTO eventNo) throws SQLException {
		int result = adminDAO.eventUpdate(eventNo);
		if(result==0) throw new SQLException("수정되지 않았습니다");
		return result;
	}

	@Override
	public int eventDelete(int eventNo) throws SQLException {
		int result = adminDAO.eventDelete(eventNo);
		if(result==0) throw new SQLException("삭제되지 않았습니다");
		return result;
	}



	@Override
	public int movieDelete(String movieNo) throws SQLException {
		int result = adminDAO.movieDelete(movieNo);
		if(result==0) {
		}
		return result;
	}

	@Override
	public int branchInsert(BranchDTO branchDTO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BranchDTO branchUpdate(int branchNo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int branchDelete(int branchNo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	

	@Override
	public int movieInsert(MovieDTO movieDTO) throws SQLException {
		int result = adminDAO.movieInsert(movieDTO);
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
		return result;
	}
	
	@Override
	public int movieUpdate(MovieDTO movieDTO) throws SQLException {
		int result = adminDAO.movieUpdate(movieDTO);
		if(result==0) throw new SQLException("수정되지 않았습니다.");
		return result;
	}
	
	@Override
	public List<MovieDTO> movieList() throws SQLException{
		List<MovieDTO> list = adminDAO.movieList();
		
		return list;
	}
	
	@Override
	public List<TheaterDTO> theaterList() throws SQLException{
		List<TheaterDTO> list = adminDAO.theaterList();
		
		return list;
	}

	@Override
	public int screenDelete(String screenNum) throws SQLException {
		int result=adminDAO.screenDelete(screenNum);
		if(result==0) {
			throw new SQLException("삭제 실패");
		}
		return result;
		
	}
	
	@Override
	public List<MovieScreenDTO> screenList() throws SQLException {
		List<MovieScreenDTO> list = adminDAO.screenList();
		
		return list;
	}

	@Override
	public int screenInsert(ScreenDTO dto) throws SQLException {
		int result=adminDAO.screenInsert(dto);
		return result;
	}

	@Override
	public int theaterDelete(String theaterName) throws SQLException {
		int result=adminDAO.theaterDelete(theaterName);
		return result;
	}

	@Override
	public int theaterInsert(TheaterDTO dto) throws SQLException{
		int result=adminDAO.theaterInsert(dto);
		return result;
	}

}
