package edu.poly.asmjava4final.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil {
    private static EntityManagerFactory factory;

    public static EntityManager getEntityManager(){
        if(factory == null || !factory.isOpen()){
            factory = Persistence.createEntityManagerFactory("asm4");
        }
        return factory.createEntityManager();
    }
}
