package edu.poly.asmjava4final.service.impl;

import edu.poly.asmjava4final.converter.UserConverter;
import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.dto.UserDTO;
import edu.poly.asmjava4final.entity.UserEntity;
import edu.poly.asmjava4final.repository.UserRepository;
import edu.poly.asmjava4final.service.UserService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class UserServiceImpl implements UserService {
    @Inject
    private UserRepository userRepository;

    @Override
    public List<UserDTO> findAll() {
        List<UserDTO> dtos = new ArrayList<UserDTO>();
        List<UserEntity> entities = userRepository.findAll();
        for (UserEntity item : entities) {
            UserDTO UserDTO = UserConverter.toAllDTO(item);
            dtos.add(UserDTO);
        }
        return dtos;
    }

    @Override
    public UserDTO findOne(Long id) {
        return UserConverter.toAllDTO(userRepository.findOne(id));
    }

    @Override
    public UserDTO save(UserDTO dto) {
        Long id = userRepository.save(UserConverter.toAllEntity(dto));
        return UserConverter.toAllDTO(userRepository.findOne(id));
    }

    @Override
    public UserDTO update(UserDTO dto) {
        userRepository.update(UserConverter.toAllEntity(dto));
        return UserConverter.toAllDTO(userRepository.findOne(dto.getId()));
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {
            userRepository.delete(id);
        }
    }

    @Override
    public boolean findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public boolean findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public Long[] getIdsMovieByUserID(Long id) {
        List<MovieDTO> list = new ArrayList<>();
        findOne(id).getMovies().forEach(i -> list.add(i));
        Long[] idsMovie = new Long[list.size()];
        for (int i = 0; i < list.size(); i++) {
            idsMovie[i] = list.get(i).getId();
        }
        return idsMovie;
    }

    @Override
    public UserDTO findByUserLogin(String username, String password) {
        return UserConverter.toAllDTO(userRepository.findByUserLogin(username, password));
    }

    @Override
    public UserDTO findByVerify(String verify) {
        return UserConverter.toAllDTO(userRepository.findByVerify(verify));
    }

    @Override
    public UserDTO findUserByEmail(String email) {
        return UserConverter.toAllDTO(userRepository.findUserByEmail(email));
    }
}
