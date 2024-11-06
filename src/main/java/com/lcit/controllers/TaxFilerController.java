package com.lcit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lcit.dao.TaxFilerDaoImp;
import com.lcit.models.TaxFiler;

@Controller
@RequestMapping("/taxfilers")
public class TaxFilerController {
	
	@Autowired
	TaxFilerDaoImp dao;
	
	@GetMapping("new")
	public String getNewTaxFilerPage() {
		return "taxFiler/new";
	}
	
	@GetMapping("edit/{id}")
	public String getEditTaxFilerPage(@PathVariable int id, Model model) {
		model.addAttribute("taxFiler", dao.findById(id));
		return "taxFiler/edit";
	}
	
	@GetMapping
	public String getIndexPage(Model model) {
		model.addAttribute("taxFilers", dao.findAll());
		return "taxFiler/index";
	}
	
	@PostMapping
	public String saveTaxFiler(@ModelAttribute TaxFiler taxFiler, Model model) {
		dao.save(taxFiler);		
		return "redirect:/taxfilers";
	}
	
	@PutMapping("update")
	public String updateTaxFiler(@RequestBody TaxFiler taxFiler) {
		dao.update(taxFiler);
		return "taxFiler/index";
	}
	
	@DeleteMapping("delete/{id}")
	public String deleteTaxFiler(@PathVariable int id) {
		dao.deleteById(id);
		return "taxFiler/index";
	}
	
}
