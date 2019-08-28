package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.dao.menuDao;
import shopping.domain.BoardVO;
import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;

@Service
public class menuServiceImpl implements menuService{
	
	private menuDao menuDao;

	public menuDao getmenuDao() {
		return menuDao;
	}

	public void setmenuDao(menuDao menuDao) {
		this.menuDao = menuDao;
	}

	@Override
	public List<menuVO> list(int category) {
		return menuDao.list(category);
	}

	@Override
	public int delete(menuVO menuVO) {
		// TODO Auto-generated method stub
		return menuDao.delete(menuVO);
	}

	@Override
	public int edit(menuVO menuVO) {
		// TODO Auto-generated method stub
		return menuDao.update(menuVO);
	}

	@Override
	public void write(menuVO menuVO) {
		// TODO Auto-generated method stub
		menuDao.insert(menuVO);
	}

	@Override
	public menuVO read(int seq) {
		// TODO Auto-generated method stub
		return menuDao.select(seq);
	}


	@Override
	public List<menuVO> search(String key) {
		// TODO Auto-generated method stub
		return menuDao.search(key);
	}

	@Override
	public void buyinsert(BuyVO buyVO) {
			menuDao.buyinsert(buyVO);
		}

	@Override
	public List<BuyVO> buylist1(String id) {
		// TODO Auto-generated method stub
		return menuDao.buylist(id);
	}

	@Override
	public void buyUpdate(MemberVO memberVO) {
		menuDao.buyUpdate(memberVO);
		
	}

	@Override
	public MemberVO getInfo(String id) {
		// TODO Auto-generated method stub
		return menuDao.getInfo(id);
	}

	@Override
	public int updatebuys(int seq) {
		// TODO Auto-generated method stub
		return menuDao.updatebuys(seq);
	}

	@Override
	public void deleteBuy(BuyVO buyVO) {
		menuDao.deleteBuy(buyVO);
		
	}
   @Override
   public void updateDeleteBuy(menuVO menuVO) {
	// TODO Auto-generated method stub
	
   }
}
