package kosta.ridonbox.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MyPageDTO;
import kosta.ridonbox.util.DbUtil;

public class UserDAOImpl implements UserDAO {

	@Override
	public int loginMember(String id, String password) throws SQLException {
		int re = 0; 
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="select * from member where id=? and password=?";
		
		con = DbUtil.getConnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		ps.setString(1, id);
		ps.setString(2, password);
		
		if(rs.next()) {	
			re = 1;
		}
		DbUtil.dbClose(con, ps, rs);		
		
		return re;
	}

	@Override
	public int joinMember(MemberDTO memberDTO) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		String sql="insert into member values(?, ?, ?, ?, ?)";
		
		con = DbUtil.getConnection();
		ps = con.prepareStatement(sql);
		int re=0 ;
		
			ps.setString(1, memberDTO.getMemberId());
			ps.setString(2, memberDTO.getMemberPwd());
			ps.setString(3, memberDTO.getEmail());
			ps.setString(4, memberDTO.getPhone());
			ps.setString(5, memberDTO.getJoinDate());		
			
		re = ps.executeUpdate();
		DbUtil.dbClose(con, ps);
		return re;
	}
	
	@Override
	public int checkById(String id)  throws SQLException{
		int re = 0 ;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="select * from member where id=?";
		
		con = DbUtil.getConnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if(rs.next()) {
			ps.setString(1, id);
			re = 1;
		}
		DbUtil.dbClose(con, ps, rs);		
		
		return re;
	}

	@Override
	public List<MovieDTO> showByBoxoffice() throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs =null;
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		try{
			 ps = con.prepareStatement( "select * from movie_info");
			 rs = ps.executeQuery();
			 while(rs.next()){
				 MovieDTO movie = new MovieDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10));
				 
			    list.add(movie);
			 }
		}finally{
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public List<MovieDTO> showByLatest() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MovieDTO showDetail(String movieNo) throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		
		ps = con.prepareStatement("select * from movie_info where movie_num=?");
		ps.setString(1, movieNo);
		rs = ps.executeQuery();
		
		if(rs.next()) {
			dto = new MovieDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10));
		}
		
		DbUtil.dbClose(con, ps, rs);
		
		return dto;
	}

	@Override
	public int Booking(BookDTO booking) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EventDTO> listEvent() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO myPageByMember(String id) throws SQLException {
		Connection con=null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberDTO member=null;
		try {
		con = DbUtil.getConnection();
		ps = con.prepareStatement("select * from member where MEMBER_ID =?");
		ps.setString(1, id);
		rs=ps.executeQuery();
		
		if(rs.next()) { member = new MemberDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
		}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return member;
		
	}


	@Override
	public int myPageByMemberUpdate(MemberDTO memberDTO) throws SQLException {
		Connection con=null;
		PreparedStatement ps = null;
		int result=0;
		try {
		con = DbUtil.getConnection();
		ps = con.prepareStatement("update MEMBER set MEMBER_PASSWORD=?, MEMBER_EMAIL=?, "
				+ "MEMBER_PHONE=? where MEMBER_ID=?");
		ps.setString(1, memberDTO.getMemberPwd());
		ps.setString(2, memberDTO.getEmail());
		ps.setString(3, memberDTO.getPhone());
		ps.setString(4, memberDTO.getMemberId());
		result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public List<BookDTO> myPageByMemberBooking(String id) throws SQLException {
		Connection con=null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<BookDTO> list =new ArrayList<>();
		try {
		con = DbUtil.getConnection();
		ps = con.prepareStatement("select * from reservation where MEMBER_ID =?");
		ps.setString(1, id);
		rs=ps.executeQuery();
		String test = "test";
		while(rs.next()) { 
			list.add(new BookDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
		}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}


}
