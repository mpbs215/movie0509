package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dao.AdminDAO;
import kosta.ridonbox.model.dao.AdminDAOImpl;
import kosta.ridonbox.model.dto.BranchDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MovieScreenDTO;
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
	public List<MovieScreenDTO> movieList() throws SQLException{
		List<MovieScreenDTO> list = adminDAO.movieList();
		if(list==null || list.size()==0) {
			throw new SQLException();
		}
		
		return list;
	}
	
	@Override
	public List<TheaterDTO> theaterList() throws SQLException{
		List<TheaterDTO> list = adminDAO.theaterList();
		if(list==null || list.size()==0) {
			throw new SQLException();
		}
		
		return list;
	}

}
