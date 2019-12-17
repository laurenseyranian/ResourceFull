package com.codingdojo.resourcefull.models;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="community")
public class Community {
	
//----------------------------------------------------------------
//	Attributes
//----------------------------------------------------------------
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String neighborhood;
	
	private int residents; 
	
	private int pets;
	
	private String address;
	
	private int water; 
	
	private int hygienekits; 
	
	private String emergencycontactname;
	
	private String emergencycontactnumber; 
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
//----------------------------------------------------------------
//	Relationships
//----------------------------------------------------------------
	
//----------------------------------------------------------------
//	Constructors
//----------------------------------------------------------------
	public Community(Long id, String neighborhood, int residents, int pets, String address, int water, int hygienekits,
			String emergencycontactname, String emergencycontactnumber, Date createdAt, Date updatedAt) {
		super();
		this.id = id;
		this.neighborhood = neighborhood;
		this.residents = residents;
		this.pets = pets;
		this.address = address;
		this.water = water;
		this.hygienekits = hygienekits;
		this.emergencycontactname = emergencycontactname;
		this.emergencycontactnumber = emergencycontactnumber;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
//----------------------------------------------------------------
//	Getters and Setters
//----------------------------------------------------------------
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNeighborhood() {
		return neighborhood;
	}
	public void setNeighborhood(String neighborhood) {
		this.neighborhood = neighborhood;
	}
	public int getResidents() {
		return residents;
	}
	public void setResidents(int residents) {
		this.residents = residents;
	}
	public int getPets() {
		return pets;
	}
	public void setPets(int pets) {
		this.pets = pets;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getWater() {
		return water;
	}
	public void setWater(int water) {
		this.water = water;
	}
	public int getHygienekits() {
		return hygienekits;
	}
	public void setHygienekits(int hygienekits) {
		this.hygienekits = hygienekits;
	}
	public String getEmergencycontactname() {
		return emergencycontactname;
	}
	public void setEmergencycontactname(String emergencycontactname) {
		this.emergencycontactname = emergencycontactname;
	}
	public String getEmergencycontactnumber() {
		return emergencycontactnumber;
	}
	public void setEmergencycontactnumber(String emergencycontactnumber) {
		this.emergencycontactnumber = emergencycontactnumber;
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
}
