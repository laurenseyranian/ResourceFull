package com.codingdojo.resourcefull.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.resourcefull.models.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
//--------------------------------------------------------------------------------------------
// FINDS all roles
//-------------------------------------------------------------------------------------------- 	
	List<Role> findAll();
	
//--------------------------------------------------------------------------------------------
// FINDS role by name
//--------------------------------------------------------------------------------------------
    List<Role> findByName(String name);
}
