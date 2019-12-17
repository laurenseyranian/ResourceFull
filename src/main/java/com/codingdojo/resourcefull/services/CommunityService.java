package com.codingdojo.resourcefull.services;
import org.springframework.stereotype.Service;

import com.codingdojo.resourcefull.repositories.CommunityRepository;

@Service
public class CommunityService {
	private final CommunityRepository communityRepository;
    //----------------------------------------------------------------------------------------
    // Constructors 
    //----------------------------------------------------------------------------------------
    public CommunityService(CommunityRepository communityRepository) {
        this.communityRepository = communityRepository;
    }

}
