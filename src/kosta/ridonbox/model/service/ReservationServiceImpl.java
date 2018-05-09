package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dao.ReservationDAO;
import kosta.ridonbox.model.dao.ReservationDAOImpl;
import kosta.ridonbox.model.dto.ReservationDTO;

public class ReservationServiceImpl implements ReservationService {

	private static ReservationDAO revDAO = new ReservationDAOImpl();
	
	@Override
	public List<ReservationDTO> selectAll() throws SQLException {
		
		List<ReservationDTO> list = revDAO.selectAll();
		
		return list;
	}

	@Override
	public int insert(ReservationDTO reservationDTO) throws SQLException {
		/*revDAO.insert(reservationDTO, memberDTO, movieDTO, screenDTO)*/
		
		
		return 0;
	}

	@Override
	public int deleteRev(String revNum) throws SQLException {
		int result = revDAO.deleteRev(revNum);
		
		if (result ==0 ) { throw new SQLException("삭제되지 않았습니다."); }
		
		return result;
	} 

	@Override
	public int updateRev(ReservationDTO reservationDTO) throws SQLException {
		int result = revDAO.updateRev(reservationDTO);
		
		if (result == 0 ) { throw new SQLException("수정에 실패 하였습니다."); }
		
		return result;
	}

	@Override
	public ReservationDTO selectByRevNum(String revNum) throws SQLException {
		ReservationDTO revDTO = revDAO.selectByRevNum(revNum);
		
		return revDTO;
	}
}
