
package com.shop.model;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
public class ManufactureDao {
    @Autowired
    SessionFactory sessionFactory;
    
    public List<Manufacturer> find (){
        Session session = sessionFactory.getCurrentSession();
        List<Manufacturer> rezult = session.createCriteria(Manufacturer.class).list();
        return rezult;
    }
}
