package com.codingdojo.resourcefull.models;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

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
	
	//to be input from user
	@Size (min=1, message="Must select name from the list")
	private String name;
	
	private int residents; 
	
	private int pets;
	
	private String street;
	
	private String city;
	
	private String state;
	
	private double lat;
	
	private double longitude;
	
	//calculated by app
	
	@Transient
	private int water; 
	
	@Transient
	private int food;
	
	@Transient
	private int hygienekits; 
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date food_filledAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date water_filledAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date hygienekits_filledAt;
	
	private String liaisoncontactname;
	
	private String liaisoncontactnumber; 
	
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
	public Community() {
		
	}
	
	public Community(Long id, int residents, int pets, int water, int hygienekits,
			String liaisoncontactname, String liaisoncontactnumber, Date createdAt, Date updatedAt, String street, String city, String state, String name) {
		super();
		this.id = id;
		this.name = name;
		this.residents = residents;
		this.pets = pets;
		this.street = street;
		this.city = city;
		this.state = state;
		this.water = water;
		this.hygienekits = hygienekits;
		this.setLiaisoncontactname(liaisoncontactname);
		this.setLiaisoncontactnumber(liaisoncontactnumber);
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
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFood() {
		return food;
	}
	public void setFood(int food) {
		this.food = food;
	}
	public String getLiaisoncontactname() {
		return liaisoncontactname;
	}
	public void setLiaisoncontactname(String liaisoncontactname) {
		this.liaisoncontactname = liaisoncontactname;
	}
	public String getLiaisoncontactnumber() {
		return liaisoncontactnumber;
	}
	public void setLiaisoncontactnumber(String liaisoncontactnumber) {
		this.liaisoncontactnumber = liaisoncontactnumber;
	}
}
