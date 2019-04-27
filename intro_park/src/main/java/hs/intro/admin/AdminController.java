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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

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
		List<EducationVO> educationvo = adminMapper.educationList();
		List<CareerVO> careervo = adminMapper.careerList();
		List<CareerDetailVO> careerdetailvo = adminMapper.careerDetailList();
		List<SkillVO> skillvo = adminMapper.skillList();
		AboutVO aboutvo = adminMapper.aboutList();
		mv.addObject("pfvo", pfvo);
		mv.addObject("aboutvo", aboutvo);
		mv.addObject("introducevo", introducevo);
		mv.addObject("educationvo", educationvo);
		mv.addObject("careervo", careervo);
		mv.addObject("careerdetailvo", careerdetailvo);
		mv.addObject("skillvo", skillvo);
		return mv;
    }

	// 포트폴리오 저장버튼
	@RequestMapping("/mng/pfSave")
    public String  portfolioSave(PortfolioVO portfoliovo, @RequestPart MultipartFile[] files,  RedirectAttributes redirect) throws Exception{
		adminService.portfolioUpdate(portfoliovo, files);
		String json = new ObjectMapper().writeValueAsString(portfoliovo);
		redirect.addFlashAttribute("scrollTarget","portfolio");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 포트폴리오 상세보기
	@RequestMapping("/mng/pfDetail")
	@ResponseBody
    public PortfolioVO portfolioDetail(@RequestBody PortfolioVO portfoliovo) throws Exception{
		PortfolioVO vo = adminMapper.portfolioDetail(portfoliovo);
		return vo;
    }

	// 포트폴리오 추가버튼
	@RequestMapping("/mng/pfInsert")
    public String portfolioInsert(PortfolioVO portfoliovo, @RequestPart MultipartFile[] files, RedirectAttributes redirect) throws Exception{
		adminService.portfolioInsert(portfoliovo, files);
//		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");

		String json = new ObjectMapper().writeValueAsString(portfoliovo);
		redirect.addFlashAttribute("scrollTarget","portfolio");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
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
	@ResponseBody
    public String aboutSave(@RequestBody AboutVO aboutvo) throws Exception{
		adminService.aboutUpdate(aboutvo);
//		ModelAndView mv = new ModelAndView("redirect:/mng/adminMain");
		return "success";
    }


	// 자기소개서 저장버튼
	@PostMapping("/mng/introduceSave")
    public String introduceSave(IntroduceVO introducevo, RedirectAttributes redirect) throws Exception{
		adminService.introduceUpdate(introducevo);
		String json = new ObjectMapper().writeValueAsString(introducevo);
		redirect.addFlashAttribute("scrollTarget","about");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 자기소개서 추가버튼
	@PostMapping("/mng/introduceInsert")
//	@ResponseBody
    public String introduceInsert(IntroduceVO introducevo, RedirectAttributes redirect) throws Exception{
		adminService.introduceInsert(introducevo);
		String json = new ObjectMapper().writeValueAsString(introducevo);
		redirect.addFlashAttribute("scrollTarget","about");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 자기소개서 삭제버튼
	@RequestMapping("/mng/introduceDel")
	@ResponseBody
    public String introduceDelete(@RequestBody IntroduceVO introducevo) throws Exception{
		adminService.introduceDelete(introducevo);
		return "success";
    }


	// 교육 저장버튼
	@PostMapping("/mng/educationSave")
    public String educationSave(EducationVO educationvo, RedirectAttributes redirect) throws Exception{
		adminService.educationUpdate(educationvo);

		String json = new ObjectMapper().writeValueAsString(educationvo);
		redirect.addFlashAttribute("scrollTarget","education");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 교육 추가버튼
	@PostMapping("/mng/educationInsert")
    public String educationInsert(EducationVO educationvo, RedirectAttributes redirect) throws Exception{

		adminService.educationInsert(educationvo);

		String json = new ObjectMapper().writeValueAsString(educationvo);
		redirect.addFlashAttribute("scrollTarget","education");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";


    }

	// 교육 삭제버튼
	@RequestMapping("/mng/educationDel")
	@ResponseBody
    public String educationDelete(@RequestBody EducationVO educationvo) throws Exception{
		adminService.educationDelete(educationvo);
		return "success";
    }


	// 경력 저장버튼
	@PostMapping("/mng/careerSave")
    public String careerSave(CareerVO careervo, RedirectAttributes redirect) throws Exception{

		adminService.careerUpdate(careervo);

		String json = new ObjectMapper().writeValueAsString(careervo);
		redirect.addFlashAttribute("scrollTarget","education");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 경력 추가버튼
	@PostMapping("/mng/careerInsert")
    public String careerInsert(CareerVO careervo, RedirectAttributes redirect) throws Exception{


		adminService.careerInsert(careervo);

		String json = new ObjectMapper().writeValueAsString(careervo);
		redirect.addFlashAttribute("scrollTarget","career");
		redirect.addFlashAttribute("scrollVo",json);

		return "redirect:/mng/adminMain";
    }

	// 경력 삭제버튼
	@RequestMapping("/mng/careerDel")
	@ResponseBody
    public String careerDelete(@RequestBody CareerVO careervo) throws Exception{
		adminService.careerDelete(careervo);
		return "success";
    }


	// 경력 프로젝트 저장버튼
	@PostMapping("/mng/careerDetailSave")
    public String careerDetailSave(CareerDetailVO careerdetailvo, RedirectAttributes redirect) throws Exception{

		adminService.careerDetailUpdate(careerdetailvo);

		String json = new ObjectMapper().writeValueAsString(careerdetailvo);
		redirect.addFlashAttribute("scrollTarget","career");
		redirect.addFlashAttribute("scrollVo",json);

		return "redirect:/mng/adminMain";
    }

	// 프로젝트 추가버튼
	@PostMapping("/mng/careerDetailInsert")

    public String careerDetailInsert(CareerDetailVO careerdetailvo, RedirectAttributes redirect) throws Exception{

		adminService.careerDetailInsert(careerdetailvo);
//		Map<String, Object> map = ObjectUtil.convertObjectToMap(careerdetailvo);

		String json = new ObjectMapper().writeValueAsString(careerdetailvo);
		redirect.addFlashAttribute("scrollTarget","career");
		redirect.addFlashAttribute("scrollVo",json);

		return "redirect:/mng/adminMain";
    }

	// 프로젝트 삭제버튼
	@RequestMapping("/mng/careerDetailDel")
	@ResponseBody
    public String careerDetailDel(@RequestBody CareerDetailVO careerdetailvo) throws Exception{
		adminService.careerDetailDelete(careerdetailvo);
		return "success";
    }





	// 보유기술 저장버튼
	@PostMapping("/mng/skillSave")
    public String skillSave(SkillVO skillvo, RedirectAttributes redirect) throws Exception{
		adminService.skillUpdate(skillvo);

		String json = new ObjectMapper().writeValueAsString(skillvo);
		redirect.addFlashAttribute("scrollTarget","skill");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";
    }

	// 보유기술 추가버튼
	@PostMapping("/mng/skillInsert")
    public String skillInsert(SkillVO skillvo, RedirectAttributes redirect) throws Exception{

		adminService.skillInsert(skillvo);

		String json = new ObjectMapper().writeValueAsString(skillvo);
		redirect.addFlashAttribute("scrollTarget","skill");
		redirect.addFlashAttribute("scrollVo",json);
		return "redirect:/mng/adminMain";


    }

	// 보유기술 삭제버튼
	@RequestMapping("/mng/skillDel")
	@ResponseBody
    public String skillDelete(@RequestBody SkillVO skillvo) throws Exception{
		adminService.skillDelete(skillvo);
		return "success";
    }








}


