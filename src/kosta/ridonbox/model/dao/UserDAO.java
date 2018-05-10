package kosta.ridonbox.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.dto.MyPageDTO;
import kosta.ridonbox.model.dto.ReservationDTO;

public interface UserDAO {
	/**
	 * �����(��) �α���
	 * 
	 * @param id
	 *            (����� ���̵�)
	 * @param password
	 *            (����� ���)
	 * @return int : 1 �̻��̸� ����, 0�̸� ����
	 */
	public int loginMember(String id, String password) throws SQLException;

	/**
	 * �����(��) ȸ������
	 * 
	 * @param MemberDTO
	 *            (memberId, memberPwd, email, phone, joinDate)
	 * @return int : 1 �̻��̸� ����, 0�̸� ����
	 */
	public int joinMember(MemberDTO memberDTO) throws SQLException;

	/**
	 * �ڽ����ǽ� ���� ����
	 * 
	 * @return List<MovieDTO> �ڽ����ǽ� ������ �����Ͽ� ����Ʈ�� ��ȯ
	 * @throws SQLException
	 */
	public List<MovieDTO> showByBoxoffice() throws SQLException;

	/**
	 * �ֽŰ����� ���� ����
	 * 
	 * @return List<MovieDTO> �ֽŰ����� ������ �����Ͽ� ����Ʈ�� ��ȯ
	 * @throws SQLException
	 */
	public List<MovieDTO> showByLatest() throws SQLException;

	/**
	 * ���� ��ȭ����
	 * 
	 * @param movieNo
	 *            (pk)
	 * @return MovieDTO
	 * @throws SQLException
	 */
	public MovieDTO showDetail(String movieNo) throws SQLException;

	/**
	 * ���� �ý���
	 * 
	 * @param booking
	 *            (pk)
	 * @return int : 1 �̻��̸� ����, 0�̸� ����
	 * @throws SQLException
	 */
	public int Booking(BookDTO booking) throws SQLException;

	/**
	 * ����ڰ� �̺�Ʈ������ ����
	 * 
	 * @return List<EventDTO>
	 * @throws SQLException
	 */
	public List<EventDTO> listEvent() throws SQLException;

	// ����������
	// ȸ����������, ������������
	/**
	 * ����� ���������� / ���������� ���ο��� ����������� �ѷ��ش�.
	 * 
	 * @param id
	 *            (member)
	 * @return MyPageDTO
	 * @throws SQLException
	 */
	public MemberDTO myPageByMember(String id) throws SQLException;

	/**
	 * ����� ���������� / ���������� ���ο��� ����������� �����Ѵ�.
	 * 
	 * @param MyPageDTO
	 * @return MyPageDTO
	 * @throws SQLException
	 */
	public int myPageByMemberUpdate(MemberDTO memberDto) throws SQLException;

	/**
	 * ����� ���������� / ���������� ���ο��� ����� ���� ������ �ѷ��ش�.
	 * 
	 * @param id
	 *            (member)
	 * @return List<myPageDTO>
	 * @throws SQLException
	 */
	public List<BookingDTO> myPageByMemberBooking(String id) throws SQLException;

	/**
	 * ����� �������������� ���� ��Ҹ޼ҵ�
	 * @param revNum ���� ���� 
	 * @return Ȯ��
	 * @throws SQLException
	 */
	public int deleteByBooking(String revNum) throws SQLException;
	
	String checkById(String id) throws SQLException;
	
	/**
	 * QA ���
	 * @param qaDAO 
	 * @return int : 1 �̻� - ����, 0 - ����
	 */
	public int qaInsert(QnADTO qnADTO) throws SQLException;
	
	/**
	 * QA ������Ʈ
	 * @param qaNo (pk)
	 * @return int : 1 �̻� - ����, 0 - ����
	 */
	public int qaUpdate(QnADTO qnADTO) throws SQLException;
	

	/**
	 * QA ����
	 * @param qaNo (pk)
	 * @return int : 1 �̻� - ����, 0 - ����
	 */
	public int qaDelete(int qaNo) throws SQLException;
	

	/**
	 * QA��ü�˻�
	 * */
	public List<QnADTO> selectAll();
	
	/**
	  * QA ��ȣ�� �ش��ϴ� QA �˻�
	  * */
	QnADTO selectByQaNo(int qnaNo) throws SQLException;
 
	

	
	
	
	
	/**
	 * 		����ڿ��� ��ȭ����Ʈ�� �ѷ��ִ� �޼ҵ�(����������)
	 *		@return Ȯ��
	 * 		@throws SQLException
	 * */
	public List<MovieDTO> movieNameList() throws SQLException;
	
	
	
	/**
	 *  ������� ��ȭ ��¥�� �ѷ��ִ� �޼ҵ�( ����������)
	 * */
	public List<String> movieDateList(String movieNum) throws SQLException;
	
	
	/**
	 *  ������ ��ȭ, ��¥�� ���� ���� ���� �ð��� �����ִ� �޼ҵ�(���� ������)
	 * */
	public List<Integer> movieTimeList(String movieNum) throws SQLException;
	
	/**
	 *  �ð� ���� �Ͽ��� ���� �̹������, �󿵰� �̸�, �󿵰� ��ȣ�� �ش��ϴ� ��ȭ��ȣ�� ���� ���� �̿��Ͽ� �����´�
	 * */
	public List<String> movieRevList(String movieNum) throws SQLException;
	
	
	/**
	 * 	���� ���̺� �����ؾ� �ϴ� �������� DTO�� insert���ش�.
	 * */
	public int revList(ReservationDTO revDTO) throws SQLException;

	/**
	 * ����� qna �亯 ���ε��ϴ� �޼ҵ�
	 * @param qaDTO
	 * @return
	 * @throws SQLException
	 */
	int qaCommendUpdate(QnADTO qaDTO) throws SQLException;
	
}
