package com.eteam.pe;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eteam.comm.MakePage;
import com.eteam.groupInfo.Group_JoinDTO;
import com.eteam.gstudy.Group_SubjectDTO;
import com.eteam.gstudy.Group_SubjectService;

@Controller
@RequestMapping("/subject/*")
public class SubjectController {

	@Inject
	Group_SubjectService subjectService;
	
	
	@RequestMapping(value="/alterSubject", method=RequestMethod.POST)
	public String alterSubject(Group_SubjectDTO sdto, @RequestParam("s_yy")int yyy, @RequestParam("s_mm") int mmm, @RequestParam("s_dd") int ddd){
		int result=subjectService.alter(sdto, yyy, mmm, ddd);
		System.out.println("수정: "+result);
		return "redirect:getList?g_num=0";				
	}
	
	
	
	@RequestMapping(value="/deleteSubject", method=RequestMethod.POST)
	public String deleteSubject(@RequestParam("s_yy") int yyy,@RequestParam("s_mm") int mmm, @RequestParam("s_dd") int ddd ){
		int result=subjectService.delete(yyy, mmm, ddd);
		System.out.println("삭제: "+result);
		return "redirect:getList?g_num=0";
	
	}
	
	@RequestMapping(value="/setSubject", method=RequestMethod.POST)
	public String set(Group_SubjectDTO sdto,MakePage makepage,RedirectAttributes redirect,HttpServletRequest request){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int result=subjectService.record(sdto);	
	
		makepage.setYy(sdto.getS_yy());
		makepage.setMm(sdto.getS_mm());
		List<Group_SubjectDTO> list=subjectService.listSubject(sdto.getG_Num(), makepage);
		redirect.addFlashAttribute("list", list);
		return "redirect:getList?g_num=0&s_yy="+sdto.getS_yy()+"&s_mm="+sdto.getS_mm()+"";
	}
	
	@RequestMapping(value="/getList")
	public ModelAndView list(@RequestParam("g_num") int g_num, @RequestParam(defaultValue="1", name="s_yy")int s_yy, @RequestParam(defaultValue="1", name="s_mm") int s_mm, MakePage makepage){
		
		if(s_yy==1 && s_mm==1){
			makepage.setDate();		
		}else{
			makepage.setYy(s_yy);
			makepage.setMm(s_mm);
		}
		
		List<Group_SubjectDTO> list=subjectService.listSubject(g_num,makepage);
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("list", list);
		
		if(s_yy==1 && s_mm==1){
			mv.addObject("m_yy", makepage.getYy());
			mv.addObject("m_mm", makepage.getMm());
		}else{
			mv.addObject("m_yy", s_yy);
			mv.addObject("m_mm", s_mm);
		}

		mv.setViewName("subject/list");
		return mv;
	}
	
	@RequestMapping(value="/ajaxList")
	@ResponseBody
	public List<Group_SubjectDTO> ajaxList(@RequestParam("g_num") int g_num, @RequestParam("s_yy")int s_yy, @RequestParam("s_mm") int s_mm,MakePage makepage){
		makepage.setYy(s_yy);
		makepage.setMm(s_mm);
		List<Group_SubjectDTO> list=subjectService.listSubject(g_num, makepage);
		return list;
	
	}
	
	
	@RequestMapping(value="/searchGMember", method=RequestMethod.POST)
	@ResponseBody
	public List<Group_JoinDTO> search(@RequestParam("g_num") int g_num){
		List<Group_JoinDTO> group=subjectService.search(g_num);
		return group;
	}
	
}
