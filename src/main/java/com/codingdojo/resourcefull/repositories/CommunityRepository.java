package com.codingdojo.resourcefull.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.resourcefull.models.Community;

public interface CommunityRepository extends CrudRepository <Community, Long> {
//---------------------------------------------------------------------------------------------
// FIND a neighborhood by ID
//---------------------------------------------------------------------------------------------	
	Community findCommunityById(Long community_id);
//---------------------------------------------------------------------------------------------
// FIND all neighborhoods
//---------------------------------------------------------------------------------------------	
		List<Community> findAll();
		
		
}
