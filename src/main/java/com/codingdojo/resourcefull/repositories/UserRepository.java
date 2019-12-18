package com.codingdojo.resourcefull.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.resourcefull.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
//--------------------------------------------------------------------------------------------
// FIND user by EMAIL 
//--------------------------------------------------------------------------------------------	
    User findByEmail(String email);
//--------------------------------------------------------------------------------------------
// FIND user by USERNAME 
//--------------------------------------------------------------------------------------------	    
    User findByUsername(String username);
}