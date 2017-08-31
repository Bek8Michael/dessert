package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dao.ShopDao;
import model.Product;
import model.Shop;

public class ListProductAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductDao pd = ProductDao.getInstance();
		ShopDao sd = ShopDao.getInstance();
		List<Product> productList = pd.list();
		List<Shop> shopList = sd.list();
		request.setAttribute("productList", productList);
		request.setAttribute("shopList", shopList);
		return "listProduct.jsp";
	}

}
