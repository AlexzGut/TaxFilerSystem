package com.lcit.models;

import java.util.Objects;

public class TaxFiler {
	private int id;
	private String name;
	private String ssn; //Social Security Number
	private String email;
	private String phoneNumber;
	private String address;
	private double annualIncome;
	private double annualExpenses;
	private int taxYear;
	
	public TaxFiler() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public TaxFiler(int id, String name, String ssn, String email, String phoneNumber, String address,
			double annualIncome, double annualExpenses, int taxYear) {
		super();
		this.id = id;
		this.name = name;
		this.ssn = ssn;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.annualIncome = annualIncome;
		this.annualExpenses = annualExpenses;
		this.taxYear = taxYear;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(double annualIncome) {
		this.annualIncome = annualIncome;
	}
	public double getAnnualExpenses() {
		return annualExpenses;
	}
	public void setAnnualExpenses(double annualExpenses) {
		this.annualExpenses = annualExpenses;
	}
	public int getTaxYear() {
		return taxYear;
	}
	public void setTaxYear(int taxYear) {
		this.taxYear = taxYear;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(ssn);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TaxFiler other = (TaxFiler) obj;
		return Objects.equals(ssn, other.ssn);
	}
	
	@Override
	public String toString() {
		return "TaxFiller [id=" + id + ", name=" + name + ", ssn=" + ssn + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", address=" + address + ", annualIncome=" + annualIncome + ", annualExpenses="
				+ annualExpenses + ", taxYear=" + taxYear + "]";
	}	
}
