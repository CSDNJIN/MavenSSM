package com.ZL.Dao;

import java.util.List;

import com.ZL.pojo.city;

public interface CityDao {
   public List<city> findByAll();
	 
   public void del(int id);
   
   public void Save(city cc);
   
   public city findById(int id);
   
   public void update(city ct);
}
