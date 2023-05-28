package edu.poly.asmjava4final.service;

import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.entity.MovieEntity;

import java.util.List;
import java.util.Set;

public interface MovieService {
    List<MovieDTO> findAll();
    List<MovieDTO> findAll(int pageNumber, int pageSize);

    MovieDTO findOne(Long id);
    MovieDTO findOneByLink(String link);
    MovieDTO save(MovieDTO dto);
    MovieDTO update(MovieDTO dto);
    void delete(Long[] ids);
    Set<MovieDTO> findByIds(Long[] ids);
    List<MovieDTO> findListByIds(Long[] ids);
    List<MovieDTO> findByTitle(String title);
}
