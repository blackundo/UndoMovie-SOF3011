package edu.poly.asmjava4final.repository;

import edu.poly.asmjava4final.entity.MovieEntity;

import java.util.List;

public interface MovieRepository {
    List<MovieEntity> findAll();
    MovieEntity findOne(Long id);
    Long save(MovieEntity entity);
    void update(MovieEntity entity);
    void delete(Long id);
    List<MovieEntity> findByTitle(String title);
}
