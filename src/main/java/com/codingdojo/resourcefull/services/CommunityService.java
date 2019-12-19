package com.codingdojo.resourcefull.services;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.resourcefull.models.Community;
import com.codingdojo.resourcefull.repositories.CommunityRepository;


@Service
public class CommunityService {
	private final CommunityRepository communityRepository;
//	----------------------------------------------------------------------------------------
// 	Constructors 
//	----------------------------------------------------------------------------------------
    public CommunityService(CommunityRepository communityRepository) {
        this.communityRepository = communityRepository;
    }
	public CommunityRepository getCommunityRepository() {
		return communityRepository;
	}
	
//  -----------------------------------------------------------------------------------------
//  CREATE community
//  -----------------------------------------------------------------------------------------
	public Community createOrUpdateCommunity(Community community) {
		return communityRepository.save(community);
	}

//  -----------------------------------------------------------------------------------------
//  UPDATE community
//  -----------------------------------------------------------------------------------------
	public Community updateCommunity(Community community) {
		return this.communityRepository.save(community);
	}
	
//  -----------------------------------------------------------------------------------------
//  READ community by ID
//  -----------------------------------------------------------------------------------------
	public Community findCommunityById(Long community_id) {
		return communityRepository.findCommunityById(community_id);
	}
	
//  -----------------------------------------------------------------------------------------
//  READ ALL communities by ID
//  -----------------------------------------------------------------------------------------
	public List<Community> findAll() {
		return communityRepository.findAll();
	}
	
//  -----------------------------------------------------------------------------------------
//  DELETE community by ID
//  -----------------------------------------------------------------------------------------
	public void deleteCommunity(Long community_id) {
		communityRepository.deleteById(community_id);
	}
	
	public void filledWater(Community comm) {
		comm.getWater_filledAt().add(new Date());
		communityRepository.save(comm);
	}
	
	public void filledFood(Community comm) {
		comm.getFood_filledAt().add(new Date());
		communityRepository.save(comm);
	}
	
	public void filledHygiene(Community comm) {
		comm.getHygienekits_filledAt().add(new Date());
		communityRepository.save(comm);
	}

}
