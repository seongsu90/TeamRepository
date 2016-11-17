package com.mycompany.ourapp.controller;







import java.io.FileInputStream;
import java.io.OutputStream;
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

import com.mycompany.ourapp.dto.Event;

import com.mycompany.ourapp.service.EventService;

@Controller
@RequestMapping("/event")
public class EventController {
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@Autowired
	private EventService eventService;
	
	@RequestMapping("/index")
	public String index() {
		logger.info("index 요청처리");
		return "event/index";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addForm(){
		logger.info("addForm 요청처리");
		return "event/addForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Event event){
		logger.info("add 요청처리");
		eventService.add(event);
		return "redirect:/event/index";
	}
	
	@RequestMapping("/delete")
	public String delete(int eresid,String emlname){
		logger.info("delete 요청처리");
		eventService.delete(eresid,emlname);
		return "redirect:/event/index";
	}
	
	@RequestMapping("/info")
	public String info(int eresid,String emlname, Model model){
		logger.info("info 처리 요청");
		Event event = eventService.info(eresid,emlname);
		model.addAttribute("event",event);
		return "event/index";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modifyForm(int eresid, String emlname, Model model){
		logger.info("modify 요청처리");
		Event event = eventService.info(eresid, emlname);
		model.addAttribute("event", event);
		return "event/modify";
	}
	
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(Event event){
		logger.info("modify 요청처리");
		Event dbevent = eventService.info(event.getEresid(),event.getEmlname());
		eventService.modify(dbevent);
		return "redirect:/event/index";
	}
	
	@RequestMapping("/showPhoto")
	public void showPhoto(String esavedfile, HttpServletRequest request, HttpServletResponse response){
		try{
		String fileName=esavedfile;
		
		
		String emime=request.getServletContext().getMimeType(fileName);
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
		
		int rowsPerPage=8;
		int pagesPerGroup=5;
		int totalRestaurantNo=eventService.getCount();
		
		int totalPageNo=totalRestaurantNo/rowsPerPage+((totalRestaurantNo%rowsPerPage!=0)?1:0);
		int totalGroupNo=totalPageNo/pagesPerGroup+((totalPageNo%pagesPerGroup!=0)?1:0);
		
		int groupNo=(intPageNo-1)/pagesPerGroup+1;
		int startPageNo=(groupNo-1)*pagesPerGroup+1;
		int endPageNo=startPageNo+pagesPerGroup-1;
		if(groupNo==totalGroupNo){
			endPageNo=totalPageNo;
		}
		
		List<Event> list= eventService.list(intPageNo, rowsPerPage);
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
		return "event/list";
	}
	
	
}