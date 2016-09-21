package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.UserRole;

@Repository("UserDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
private SessionFactory sessionFactory;
	
	/*public UserDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}*/
	@Transactional
	public void saveOrUpdate(UserDetails userDetails, UserRole userRole) {
		// TODO Auto-generated method stub
	 Session session = sessionFactory.getCurrentSession();

	userDetails.setEnabled(true);
	userRole.setId(userDetails.getId());
	userRole.setRole("ROLE_USER");
	sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
	sessionFactory.getCurrentSession().saveOrUpdate(userRole);
	
}
/*@Transactional
	public List<User> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<User> list=(List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				
		return list;
	}
@Transactional
	public User get(String id) {
		// TODO Auto-generated method stub
	String hql="from User where id="+id;
	Query query=sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> list=query.list();
	if(list!=null && !list.isEmpty()){
		return list.get(0);
	}
		return null;
	}
@Transactional
	public void saveOrUpdate(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
		// TODO Auto-generated method stub
	String hql = "from UserDetails where id= '" + id + "' and " + " password ='" + password+"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);

	@SuppressWarnings("unchecked")
	List<User> list = (List<User>) query.list();
	
	if (list != null && !list.isEmpty()) {
		return true;
	}
		return false;
	}*/
/*@Transactional
public void saveOrUpdate(UserRole userRole) {
	sessionFactory.getCurrentSession().saveOrUpdate(userRole);
	userRole.setRole("ROLE_USER");
}
*/
	
	
	
}
