package com.desafio.arquitectura1.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.desafio.arquitectura1.entity.Category;
import com.desafio.arquitectura1.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

	public List<Product> findByCategory(Category category);
	
}
