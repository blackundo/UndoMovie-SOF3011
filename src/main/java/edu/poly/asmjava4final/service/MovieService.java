package edu.poly.asmjava4final.service;

import edu.poly.asmjava4final.dto.MovieDTO;

import java.util.List;
import java.util.Set;

public interface MovieService {
    List<MovieDTO> findAll();
    MovieDTO findOne(Long id);
    MovieDTO save(MovieDTO dto);
    MovieDTO update(MovieDTO dto);
    void delete(Long[] ids);
    Set<MovieDTO> findByIds(Long[] ids);
    List<MovieDTO> findListByIds(Long[] ids);
    List<MovieDTO> findByTitle(String title);
}
