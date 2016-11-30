package com.frontendDAOimpl;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.frontendDAO.SupplierDAO;
import com.frontendModel.Supplier;

@Repository("SupplierDAO")
public class SupplierDAOimpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	public SupplierDAOimpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean save(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
@Transactional
	public boolean update(Supplier supplier) {
		try {
			
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("update catch");
			e.printStackTrace();
			return false;
		}
	}
@Transactional
	public boolean delete(Supplier supplier) {
	try {
			
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
@Transactional
	public Supplier get(String supplier_id) {
		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, supplier_id);
	}
@Transactional
public List<Supplier> list() {
	String hql="from Supplier";
	org.hibernate.Query query=  sessionFactory.getCurrentSession().createQuery(hql);
	
	return query.list();
}


}

