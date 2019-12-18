package com.codingdojo.resourcefull.services;
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
	public Community createCommunity(Community community) {
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
//  DELETE community by ID
//  -----------------------------------------------------------------------------------------
	public void deleteCommunity(Long community_id) {
		communityRepository.deleteById(community_id);
	}

}
