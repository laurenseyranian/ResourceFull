package com.codingdojo.resourcefull.repositories;
import org.springframework.data.repository.CrudRepository;
import com.codingdojo.resourcefull.models.Message;

public interface MessageRepository extends CrudRepository <Message, Long>{
	
}


