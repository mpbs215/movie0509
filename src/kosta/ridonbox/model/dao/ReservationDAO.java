package kosta.ridonbox.model.dao;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;
import kosta.ridonbox.model.dto.ScreenDTO;



public interface ReservationDAO {

	/**
	 * 어떤 영화를 누가 몇개나 예매 했는지와 같은 예매 정보를 모두 보여주는 메소드
	 * */
	List<ReservationDTO> selectAll() throws SQLException;
	
	
	/**
	 * 예매 추가
	 * */
	int insert(ReservationDTO reservationDTO, MemberDTO memberDTO, MovieDTO movieDTO, ScreenDTO screenDTO) throws SQLException;
	
	
	/**
	 * 특정 예매 정보를 보여주는 메소드
	 * */
	ReservationDTO selectByRevNum(String revNum) throws SQLException;
	

	/**
	 * 예매를 하였다가 취소할 경우 예매 관련 정보를 삭제할 때 사용하는 메소드
	 * */
	int deleteRev(String revNum) throws SQLException;
	
	
	
	/**
	 * 예매한 정보 중에 잘 못 되거나 수정해야 하는 부분이 있을때 사용하는 메소드
	 * */
	int updateRev(ReservationDTO reservationDTO) throws SQLException;
	
}
