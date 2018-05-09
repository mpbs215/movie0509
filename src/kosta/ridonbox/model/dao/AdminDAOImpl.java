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
			ps.setInt(5, screenDTO.getRevTotal());
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
	public int movieInsert(MovieDTO movieDTO) throws SQLException {

		return 0;
	}

	@Override
	public int movieUpdate(MovieDTO movieNo) throws SQLException {

		return 0;
	}

	@Override
	public List<MovieScreenDTO> movieList() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MovieScreenDTO> list = new ArrayList<>();

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select*from movie_info natural join screen_info");
			rs = ps.executeQuery();

			while (rs.next()) {
				String movie_num = rs.getString("movie_num");
				String movie_title = rs.getString("movie_title");
				String movie_etitle = rs.getString("movie_etitle");
				String movie_dir = rs.getString("movie_dir");
				String movie_act = rs.getString("movie_act");
				String movie_date = rs.getString("movie_date");
				String movie_path = rs.getString("movie_path");
				String movie_youtube = rs.getString("movie_youtube");
				int movie_rat = rs.getInt("movie_rat");
				int movie_state = rs.getInt("movie_state");
				String screenNum = rs.getString("screen_num");
				String theaterName = rs.getString("theater_name");
				String screenDate = rs.getString("screen_date");
				int revTotal = rs.getInt("rev_total");

				MovieScreenDTO dto = new MovieScreenDTO(movie_num, movie_title, movie_etitle, movie_dir, movie_act,
						movie_date, movie_rat, movie_path, movie_youtube, movie_state, screenNum, theaterName,
						screenDate, revTotal);

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

}