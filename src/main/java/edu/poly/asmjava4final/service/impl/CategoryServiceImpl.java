package edu.poly.asmjava4final.service.impl;

import edu.poly.asmjava4final.converter.CategoryConverter;
import edu.poly.asmjava4final.dto.CategoryDTO;
import edu.poly.asmjava4final.entity.CategoryEntity;
import edu.poly.asmjava4final.repository.CategoryRepository;
import edu.poly.asmjava4final.service.CategoryService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CategoryServiceImpl  implements CategoryService {

    @Inject
    private CategoryRepository categoryRepository;

    @Override
    public List<CategoryDTO> findAll() {
        List<CategoryDTO> dtos = new ArrayList<CategoryDTO>();
        List<CategoryEntity> entities = categoryRepository.findAll();
        for (CategoryEntity item : entities) {
            CategoryDTO CategoryDTO = CategoryConverter.toAllDTO(item);
            dtos.add(CategoryDTO);
        }
        return dtos;
    }
    @Override
    public CategoryDTO findOne(Long id) {
        return CategoryConverter.toAllDTO(categoryRepository.findOne(id));
    }

    @Override
    public CategoryDTO save(CategoryDTO dto) {
        Long id = categoryRepository.save(CategoryConverter.toAllEntity(dto));
        return CategoryConverter.toAllDTO(categoryRepository.findOne(id));
    }

    @Override
    public CategoryDTO update(CategoryDTO dto) {
        categoryRepository.update(CategoryConverter.toAllEntity(dto));
        return CategoryConverter.toAllDTO(categoryRepository.findOne(dto.getId()));
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {
            categoryRepository.delete(id);
        }
    }

    @Override
    public Set<CategoryDTO> findByIds(Long[] ids) {
        Set<CategoryDTO> dtos = new HashSet<CategoryDTO>();
        for (Long id : ids) {
            dtos.add(CategoryConverter.toAllDTO(categoryRepository.findOne(id)));
        }
        return dtos;
    }
}
