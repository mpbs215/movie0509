package kosta.ridonbox.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.util.DbUtil;

public class ReservationDAOImpl implements ReservationDAO {

	@Override
	public List<ReservationDTO> selectAll() throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ReservationDTO> list = new ArrayList<>();
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from reservation");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				ReservationDTO revDTO = new ReservationDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6));
				
						list.add(revDTO);
			}
			
		} finally { DbUtil.dbClose(con, ps, rs); }
		
		return list;
	}

	@Override
	public ReservationDTO selectByRevNum(String revNum) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ReservationDTO reservationDTO = new ReservationDTO();
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from reservation where rev_num=?" );
			ps.setString(1, revNum);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				reservationDTO = new ReservationDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6));
			}
			
		} finally { DbUtil.dbClose(con, ps, rs); } 
		
		return reservationDTO;
	}

	@Override
	public int deleteRev(String revNum) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
				con = DbUtil.getConnection();
				ps = con.prepareStatement("delete from reservation where rev_num = ? ");
				ps.setString(1, revNum);
				
				result = ps.executeUpdate();
				 
		} finally { DbUtil.dbClose(con, ps); } 
		
		return result;
	}

	@Override
	public int updateRev(ReservationDTO reservationDTO) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("update reservation set member_id = ?, "
					+ "movie_num =?, theater_name=?, screen_num=?, rev_pep=? where rev_num=?");
			
			ps.setString(1, reservationDTO.getMemberId());
			ps.setString(2,  reservationDTO.getMovieNum());
			ps.setString(3, reservationDTO.getTheaterName());
			ps.setString(4, reservationDTO.getScreenNum());
			ps.setInt(5, reservationDTO.getRevPep());
			ps.setString(6, reservationDTO.getRevNum());
			
			result = ps.executeUpdate();
			
		} finally { DbUtil.dbClose(con,  ps); }
		
		return result;
	}

	@Override
	public int insert(ReservationDTO reservationDTO, MemberDTO memberDTO, MovieDTO movieDTO, ScreenDTO screenDTO)
			throws SQLException {
			Connection con = null;
			PreparedStatement ps = null;
			
			int result = 0;
			try { 
					con = DbUtil.getConnection();
					ps = con.prepareStatement("insert into reservation values(?,?,?,?,?,?)" );
					
					ps.setString(1, reservationDTO.getRevNum());
					ps.setString(2, memberDTO.getMemberId());
					ps.setString(3, movieDTO.getMovieNum());
					ps.setString(4, screenDTO.getTheaterName());
					ps.setString(5, screenDTO.getScreenNum());
					ps.setInt(6, reservationDTO.getRevPep());
					
					result = ps.executeUpdate();
					
			} finally { DbUtil.dbClose(con, ps); }
		
			   return result;
		}

}
