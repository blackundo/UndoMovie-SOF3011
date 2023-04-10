package edu.poly.asmjava4final.repository.impl;

import edu.poly.asmjava4final.entity.CategoryEntity;
import edu.poly.asmjava4final.repository.CategoryRepository;
import edu.poly.asmjava4final.utils.JpaUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements CategoryRepository {

    @Override
    public List<CategoryEntity> findAll() {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM CategoryEntity t";

        TypedQuery<CategoryEntity> tq = em.createQuery(query, CategoryEntity.class);
        List<CategoryEntity> list = new ArrayList<CategoryEntity>();
        try {
            list = tq.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return list;
    }

    @Override
    public CategoryEntity findOne(Long id) {
        EntityManager em = JpaUtil.getEntityManager();
        CategoryEntity entity = new CategoryEntity();
        try {
            entity = em.find(CategoryEntity.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return entity;
    }

    @Override
    public Long save(CategoryEntity entity) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction et = null;
        Long id = null;
        try {
            et = em.getTransaction();
            et.begin();

            em.persist(entity);
            et.commit();

            id = em.find(CategoryEntity.class, entity.getId()).getId();
        } catch (Exception e) {
            if (et != null) {
                et.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
        return id;
    }

    @Override
    public void update(CategoryEntity entity) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction et = null;
        try {
            et = em.getTransaction();
            et.begin();

            em.merge(entity);
            et.commit();
        } catch (Exception e) {
            if (et != null) {
                et.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

    @Override
    public void delete(Long id) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction et = null;
        try {
            et = em.getTransaction();
            et.begin();

            em.remove(em.find(CategoryEntity.class, id));
            et.commit();
        } catch (Exception e) {
            if (et != null) {
                et.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

    @Override
    public List<CategoryEntity> findByIds(String ids) {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM CategoryEntity t WHERE t.id IN (:ids)";

        TypedQuery<CategoryEntity> tq = em.createQuery(query, CategoryEntity.class);
        tq.setParameter("ids", ids);
        List<CategoryEntity> list = new ArrayList<CategoryEntity>();
        try {
            list = tq.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return list;
    }
}
