package edu.poly.asmjava4final.repository;

import edu.poly.asmjava4final.entity.UserEntity;

import java.util.List;

public interface UserRepository {
    List<UserEntity> findAll();
    UserEntity findOne(Long id);
    Long save(UserEntity entity);
    void update(UserEntity entity);
    void delete(Long id);
    boolean findByEmail(String email);
    boolean findByUsername(String username);
    UserEntity findByUserLogin(String username, String password);
    UserEntity findByVerify(String verify);
    UserEntity findUserByEmail(String email);
}
