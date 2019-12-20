package com.codingdojo.resourcefull.services;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.resourcefull.models.Community;
import com.codingdojo.resourcefull.models.Message;
import com.codingdojo.resourcefull.models.User;
import com.codingdojo.resourcefull.repositories.CommunityRepository;
import com.codingdojo.resourcefull.repositories.MessageRepository;
import com.codingdojo.resourcefull.repositories.UserRepository;


@Service
public class CommunityService {
//---------------------------------------------------------------------------------------------
// Attributes
//---------------------------------------------------------------------------------------------	
		private final CommunityRepository communityRepository;
		private final MessageRepository messageRepository;
		private final UserRepository userRepository;
//----------------------------------------------------------------------------------------
// 	Constructors 
//----------------------------------------------------------------------------------------
    public CommunityService(CommunityRepository communityRepository, MessageRepository messageRepository, UserRepository userRepository) {
        this.communityRepository = communityRepository;
        this.messageRepository = messageRepository;
		this.userRepository = userRepository;
    }
	public CommunityRepository getCommunityRepository() {
		return communityRepository;
	}
	
//  -----------------------------------------------------------------------------------------
//  CREATE a community
//  -----------------------------------------------------------------------------------------
	public Community createOrUpdateCommunity(Community community) {
		return communityRepository.save(community);
	}
//	--------------------------------------------------------------------------------------------
// 	CREATE message and ADD to a neighborhood
//	--------------------------------------------------------------------------------------------	   
	public Message createMessage(Message createMessage) {
		return messageRepository.save(createMessage);
	}
//  -----------------------------------------------------------------------------------------
//  CREATE fill WATER button
//  -----------------------------------------------------------------------------------------	
	public void filledWater(Community comm) {
		comm.getWater_filledAt().add(new Date());
		communityRepository.save(comm);
	}
//  -----------------------------------------------------------------------------------------
//  CREATE fill FOOD button
//  -----------------------------------------------------------------------------------------		
	public void filledFood(Community comm) {
		comm.getFood_filledAt().add(new Date());
		communityRepository.save(comm);
	}
//  -----------------------------------------------------------------------------------------
//  CREATE fill KIT button
//  -----------------------------------------------------------------------------------------	
	public void filledHygiene(Community comm) {
		comm.getHygienekits_filledAt().add(new Date());
		communityRepository.save(comm);
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
	
//  -----------------------------------------------------------------------------------------
//  DELETET comment by ID
//  -----------------------------------------------------------------------------------------
	public void deleteComment(Long comment_id) {
		messageRepository.deleteById(comment_id);
	}
//  -----------------------------------------------------------------------------------------
//  FIND user by ID
//  -----------------------------------------------------------------------------------------
	public User findUserById(Long userId) {
		Optional<User> u = userRepository.findById(userId);
		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}

//  -----------------------------------------------------------------------------------------
//  FIND a neighborhood by ID
//  -----------------------------------------------------------------------------------------
	public Community findCommunityById(Long community_id) {
		Community community = communityRepository.findCommunityById(community_id);
		List<Date> hkList = community.getHygienekits_filledAt();
		int toIndexHK = 4;
		if (hkList.size() < 4)toIndexHK = hkList.size();
		community.setHygienekits_filledAt(community.getHygienekits_filledAt().subList(0, toIndexHK));
		//*****************
		List<Date> wList = community.getWater_filledAt();
		int toIndexW = 4;
		if (wList.size() < 4)toIndexW = wList.size();
		community.setWater_filledAt(community.getWater_filledAt().subList(0, toIndexW));
		//*****************
		List<Date> fList = community.getFood_filledAt();
		int toIndexF = 4;
		if (fList.size() < 4)toIndexF = fList.size();
		community.setFood_filledAt(community.getFood_filledAt().subList(0, toIndexF));
		return community;
	}
//  -----------------------------------------------------------------------------------------
//  FIND comment by ID
//  -----------------------------------------------------------------------------------------
	public Message findCommentById(Long comment_id) {
		return messageRepository.findById(comment_id).orElse(null);
	}

//  -----------------------------------------------------------------------------------------
//  ADD message to a neighnorbood
//  -----------------------------------------------------------------------------------------
	public void addMessageToCommunity (Message message_id) {
		
	}
	
	

}

