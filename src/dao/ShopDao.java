package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Shop;

public class ShopDao {
	private static ShopDao instance = new ShopDao();
	private ShopDao() {}
	public static ShopDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try {
			System.out.println("1");
			Reader read = Resources.getResourceAsReader("configuration.xml");
			System.out.println("2");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(read);
			System.out.println("3");
			session = sf.openSession(true);
		} catch (IOException e) {
			System.out.println("session생성실패"+e.getMessage());
		}
	}
	public List<Shop> list(){
		return session.selectList("shopns.list");
	}
}
