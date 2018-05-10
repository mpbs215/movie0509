package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.BranchDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;

public interface AdminService {
		
		
		/**
		 * 이벤트 등록
		 * @param evetDAO 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int eventInsert(EventDTO evetDTO) throws SQLException;
		
		/**
		 * 이벤트 수정
		 * @param evetDAO 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int eventUpdate(EventDTO evetNo) throws SQLException;

		/**
		 * 이벤트 삭제
		 * @param evetNo (pk) 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int eventDelete(int evetNo) throws SQLException;
		
		/**
		 * 영화 등록
		 * @param movieDTO 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int movieInsert(MovieDTO movieDTO) throws SQLException;

		/**
		 * 영화 삭제
		 * @param movieNo(pk)
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int movieUpdate(MovieDTO movieDTO) throws SQLException;

		/**
		 * 상영관 등록
		 * @param branchDTO  
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int branchInsert(BranchDTO branchDTO) throws SQLException;

		/**
		 * 상영관 수정
		 * @param branchNo(pk) (상영관넘버)
		 * @return BranchDTO (수정된값)
		 */
		public BranchDTO branchUpdate(int branchNo) throws SQLException;

		/**
		 * 상영관 수정
		 * @param branchNo(pk) (상영관넘버)
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int branchDelete(int branchNo) throws SQLException;

		int movieDelete(String movieNo) throws SQLException;

		List<MovieDTO> movieList() throws SQLException;

		List<TheaterDTO> theaterList() throws SQLException;

		public int screenDelete(String screenNum) throws SQLException;

		public List<MovieScreenDTO> screenList() throws SQLException;

		public int screenInsert(ScreenDTO dto) throws SQLException;

		public int theaterDelete(String theaterName) throws SQLException;

		public int theaterInsert(TheaterDTO dto) throws SQLException;
}
