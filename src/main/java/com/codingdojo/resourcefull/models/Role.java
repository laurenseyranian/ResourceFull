package com.codingdojo.resourcefull.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "roles")
public class Role {
//----------------------------------------------------------------
//	Attributes
//----------------------------------------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Long id;
	
	@Size(min = 2, message = "Enter name")
	private String name;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;


//----------------------------------------------------------------
//		Constructors
//----------------------------------------------------------------
	public Role() {}
	
	public Role(Long id, String name, Date createdAt, Date updatedAt) {
	this.id = id;
	this.name = name;
	this.createdAt = createdAt;
	this.updatedAt = updatedAt;
	}

//----------------------------------------------------------------
//	Relationships
//----------------------------------------------------------------
	@ManyToMany(mappedBy = "roles")
	private List<User> users;
	
//----------------------------------------------------------------
//	Getters and Setters
//----------------------------------------------------------------
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
}
