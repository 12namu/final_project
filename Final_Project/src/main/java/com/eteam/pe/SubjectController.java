package com.eteam.pe;

import java.util.List;

import javax.inject.Inject;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eteam.groupInfo.Group_JoinDTO;
import com.eteam.gstudy.Group_SubjectService;

@Controller
@RequestMapping("/subject/*")
public class SubjectController {

	@Inject
	Group_SubjectService subjectService;
	
	
	@RequestMapping("/list")
	public void list(){
	}
	
	@RequestMapping(value="/searchGMember", method=RequestMethod.POST)
	@ResponseBody
	public List<Group_JoinDTO> search(@RequestParam("g_num") int g_num){
		System.out.println("컨트롤러들어옴");
		List<Group_JoinDTO> group=subjectService.search(g_num);
		System.out.println("컨트롤러에서 list 리턴해옴");
		return group;
	}
}
