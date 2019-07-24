package shopping.domain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShoppingDaoMybatis implements ShoppingDao{
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ShoppingDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public void setSqlMapClient(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public List<ShoppingVO> list() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("list");
	}
}