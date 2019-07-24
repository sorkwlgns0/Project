package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.domain.ShoppingDao;
import shopping.domain.ShoppingVO;

@Service
public class ShoppingServiceImpl implements ShoppingService{
	
	private ShoppingDao shoppingDao;

	public void setShoppingService(ShoppingDao shoppingDao) {
		this.shoppingDao = shoppingDao;
	}
	public ShoppingDao getShoppingDao() {
		return shoppingDao;
	}
	public void setShoppingDao(ShoppingDao shoppingDao) {
		this.shoppingDao = shoppingDao;
	}

	public List<ShoppingVO> list() {
		// TODO Auto-generated method stub
		return shoppingDao.list();
	}
	
}
