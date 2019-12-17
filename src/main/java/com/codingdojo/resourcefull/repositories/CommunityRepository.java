package com.codingdojo.resourcefull.repositories;
import org.springframework.data.repository.CrudRepository;
import com.codingdojo.resourcefull.models.Community;

public interface CommunityRepository extends CrudRepository <Community, Long> {

}
