package com.frontendDAOimpl;




import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frontendDAO.UsersDetailDao;
import com.frontendModel.UserRole;
import com.frontendModel.Users;
import com.frontendModel.UsersDetail;

@Repository("usersDetailDAO")
@Transactional
public class UsersDetailDaoimpl implements UsersDetailDao {

    @Autowired
    private SessionFactory sessionFactory;
 
    public void addUser(UsersDetail usersDetail) {
    	
        Session session = sessionFactory.openSession();
        
        session.saveOrUpdate(usersDetail);
       
        Users newUser = new Users();
        newUser.setUsername(usersDetail.getUsername());
        newUser.setPassword(usersDetail.getPassword());
        newUser.setEnabled(true);
        newUser.setUserId(usersDetail.getUserId());

        UserRole newUserRole = new UserRole();
        newUserRole.setUsername(usersDetail.getUsername());
        newUserRole.setRole("ROLE_ADMIN");
        
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newUserRole);
       session.save(usersDetail);
       session.flush();
       
    }

    
   //LOOK HERE
    @Transactional
    public boolean isValidUser(String name)
    {
    	//select * from UserDetails where id='101' and password='niit'
    	String hql="from UsersDetail where username='"+name+"'";
    	Query query=sessionFactory.openSession().createQuery(hql);
    	
    	List<UsersDetail> list = query.list();//list of users detail
    	
    	if(list!=null){
        	return false;//invalid user    		
    	}
    	else{
    		return true;//valid user
    	}
    }
    
    
    public UsersDetail getUserById (int userId) {
        Session session = sessionFactory.openSession();
        return (UsersDetail) session.get(UsersDetail.class, userId);
    }

    public List<UsersDetail> getAllUsers() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from UsersDetail");
        List<UsersDetail> usersDetail = query.list();

        return usersDetail;
    }

    public UsersDetail getUserByUsername (String username) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from UsersDetail where username = ?");
        query.setString(0, username);
        return (UsersDetail) query.uniqueResult();
    }
}
