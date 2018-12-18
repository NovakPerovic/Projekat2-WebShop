/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.model;

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
public class OrdersDao {
    
    @Autowired 
    SessionFactory sessionFactory;
    
    public void save(Orders order){
        Session session= sessionFactory.getCurrentSession();
        
        session.save(order);  
    }
    

}
