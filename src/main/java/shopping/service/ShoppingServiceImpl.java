package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
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
   @Override
   public List<ShoppingVO> searchMember(String keyword) {
      // TODO Auto-generated method stub
      return shoppingDao.searchMember(keyword);
   }
   @Override
   public List<MemberVO> listMember() {
      // TODO Auto-generated method stub
      return shoppingDao.listMember();
   }
   @Override
   public MemberVO read(int seq) {
      // TODO Auto-generated method stub
      return shoppingDao.read(seq);
   }
   @Override
   public void deleteMember(int seq) {
      // TODO Auto-generated method stub
      shoppingDao.deleteMember(seq);
   }
   @Override
   public List<BuyVO> buylist() {
      // TODO Auto-generated method stub
      return shoppingDao.buylist();
   }
   @Override
   public void updateStatus(BuyVO buyVO) {
      shoppingDao.updateStatus(buyVO);
      
   }

@Override
public List<ShoppingVO> bestlist() {
	// TODO Auto-generated method stub
	return shoppingDao.bestlist();
}
@Override
public List<ShoppingVO> salelist() {
	// TODO Auto-generated method stub
	return shoppingDao.salelist();
}
   
}