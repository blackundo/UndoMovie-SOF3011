package edu.poly.asmjava4final.service.impl;

import edu.poly.asmjava4final.converter.MovieConverter;
import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.entity.MovieEntity;
import edu.poly.asmjava4final.repository.MovieRepository;
import edu.poly.asmjava4final.service.MovieService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MovieServiceImpl implements MovieService {
    @Inject
    private MovieRepository movieRepository;

    @Override
    public List<MovieDTO> findAll() {
        List<MovieDTO> dtos = new ArrayList<MovieDTO>();
        List<MovieEntity> entities = movieRepository.findAll();
        for (MovieEntity item : entities) {
            MovieDTO MovieDTO = MovieConverter.toAllDTO(item);
            dtos.add(MovieDTO);
        }
        return dtos;
    }

    @Override
    public List<MovieDTO> findAll(int pageNumber, int pageSize) {
        List<MovieDTO> dtos = new ArrayList<MovieDTO>();
        List<MovieEntity> entities = movieRepository.findAll();
        for (MovieEntity item : entities) {
            MovieDTO MovieDTO = MovieConverter.toAllDTO(item);
            dtos.add(MovieDTO);
        }
        return dtos;
    }

    @Override
    public MovieDTO findOne(Long id) {
        return MovieConverter.toAllDTO(movieRepository.findOne(id));
    }

    @Override
    public MovieDTO findOneByLink(String link) {
        return MovieConverter.toAllDTO(movieRepository.findOneByLink(link));
    }

    @Override
    public MovieDTO save(MovieDTO dto) {
        Long id = movieRepository.save(MovieConverter.toAllEntity(dto));
        return MovieConverter.toAllDTO(movieRepository.findOne(id));
    }

    @Override
    public MovieDTO update(MovieDTO dto) {
        movieRepository.update(MovieConverter.toAllEntity(dto));
        return MovieConverter.toAllDTO(movieRepository.findOne(dto.getId()));
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {
            movieRepository.delete(id);
        }
    }

    @Override
    public Set<MovieDTO> findByIds(Long[] ids) {
        Set<MovieDTO> dtos = new HashSet<MovieDTO>();
        for (Long id : ids) {
            dtos.add(MovieConverter.toAllDTO(movieRepository.findOne(id)));
        }
        return dtos;
    }

    @Override
    public List<MovieDTO> findListByIds(Long[] ids) {
        List<MovieDTO> dtos = new ArrayList<MovieDTO>();
        for (Long id : ids) {
            dtos.add(MovieConverter.toAllDTO(movieRepository.findOne(id)));
        }
        return dtos;
    }

    @Override
    public List<MovieDTO> findByTitle(String title) {
        List<MovieDTO> dtos = new ArrayList<MovieDTO>();
        List<MovieEntity> entities = movieRepository.findByTitle(title);
        for (MovieEntity item : entities) {
            MovieDTO MovieDTO = MovieConverter.toAllDTO(item);
            dtos.add(MovieDTO);
        }
        return dtos;
    }
}
