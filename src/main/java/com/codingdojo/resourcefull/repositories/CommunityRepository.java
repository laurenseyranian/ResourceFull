package com.codingdojo.resourcefull.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.resourcefull.models.Community;

public interface CommunityRepository extends CrudRepository <Community, Long> {
	
	//FIND community by ID
	Community findCommunityById(Long event_id);

	//FIND All communities
		List<Community> findAll();
		
		
}
