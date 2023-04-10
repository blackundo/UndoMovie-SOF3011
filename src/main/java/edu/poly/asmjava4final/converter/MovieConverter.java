package edu.poly.asmjava4final.converter;

import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.entity.MovieEntity;

public class MovieConverter {
    public static MovieDTO toDto(MovieEntity entity) {
        MovieDTO result = new MovieDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setDescription(entity.getDescription());
        result.setDate(entity.getDate());
        result.setViewCount(entity.getViewCount());
        result.setLikeCount(entity.getLikeCount());
        result.setPoster(entity.getPoster());
        return result;
    }

    public static MovieEntity toEntity(MovieDTO dto) {
        MovieEntity result = new MovieEntity();
        result.setId(dto.getId());
        result.setTitle(dto.getTitle());
        result.setDescription(dto.getDescription());
        result.setDate(dto.getDate());
        result.setViewCount(dto.getViewCount());
        result.setLikeCount(dto.getLikeCount());
        return result;
    }

    public static MovieEntity toListEntity(MovieEntity entity, MovieDTO dto) {
        dto.getUsers().forEach(i -> entity.getUsers().add(UserConverter.toEntity(i)));
        dto.getCategories().forEach(i -> entity.getCategories().add(CategoryConverter.toEntity(i)));
        return entity;
    }

    public static MovieDTO toListDTO(MovieDTO dto, MovieEntity entity) {
        entity.getUsers().forEach(i -> dto.getUsers().add(UserConverter.toDto(i)));
        entity.getCategories().forEach(i -> dto.getCategories().add(CategoryConverter.toDto(i)));
        return dto;
    }

    public static MovieEntity toAllEntity(MovieDTO dto) {
        MovieEntity entity = MovieConverter.toEntity(dto);
        entity = MovieConverter.toListEntity(entity, dto);
        return entity;
    }

    public static MovieDTO toAllDTO(MovieEntity entity) {
        MovieDTO dto = MovieConverter.toDto(entity);
        dto = MovieConverter.toListDTO(dto, entity);
        return dto;
    }
}
