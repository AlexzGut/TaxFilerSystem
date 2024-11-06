package com.lcit.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.lcit.models.TaxFiler;

public class TaxFilerDaoImp implements TaxFilerDao{

	JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int save(TaxFiler taxFiler) {
		String sqlQuery = "INSERT INTO tax_filer "
					 + "(name, ssn, email, phone_number, address, annual_income, annual_expenses, tax_year) "
					 + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] args = { taxFiler.getName(), taxFiler.getSsn(), taxFiler.getEmail(), taxFiler.getPhoneNumber(), taxFiler.getAddress(),
					 	 taxFiler.getAnnualIncome(), taxFiler.getAnnualExpenses(), taxFiler.getTaxYear() };
		return jdbcTemplate.update(sqlQuery, args);
	}

	@Override
	public TaxFiler findById(int id) {
		String sqlQuery = "SELECT * FROM tax_filer WHERE id = ?";
		Object[] args = { id };
		BeanPropertyRowMapper<TaxFiler> rowMapper = new BeanPropertyRowMapper<>(TaxFiler.class);
		return jdbcTemplate.queryForObject(sqlQuery, rowMapper, args);
	}

	@Override
	public List<TaxFiler> findAll() {
		String sqlQuery = "SELECT * FROM tax_filer";
		BeanPropertyRowMapper<TaxFiler> rowMapper = new BeanPropertyRowMapper<>(TaxFiler.class);
		return jdbcTemplate.query(sqlQuery, rowMapper);
	}

	@Override
	public int update(TaxFiler taxFiler) {
		String sqlQuery = "UPDATE tax_filer SET name = ?, ssn = ?, email = ?, phone_number = ?, "
				+ "address = ?, annual_income = ?, annual_expenses = ?, tax_year = ? "
				+ "WHERE id = ?";
		Object[] args = { taxFiler.getName(), taxFiler.getSsn(), taxFiler.getEmail(), taxFiler.getPhoneNumber(), taxFiler.getAddress(),
			 	 taxFiler.getAnnualIncome(), taxFiler.getAnnualExpenses(), taxFiler.getTaxYear(), taxFiler.getId() };
		return jdbcTemplate.update(sqlQuery, args);
	}

	@Override
	public int deleteById(int id) {
		String sqlQuery = "DELETE FROM tax_filer WHERE id = ?";
		Object[] args = { id };
		return jdbcTemplate.update(sqlQuery, args);
	}

	@Override
	public List<TaxFiler> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
