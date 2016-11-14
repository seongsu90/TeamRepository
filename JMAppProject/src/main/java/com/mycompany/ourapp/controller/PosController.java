package com.mycompany.ourapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.ourapp.dto.Pos;
import com.mycompany.ourapp.service.PosService;

@Controller
@RequestMapping("/pos")
public class PosController {
	private static final Logger logger = LoggerFactory.getLogger(PosController.class);
	
	@Autowired
	private PosService posService;
	
	@RequestMapping("/index")
	public String index(HttpSession session, Model model) {
		logger.info("pos index");
		/*int presid = (Integer) session.getAttribute("presid");*/
		int presid = 1;
		List<Pos> list = posService.list(presid);
		model.addAttribute("list", list);
		return "pos/index";
	}

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addForm() {			
		logger.info("pos addForm 실행");
		return "pos/addForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Pos pos) {		// 수기 주문, 모바일 주문
		logger.info("pos add 실행");
		int row = posService.add(pos);		
		return "redirect:/pos/index";	
	}

	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modifyForm() {
		logger.info("pos modifyForm 실행");
		return "pos/modifyForm";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(Pos pos) {
		logger.info("pos modify 실행");
		int row = posService.modify(pos);
		return "redirect:/pos/index";
	}
	
	@RequestMapping("/delete")
	public String delete(int presid, int ptableno) {
		logger.info("pos delete 실행");
		int row = posService.delete(presid, ptableno);
		return "redirect:/pos/index";	
	}
	
	@RequestMapping("/info")	
	public String info(HttpSession session, Model model) {
		logger.info("pos info 실행");
		/*int presid = (Integer) session.getAttribute("presid");*/
		/*int ptableno = (Integer) session.getAttribute("ptableno");*/
		int presid = 1;
		int ptableno = 1;
		List<Pos> list = posService.info(presid, ptableno);
		model.addAttribute("pos", list);		
		return "pos/info";
	}
	
	@RequestMapping("/calcsum")
	public String calcSum(int presid, int ptableno, Model model) {
		List<Integer> list = posService.calcSum(presid, ptableno);
		
		int price = 0;
		for ( int i = 0; i < list.size(); i++ ) {
			price += list.get(i);
		}
		
		model.addAttribute("price", price);
		return "pos/calcSum";
	}
}
