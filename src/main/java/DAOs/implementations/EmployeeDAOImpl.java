package DAOs.implementations;

import DAOs.interfaces.EmployeeDAO;
import models.Department;
import models.Employee;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utils.HibernateUtil;

import java.util.List;
import java.util.Optional;

public class EmployeeDAOImpl implements EmployeeDAO {
    @Override
    public void save(Employee employee) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Department department = new Department();
            department.setName("test");
            Employee employee2 = new Employee();
            employee.setName("test");
            employee.setEmail("test@test.com");
            employee.setPhone("00");
            employee.setPost("test");
            employee.setDepartment(department);
            session.save(department);
            session.save(employee);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public void update(Employee employee) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(employee);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Employee employee) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.delete(employee);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public Optional<Employee> find(String id) {
        Transaction transaction = null;
        Optional<Employee> employee = Optional.empty();
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            employee = Optional.ofNullable(
                    session.get(Employee.class, id));
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }

        return employee;
    }

    @Override
    public List<Employee> getAll() {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from Employee", Employee.class).list();
        }
    }

//    public List<Employee> findAll(String searchTerm, ) {
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            StringBuilder hql = new StringBuilder("from Employee");
//
//            Query query = session.createQuery(hql);
//
//            query.setDouble("price",25.0);
//
//            List results = query.list();
//        }
//    }
}
