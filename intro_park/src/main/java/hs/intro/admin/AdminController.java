package hs.intro.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import hs.intro.common.FileService;
import hs.intro.mapper.AdminMapper;


@Controller
public class AdminController {

	@Autowired
	AdminMapper adminMapper;

	@Autowired
	AdminService adminService;

	@Autowired
	FileService fileService;

	// 관리자 로그인 화면
	@GetMapping("/mng/adminLogin")
    public String adminLogin(){
        return "mng/adminLogin";
    }

	// 관리자 메인 화면(로그인 성공시)
	@GetMapping("/mng/adminMain")
    public ModelAndView adminMain() throws Exception{

		ModelAndView mv = new ModelAndView("mng/adminMain");
		List<PortfolioVO> pfvo = adminMapper.portfolioList();
		List<IntroduceVO> introducevo = adminMapper.introduceList();
		AboutVO aboutvo = adminMapper.aboutList();
		mv.addObject("pfvo", pfvo);
		mv.addObject("aboutvo", aboutvo);
		mv.addObject("introducevo", introducevo);
		return mv;
    }

	// 포트폴리오 저장버튼
	@PostMapping("/mng/pfSave")
    public ModelAndView portfolioSave(PortfolioVO portfoliovo, @RequestPart MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");
		adminService.portfolioUpdate(portfoliovo, files);
		return mv;
    }

	// 포트폴리오 추가버튼
	@PostMapping("/mng/pfInsert")
    public ModelAndView portfolioInsert(PortfolioVO portfoliovo, @RequestPart MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");
		adminService.portfolioInsert(portfoliovo, files);
		return mv;
    }

	// 포트폴리오 삭제버튼
	@RequestMapping("/mng/pfDel")
	@ResponseBody
    public String portfolioDelete(@RequestBody PortfolioVO portfoliovo) throws Exception{
		adminService.portfolioDelete(portfoliovo);
		return "success";
    }


	// 간략소개 저장버튼
	@PostMapping("/mng/aboutSave")
    public ModelAndView aboutSave(AboutVO aboutvo) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");
		adminService.aboutUpdate(aboutvo);
		return mv;
    }


	// 포트폴리오 저장버튼
	@PostMapping("/mng/introduceSave")
    public ModelAndView introduceSave(IntroduceVO introducevo) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");

		adminService.introduceUpdate(introducevo);
		return mv;
    }

	// 포트폴리오 추가버튼
	@PostMapping("/mng/introduceInsert")
    public ModelAndView introduceInsert(IntroduceVO introducevo) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");
		adminService.introduceInsert(introducevo);
		return mv;
    }

	// 포트폴리오 삭제버튼
	@RequestMapping("/mng/introduceDel")
	@ResponseBody
    public String introduceDelete(@RequestBody IntroduceVO introducevo) throws Exception{
		adminService.introduceDelete(introducevo);
		return "success";
    }

}


