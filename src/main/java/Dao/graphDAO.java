package Dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vo.ClosedVO;
import Vo.DispositionVo;
import Vo.SearchVO;

@Repository
public class graphDAO {

	@Autowired
	SqlSession session = null;
	
	public List<ClosedVO> closeRateSearch() {

		List<ClosedVO> list = new ArrayList<ClosedVO>();
		String statement = "resource.closedperMapper.searchrate";

		list = session.selectList(statement);

		return list;
	}

}
