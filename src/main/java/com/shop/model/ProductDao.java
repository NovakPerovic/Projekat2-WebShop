package com.shop.model;

import java.nio.channels.SeekableByteChannel;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
public class ProductDao {

    @Autowired
    SessionFactory sessionFactory;
//    vraca duzinu svih stranica u bazi
    public Long pages(){
        return ((Double)Math.ceil((Long)sessionFactory.getCurrentSession().createQuery("select count(id) from Product").uniqueResult()/6)).longValue();
    }

    public void updateproduct(Product product){
        sessionFactory.getCurrentSession().update(product);
    }
    
    public List<Product> findbyPage(int page) {
        int perpage = 6;
        Session session = sessionFactory.getCurrentSession();
        List<Product> rezList = session.createQuery("from Product").setFirstResult(page*perpage).setMaxResults(perpage).list();
        return rezList;
    }

    //vraca proizvod po id
    public Product getById(int id) {
        return (Product) sessionFactory.getCurrentSession().get(Product.class, id);

    }

//    vraca proizvode po id kategorije. session.getnamequery koristi name iz entity class
    public List<Product> findbyCategory(int id) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> rezList = session.getNamedQuery("Product.findByCategory").setInteger("category", id).list();

        return rezList;
    }

    public List<Product> findbyManufactur(String name) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> rezult = session.getNamedQuery("Product.findByManufacturer").setString("manufacturer", name).list();
        return rezult;
    }

//    vraca listu svih proizvoda
    public List<Product> find() {
        Session session = sessionFactory.getCurrentSession();
        List<Product> rezult = session.createCriteria(Product.class).list();
        return rezult;
    }
    
    public int items(){
        Product product = new Product();
        return product.items;
    }
}
