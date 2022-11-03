package board_ex.service;

import java.text.DecimalFormat;

import board_ex.model.*;

public class WriteArticleService {
	
	private static WriteArticleService instance;
	public static WriteArticleService getInstance()  throws BoardException{
		if( instance == null )
		{
			instance = new WriteArticleService();
		}
		return instance;
	}
	
	public int write( BoardVO rec ) throws BoardException{
		
		BoardDao dao = BoardDao.getInstance();
	
		return dao.insert(rec);
		
	}
}
