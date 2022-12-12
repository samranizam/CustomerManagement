package springweb.demo;

import javax.persistence.*;

@Entity
public class Customer {
	
	@Id @GeneratedValue
	private long id;
	
	@Column
	private String name;
	@Column
	private String phone;
	@Column
	private String address;
	
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Customer(String name, String phone, String address) {
		super();
		this.name = name;
		this.phone = phone;
		this.address = address;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", phone=" + phone + ", address=" + address + "]";
	}

	}
	

