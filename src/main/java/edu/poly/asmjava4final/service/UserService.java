package edu.poly.asmjava4final.service;

import edu.poly.asmjava4final.dto.UserDTO;

import java.util.List;

public interface UserService {
    List<UserDTO> findAll();
    UserDTO findOne(Long id);
    UserDTO save(UserDTO dto);
    UserDTO update(UserDTO dto);
    void delete(Long[] ids);
    boolean findByEmail(String email);
    boolean findByUsername(String username);
    UserDTO findByUserLogin(String username, String password);
    Long[] getIdsMovieByUserID(Long id);
    UserDTO findByVerify(String verify);
    UserDTO findUserByEmail(String email);
}
