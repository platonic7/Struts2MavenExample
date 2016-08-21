/**
 * @author JIN
 *
 */
package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import model.BoardVo;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import dao.BoardDao;

public class BoardAction extends ActionSupport implements Preparable, ModelDriven<Object> {
	private static final long serialVersionUID = -7055850097770379699L;
	private BoardDao dao;
	private BoardVo vo;
	private List<BoardVo> list = new ArrayList<BoardVo>();	

	// コンストラクタ
	public BoardAction() throws IOException {
		dao = BoardDao.getInstance();
	}	
	
	
	// Go To List Page
	public String BoardListPage() throws Exception {
		System.out.println("GO To BoardListPage.");
		return Action.SUCCESS;
	}

	// Board List Action
	public String BoardList() throws Exception {
		return SUCCESS;
	}
	

	
	@Override
	public Object getModel() {
		return vo;
	}
	@Override
	public void prepare() throws Exception {
		vo = new BoardVo();
	}

	public BoardDao getDao() {
		return dao;
	}
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}
	public List<BoardVo> getList() {
		return list;
	}
	public void setList(List<BoardVo> list) {
		this.list = list;
	}
	
}	