/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Domain.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;


public class UsersDao {
      public String add(User u) {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(u);
        s.getTransaction().commit();
        s.close();
        return "success";
    }
  public List<User> findAll() {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from User");
        List<User> li = q.list();
        s.close();
        return li;
    }
         
  public void AddAmount(int id, int amount){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
            String hql="Update User set Amount = Amount + "+amount+" where id = '"+id+"'";
            Query query=s.createQuery(hql);
            query.executeUpdate();
            s.getTransaction().commit();
        
            s.close();
         }
  public void ReduceAmount(int id, int amount){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
            if(amount<10000){
                String hql="Update User set Amount = Amount - "+amount+" where id = '"+id+"'";
                 Query query=s.createQuery(hql);
                query.executeUpdate();
            }else if(amount<100000 && amount>10000){
                String hql="Update User set Amount = Amount - "+amount+" - 200 where id = '"+id+"'";
                 Query query=s.createQuery(hql);
                query.executeUpdate();
            }else{
                String hql="Update User set Amount = Amount - "+amount+" - 1000 where id = '"+id+"'";
                 Query query=s.createQuery(hql);
                query.executeUpdate();
            }
            s.getTransaction().commit();
        
            s.close();
         }
  public void SendAmount(String email, int amount){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
            String hql="Update User set Amount = Amount + "+amount+" where email = '"+email+"'";
            Query query=s.createQuery(hql);
            query.executeUpdate();
            s.getTransaction().commit();
        
            s.close();
         }
        
    public String update(User u){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(u);
        s.getTransaction().commit();
        s.close();
        return "success";
    }
      public User findBYId(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        User u = (User) s.get(User.class, id);
        s.close();
        return u;
       
    }

      public User search(String email){       
        Session s = HibernateUtil.getSessionFactory().openSession();
        String hql="From User where email = '"+email+"'";
        Query query=s.createQuery(hql);           
        return (User)query.uniqueResult();

    }
    public String delete(User p){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(p);
        s.getTransaction().commit();
        s.close();
        return "success";
    }
}
