package com.lcit.dao;

import java.util.List;

public interface DAO<T> {
	public int save(T t);
	public T findById(int id);
	public List<T> findAll();
	public int update(T t);
	public int deleteById(int id);
}
