/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.model;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Noko
 */
@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
public class CategoryDao {

    @Autowired
    SessionFactory sessionFactory;
     public Category getById(int id){
       return (Category)sessionFactory.getCurrentSession().get(Category.class, id);
       
    }
public void update(Category cat){
    sessionFactory.getCurrentSession().update(cat);
}
    public List<Category> find() {
        Session session = sessionFactory.getCurrentSession();
//vraca listu svih kategorija iz baze
        List<Category> result = session.createCriteria(Category.class).list();
        return result;
    }
}
