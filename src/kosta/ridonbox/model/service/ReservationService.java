package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.ReservationDTO;

public interface ReservationService {

	/**
	 * reservationService 예매 리스트 전체를 보여주는 비즈니스 로직 처리하는 부분
	 * */
	 List<ReservationDTO> selectAll() throws SQLException;
	
	 
	 /**
	  * 예매에 대한 비즈니스 로직을 처리하는 부분
	  * */
	 int insert(ReservationDTO reservationDTO) throws SQLException;
	
	 
	 /**
	  * 예매를 하였다가 취소를 할 때 비즈니스 로직을 처리하는 부분
	  * */
	 int deleteRev(String revNum) throws SQLException;
	 
	 
	 /**
	  *  예매 정보중 수정해야 하는 부분이 있을 때 비즈니스로직 처리하는 부분
	  * */
	 
	 int updateRev(ReservationDTO reservationDTO) throws SQLException;
	 
	 
	 /**
	  *  특정 예매 정보를 보여줄 때 비즈니스로직을 처리하는 부분
	  * */
	 ReservationDTO selectByRevNum(String revNum) throws SQLException;
}

