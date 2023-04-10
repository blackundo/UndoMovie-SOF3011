package edu.poly.asmjava4final.repository;

import edu.poly.asmjava4final.entity.CategoryEntity;

import java.util.List;

public interface CategoryRepository {
    List<CategoryEntity> findAll();
    CategoryEntity findOne(Long id);
    Long save(CategoryEntity entity);
    void update(CategoryEntity entity);
    void delete(Long id);
    List<CategoryEntity> findByIds(String ids);
}
