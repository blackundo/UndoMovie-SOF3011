package edu.poly.asmjava4final.repository.impl;

import edu.poly.asmjava4final.entity.MovieEntity;
import edu.poly.asmjava4final.entity.UserEntity;
import edu.poly.asmjava4final.repository.MovieRepository;
import edu.poly.asmjava4final.utils.JpaUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

public class MovieRepositoryImpl implements MovieRepository {
    @Override
    public List<MovieEntity> findAll() {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM MovieEntity t";

        TypedQuery<MovieEntity> tq = em.createQuery(query, MovieEntity.class);
        List<MovieEntity> list = new ArrayList<MovieEntity>();
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
    public List<MovieEntity> findAll(int pageNumber, int pageSize) {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM MovieEntity t";

        TypedQuery<MovieEntity> tq = em.createQuery(query, MovieEntity.class);
        tq.setFirstResult((pageNumber - 1) * pageSize);
        tq.setMaxResults(pageSize);
        List<MovieEntity> list = new ArrayList<MovieEntity>();
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
    public MovieEntity findOne(Long id) {
        EntityManager em = JpaUtil.getEntityManager();
        MovieEntity entity = new MovieEntity();
        try {
            entity = em.find(MovieEntity.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return entity;
    }

    @Override
    public MovieEntity findOneByLink(String link) {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM MovieEntity t WHERE t.link IN (:link)";

        MovieEntity entity = new MovieEntity();
        TypedQuery<MovieEntity> tq = em.createQuery(query, MovieEntity.class);
        tq.setParameter("link", link);
        try {
            entity = tq.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return entity;
    }

    @Override
    public Long save(MovieEntity entity) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction et = null;
        Long id = null;
        try {
            et = em.getTransaction();
            et.begin();

            em.persist(entity);
            et.commit();

            id = em.find(MovieEntity.class, entity.getId()).getId();
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
    public void update(MovieEntity entity) {
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

            em.remove(em.find(MovieEntity.class, id));
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
    public List<MovieEntity> findByTitle(String title) {
        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT t FROM MovieEntity t WHERE t.title LIKE :title";

        TypedQuery<MovieEntity> tq = em.createQuery(query, MovieEntity.class);
        tq.setParameter("title", "%" + title + "%");
        List<MovieEntity> list = new ArrayList<MovieEntity>();
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
