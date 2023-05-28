package edu.poly.asmjava4final.repository;

import edu.poly.asmjava4final.entity.MovieEntity;

import java.util.List;

public interface MovieRepository {
    List<MovieEntity> findAll();
    List<MovieEntity> findAll(int pageNumber, int pageSize);
    MovieEntity findOne(Long id);
    MovieEntity findOneByLink(String link);
    Long save(MovieEntity entity);
    void update(MovieEntity entity);
    void delete(Long id);
    List<MovieEntity> findByTitle(String title);
}
