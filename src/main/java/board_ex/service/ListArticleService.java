package board_ex.service;

import java.util.List;

import board_ex.model.*;


public class ListArticleService {
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 5;	// 한페이지당 레코드 수

	
	
	private static ListArticleService instance;
	public static ListArticleService getInstance()  throws BoardException{
		if( instance == null )
		{
			instance = new ListArticleService();
		}
		return instance;
	}
	
	/*
	 * public List <BoardVO> getArticleList() throws BoardException 
	 * { List <BoardVO> mList = BoardDao.getInstance().selectList(); 
	 * return mList; }
	 */
	
	
	public List <BoardVO> getArticleList(String pNum) throws BoardException
	{
		// 첫화면에 페이지 번호가 없기 때문에 첫화면에 1페이지 지정하기.
		int pageNum = 1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		/*		페이지번호		시작레코드번호		끝레코드번호
		 * 			1			1				5
		 * 			2			6				10
		 * 			3			11				15
		 */
		
		int startRow = pageNum * countPerPage -4 ;
		int endRow	 = pageNum * countPerPage ;
			
		List <BoardVO> mList = BoardDao.getInstance().selectList(startRow, endRow);			
		return mList;
	}
	
	public int getTotalPage() throws BoardException {  // 계산은 뷰, 모델에서 하지 않고 서비스(그룹)안에서 사용 
		
		// 전체 레코드 수
		totalRecCount =  BoardDao.getInstance().getTotalCount();
		/*
		 *	전체레코드 수 		페이지수
		 *		9			  2
		 *		10			  2
		 *		13			  2
		 *	전체레코드수에 따라 페이지수 나오게 계산
		 */
		
		//pageTotalCount = (int)Math.ceil(totalRecCount/3.0);
		
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage > 0) pageTotalCount++;

		
		
		return pageTotalCount;  // 페이지 수 리턴
	}
		
}
