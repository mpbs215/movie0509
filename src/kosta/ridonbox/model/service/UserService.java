package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;
import kosta.ridonbox.model.dto.QnADTO;

public interface UserService {
	/**
	 * �α�
	 * @param id �α����� ����ھ��̵� 
	 * @param password �α����� ����ں�й�ȣ 
	 * @return �α��εǾ����� �ȵǾ����� Ȯ
	 */
	public int loginMember(String id,String password) throws SQLException;
	
	/**
	 * ȸ������ 
	 * @param memberDTO ȸ�������� ȸ������ MemberDTO�� ��.
	 * @return ȸ�����ԵǾ����� �ȵǾ����� Ȯ��.
	 * @throws SQLException
	 */
	public int joinMember(MemberDTO memberDTO) throws SQLException;
	
	/**
	 * ���̵� �ߺ�üũ
	 * @param memberID
	 * @return 1�̸� ���̵� �ߺ�, 0�̸� ��밡��
	 * @throws SQLException
	 */
	public String checkById(String id) throws SQLException;
	
	/**
	 *�������������� BoxOffice������ ��ȭ������.
	 * @return BoxOffic�� ��ȭ ���� list
	 * @throws SQLException
	 */
	public List<MovieDTO> showByBoxoffice() throws SQLException;
	
	/**
	 * �������������� �ֽŰ����ۼ����� ������.
	 * @return	�ֽŰ����ۼ� ��ȭ���� list
	 * @throws SQLException
	 */
	public List<MovieDTO> showByLatest() throws SQLException;
	
	/**
	 * ��ȭ�� �����ϸ� �� ��ȭ����(Detail) �����ֱ� ����  
	 * @param movieNo	 ������ ��ȭ ��
	 * @return		 ���õ� ��ȭ������ ������.(MovieDTO)
	 * @throws SQLException
	 */
	public MovieDTO showDetail(String movieNo) throws SQLException;
	
	/**
	 * �������� �����ϴ� Ŭ����  
	 * @param booking �����ϴ� ������ BookDTO�� �Ѱ���.
	 * @return	���ŵǾ����� �ȵǾ�����int�� �Ѱ���.
	 * @throws SQLException
	 */
	public void Booking(BookDTO booking) throws SQLException;
	
	/**
	 * �̺�Ʈ �������� �Ѱ��ֱ� ���ؼ�  
	 * @return	��ü�̺�Ʈ ������ �Ѱ���. 
	 * @throws SQLException
	 */
	public List<EventDTO> listEvent() throws SQLException;
	
/////////////////////////////����������
/**
* �����(��) ������ �����ֱ� ���� 
* @return	memberId (����� ���̵�)
* @throws SQLException 
* @throws MemberDTO 
*/
public MemberDTO memberInfo(String memberId) throws SQLException;

/**����*/
/**
* �����(��) ���� ������ �����ֱ� ����  
* @return	memberId (����� ���̵�) 
* @throws SQLException 
* @throws List<BookDTO> (�� ������� ���� dto ����Ʈ�� ����)
*/
public List<BookingDTO> memberbyBookList(String memberId) throws SQLException;

public int deleteByBooking(String revNum) throws SQLException;

int myPageByMemberUpdate(MemberDTO memberDTO) throws SQLException;


/**
 *  ���� ������ ��ȭ ��ϵ��� �����ֱ� ����
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
 * ���� ����Ʈ�� �����ִ� ��� (���� ������)
 * */
public List<String> movieRevList(String movieNum) throws SQLException;
	

/**
 * bookingView�� Form ���� ������ ������ DB�� �����ϴ� ���
 * */
public int revList(ReservationDTO revDTO) throws SQLException;


	//QA
		/**
		 * QA ���
		 * @param qaDAO 
		 * @return int������ 1 �̻��̸� ����, 0�̸� ����
		 */
		public int qaInsert(QnADTO qaDTO) throws SQLException;
		
		/**
		 * QA ����
		 * @param qaDAO 
		 * @return int������ 1 �̻��̸� ����, 0�̸� ����
		 */
		public int qaUpdate(QnADTO qaNo) throws SQLException;

		/**
		 * QA ����
		 * @param qaNo (pk) 
		 * @return int������ 1 �̻��̸� ����, 0�̸� ����
		 */
		public int qaDelete(int qaNo) throws SQLException;
		
		/**
		 * QA�� ��緹�ڵ� �˻��ϴ� �޼ҵ� ȣ��
		 * @return list
		 * */
		public List<QnADTO> selectAll() throws SQLException;
		
		/**
		 * QA�� QA ��ȣ�� �ش��ϴ� ���ڵ� �˻��ϴ� �޼ҵ� ȣ��
		 * @param : qaNo (pk) 
		 * */
		QnADTO selectByQaNo(int qaNo) throws SQLException;
		
		/**
		 * qa�� commend ���ε�
		 * @param qaNo
		 * @return
		 * @throws SQLException
		 */
		public int qaCommendUpdate(QnADTO qaNo) throws SQLException;
		  
}
