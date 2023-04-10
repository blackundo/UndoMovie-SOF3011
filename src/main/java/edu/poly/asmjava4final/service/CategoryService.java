package edu.poly.asmjava4final.service;

import edu.poly.asmjava4final.dto.CategoryDTO;

import java.util.List;
import java.util.Set;

public interface CategoryService {
    List<CategoryDTO> findAll();
    CategoryDTO findOne(Long id);
    CategoryDTO save(CategoryDTO dto);
    CategoryDTO update(CategoryDTO dto);
    void delete(Long[] ids);
    Set<CategoryDTO> findByIds(Long[] ids);
}
