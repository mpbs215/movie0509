package kosta.ridonbox.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kosta.ridonbox.model.dto.BranchDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;
import kosta.ridonbox.util.DbUtil;

public class AdminDAOImpl implements AdminDAO {

	@Override
	public int branchInsert(ScreenDTO screenDTO) throws SQLException {

		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into screen_info values(?,?,?,?,?)");
			ps.setString(1, screenDTO.getScreenNum());
			ps.setString(3, screenDTO.getMovieNum());
			ps.setString(3, screenDTO.getTheaterName());
			ps.setString(4, screenDTO.getScreenDate());
			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(con, ps);
		}

		return result;
	}

	@Override
	public int eventInsert(EventDTO eventDTO) throws SQLException {

		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into event values(?,?,?,?,?)";
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, eventDTO.getEventNo());
			ps.setString(2, eventDTO.getEventTitle());
			ps.setString(3, eventDTO.getContext());
			ps.setString(4, eventDTO.getDate());
			ps.setString(5, eventDTO.getImgsrc());

			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public BranchDTO branchUpdate(int branchNo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int eventUpdate(EventDTO eventDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update EVENT set  event_Title=?, event_conts=?, event_date=?, event_path=? where event_num=? ";
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, eventDTO.getEventTitle());
			ps.setString(2, eventDTO.getContext());
			ps.setString(3, eventDTO.getDate());
			ps.setString(4, eventDTO.getImgsrc());
			ps.setInt(5, eventDTO.getEventNo());

			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int eventDelete(int eventNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("delete event where event_num=?");

			ps.setInt(1, eventNo);

			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int movieInsert(MovieDTO dto) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		int result =0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into movie_info values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1,dto.getMovieNum());
			ps.setString(2, dto.getMovieTitle());
			ps.setString(3, dto.getMovieEtitle());
			ps.setString(4, dto.getMovieDate());
			ps.setString(5, dto.getMovieCountry());
			ps.setString(6, dto.getMovieDir());
			ps.setString(7, dto.getMovieState());
			ps.setString(8, dto.getMoviePath());
			ps.setString(9, dto.getMovieYoutube());
			result=ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int movieUpdate(MovieDTO movieNo) throws SQLException {

		return 0;
	}
	
	@Override
	public List<MovieDTO> movieList() throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MovieDTO> list = new ArrayList<>();
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select*from movie_info");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String movieNum=rs.getString("movie_num");
				String movieTitle= rs.getString("movie_title");
				String movieEtitle = rs.getString("movie_etitle");
				String movieDate=rs.getString("movie_date");
				String movieCountry=rs.getString("movie_country");
				String movieDir=rs.getString("movie_Dir");
				String movieState=rs.getString("movie_state");
				String moviePath=rs.getString("movie_path");
				String movieYoutube=rs.getString("movie_youtube");
				
				MovieDTO dto = new MovieDTO(movieNum, movieTitle, movieEtitle, movieDate, movieCountry, movieDir, movieState, moviePath, movieYoutube);
				list.add(dto);
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return list;
	}

	@Override
	public List<MovieScreenDTO> screenList() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MovieScreenDTO> list = new ArrayList<>();

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select*from movie_info natural join screen_info");
			rs = ps.executeQuery();

			while (rs.next()) {
				String movieNum = rs.getString("movie_num");
				String movieTitle = rs.getString("movie_title");
				String movieEtitle = rs.getString("movie_etitle");
				String movieDir = rs.getString("movie_dir");
				String movieDate = rs.getString("movie_date");
				String moviePath = rs.getString("movie_path");
				String movieYoutube = rs.getString("movie_youtube");
				String movieState = rs.getString("movie_state");
				String screenNum = rs.getString("screen_num");
				String theaterName = rs.getString("theater_name");
				String screenDate = rs.getString("screen_date");
				String screenTime = rs.getString("screen_time");
				
				MovieScreenDTO dto = new MovieScreenDTO(movieNum, movieTitle, screenNum, theaterName, screenDate, screenTime);
				list.add(dto);
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}

		return list;
	}

	@Override
	public List<TheaterDTO> theaterList() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<TheaterDTO> list = new ArrayList<>();

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select*from theater");
			rs = ps.executeQuery();

			while (rs.next()) {
				String theaterName = rs.getString(1);
				int theaterTotal = rs.getInt(2);
				TheaterDTO dto = new TheaterDTO(theaterName, theaterTotal);
				list.add(dto);
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public int movieDelete(String movieNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps=null;
		int result=0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("delete from movie_info where movie_num=?");
			ps.setString(1, movieNo);
			
			result=ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}

		return result;
	}

	@Override
	public int screenDelete(String screenNum) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result=0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("delete from screen_info where screen_num=?");
			ps.setString(1, screenNum);
			result=ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int screenInsert(ScreenDTO dto) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into screen_info values(?,?,?,?,?)");
			ps.setString(1, dto.getScreenNum());
			ps.setString(2, dto.getMovieNum());
			ps.setString(3, dto.getTheaterName());
			ps.setString(4, dto.getScreenDate());
			ps.setInt(5, dto.getScreenTime());
			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(con, ps);
		}

		return result;
	}

	@Override
	public int theaterDelete(String theaterName) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("delete from theater where theater_name=?");
			ps.setString(1, theaterName);
			result=ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int theaterInsert(TheaterDTO dto) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into theater values(?,?)");
			ps.setString(1, dto.getTheaterName());
			ps.setInt(2, dto.getTheaterTotal());
			result=ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

}