package com.eteam.pe;

import java.util.List;

import javax.inject.Inject;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eteam.groupInfo.Group_JoinDTO;
import com.eteam.gstudy.Group_SubjectDTO;
import com.eteam.gstudy.Group_SubjectService;

@Controller
@RequestMapping("/subject/*")
public class SubjectController {

	@Inject
	Group_SubjectService subjectService;
	
	
	@RequestMapping(value="/getList")
	public ModelAndView list(@RequestParam("g_num") int g_num){
		List<Group_SubjectDTO> list=subjectService.listSubject(g_num);
		ModelAndView mv=new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("subject/list");
		return mv;
	}
	
	
	@RequestMapping(value="/searchGMember", method=RequestMethod.POST)
	@ResponseBody
	public List<Group_JoinDTO> search(@RequestParam("g_num") int g_num){
		List<Group_JoinDTO> group=subjectService.search(g_num);
		return group;
	}
	
	
}
