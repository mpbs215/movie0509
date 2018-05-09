package kosta.ridonbox.model.dao;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.BranchDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;

public interface AdminDAO {
	
	/**
	 * 이벤트 등록
	 * @param evetDAO 
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int eventInsert(EventDTO eventDTO) throws SQLException;
	
	/**
	 * 이벤트 업데이트
	 * @param evetNo (pk)
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int eventUpdate(EventDTO eventDTO) throws SQLException;

	/**
	 * 이벤트 삭제
	 * @param evetNo (pk)
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int eventDelete(int eventNo) throws SQLException;

	/**
	 * 영화 등록
	 * @param MovieDTO
	 * @return boolean : true - 성공, false - 실패
	 */
	public int movieInsert(MovieDTO movieDTO) throws SQLException;

	/**
	 * 영화 수정
	 * @param movieNo (pk)
	 * @return boolean : true - 성공, false - 실패
	 */
	public int movieUpdate(MovieDTO movieNo) throws SQLException;

	/**
	 * 상영 시간표 정보 등록
	 * @param BranchDTO 
	 * @return boolean : true - 성공, false - 실패
	 */
	public int branchInsert(ScreenDTO screenDTO) throws SQLException;

	/**
	 * 상영 시간표 정보 수정
	 * @param branchNo (pk) //복합키로 관리하는게 편함
	 * @return boolean : true - 성공, false - 실패
	 */
	public BranchDTO branchUpdate(int branchNo) throws SQLException;

	List<MovieScreenDTO> movieList() throws SQLException;

	List<TheaterDTO> theaterList() throws SQLException;

	public int movieDelete(String movieNo) throws SQLException;


}
