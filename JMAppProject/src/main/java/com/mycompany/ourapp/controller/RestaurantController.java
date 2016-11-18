package com.mycompany.ourapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.ourapp.dao.FavoriteDao;
import com.mycompany.ourapp.dto.Member;
import com.mycompany.ourapp.dto.Restaurant;
import com.mycompany.ourapp.service.MemberService;
import com.mycompany.ourapp.service.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {
	private static final Logger logger = LoggerFactory.getLogger(RestaurantController.class);
	
	@Autowired
	private RestaurantService restaurantService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/list")
	public String list(String pageNo, Model model, HttpSession session){
		
		int intPageNo = 1;
		if ( pageNo == null ) {
			pageNo = (String) session.getAttribute("pageNo");
			if ( pageNo != null ) {
				intPageNo = Integer.parseInt(pageNo);
			}
		} else {
			intPageNo = Integer.parseInt(pageNo);
		}
		session.setAttribute("pageNo", String.valueOf(intPageNo));
		
		
	/*	mid=(String)session.getAttribute("login");
		Member member=memberService.info(mid);
		int mresid=member.getMresid();
		int mrank=member.getMrank();
		model.addAttribute("mresid", mresid);
		model.addAttribute("mrank", mrank);*/
		
		int rowsPerPage=8;
		int pagesPerGroup=5;
		int totalRestaurantNo=restaurantService.getCount();
		
		int totalPageNo=totalRestaurantNo/rowsPerPage+((totalRestaurantNo%rowsPerPage!=0)?1:0);
		int totalGroupNo=totalPageNo/pagesPerGroup+((totalPageNo%pagesPerGroup!=0)?1:0);
		
		int groupNo=(intPageNo-1)/pagesPerGroup+1;
		int startPageNo=(groupNo-1)*pagesPerGroup+1;
		int endPageNo=startPageNo+pagesPerGroup-1;
		if(groupNo==totalGroupNo){
			endPageNo=totalPageNo;
		}
		
		List<Restaurant> list=restaurantService.list(intPageNo, rowsPerPage);
		model.addAttribute("list", list);
		model.addAttribute("pageNo", intPageNo);
		model.addAttribute("rowsPerPage", rowsPerPage);
		model.addAttribute("pagesPerGroup", pagesPerGroup);
		model.addAttribute("totalRestaurantNo", totalRestaurantNo);
		model.addAttribute("totalPageNo", totalPageNo);
		model.addAttribute("totalGroupNo", totalGroupNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("startPageNo", startPageNo);
		model.addAttribute("endPageNo", endPageNo);
		return "restaurant/list";
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addForm(){
		logger.info("addForm() 실행");
		return "restaurant/addForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Restaurant restaurant){
		logger.info("add() 실행");
			restaurantService.add(restaurant);
			return "redirect:/restaurant/list";  
			
			
	}
	
	@RequestMapping("/showPhoto")
	public void showPhoto(String ressavedfile, HttpServletRequest request, HttpServletResponse response){
		try{
		String fileName=ressavedfile;
		
		
		String resmime=request.getServletContext().getMimeType(fileName);
		response.setContentType("image/jpeg");
		
		OutputStream os=response.getOutputStream();
		
		String filePath=request.getServletContext().getRealPath("/WEB-INF/photo/"+fileName);
		FileInputStream is=new FileInputStream(filePath);
		
		byte[] values=new byte[1024];
		int byteNum=-1;
		while((byteNum=is.read(values))!=-1){
			os.write(values, 0, byteNum);
		}
		os.flush();
		is.close();
		os.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/delete")
	public String delete(int resid, Model model){
		
		restaurantService.delete(resid);
		
		return "redirect:/restaurant/list";
	}
	
	@RequestMapping("/info")
	public String info(int resid, Model model, HttpSession session){
		Restaurant restaurant=restaurantService.info(resid);
		model.addAttribute("restaurant", restaurant);
		model.addAttribute("resid", resid);
		
		String mid=(String)session.getAttribute("login");
		Member member=memberService.info(mid);
	
		int mrank=member.getMrank();
		model.addAttribute("mrank", mrank);
	
		
		return "restaurant/info";
	}
	

	
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modifyForm(int resid, Model model){
		Restaurant restaurant=restaurantService.info(resid);
		model.addAttribute("restaurant", restaurant);
		return "/restaurant/modify";
	}
	
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(Restaurant restaurant){
		Restaurant dbRestaurant=restaurantService.info(restaurant.getResid());
		restaurantService.modify(restaurant);
		return "redirect:/restaurant/list";
	}
	
	@RequestMapping("/index")
	public String index()
	{
		return "restaurant/index";
	}
	

}
