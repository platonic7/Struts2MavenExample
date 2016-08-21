/**
 * 
 */
/**
 * @author JIN
 *
 */
package dao;

import java.sql.SQLException;
import java.util.List;

import utility.SqlMapLocator;
import model.BoardVo;

public class BoardDao {
	private static BoardDao singleton;
	
	private BoardDao() {};
	
	public static BoardDao getInstance() {
		if (singleton == null) {
			singleton = new BoardDao();
		}
		return singleton;
	}
	
	// Board List
	public List<BoardVo> list(Object obj) throws SQLException {
		System.out.println("@#23424444"+ obj);
		List<BoardVo> list = SqlMapLocator.getMapper().queryForList("BoardList", obj);
		System.out.println("@#23424444"+ list);
		System.out.println("@#23424444"+ obj);
		return list;
	}	
	
	
}
