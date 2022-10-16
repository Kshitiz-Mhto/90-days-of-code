package com.jpa.projpa.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.jpa.projpa.entity.User;

public interface UserRepo extends JpaRepository<User, Integer> {
    
}
