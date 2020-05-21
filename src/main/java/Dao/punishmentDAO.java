package Dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Vo.DispositionVo;
import Vo.SearchVO;

@Repository
public class punishmentDAO {

	@Autowired
	SqlSession session = null;

	public List<DispositionVo> punishSearch(SearchVO keyword) {

		List<DispositionVo> list = new ArrayList<DispositionVo>();
		String statement = "resource.punishmentMapper.searchpunish";

		list = session.selectList(statement, keyword);

		return list;
	}

}
