package com.lcit.dao;

import java.util.List;

import com.lcit.models.TaxFiler;

public interface TaxFilerDao extends DAO<TaxFiler>{
	public List<TaxFiler> findByName(String name);
}
