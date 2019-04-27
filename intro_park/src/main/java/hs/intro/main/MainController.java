package hs.intro.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hs.intro.admin.AboutVO;
import hs.intro.admin.CareerDetailVO;
import hs.intro.admin.CareerVO;
import hs.intro.admin.EducationVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;
import hs.intro.admin.SkillVO;
import hs.intro.mapper.MainMapper;


@Controller
public class MainController {

	@Autowired
	MainMapper mainMapper;

	@RequestMapping("/")
    public ModelAndView main() throws Exception{
		ModelAndView mv = new ModelAndView("/index");
		List<PortfolioVO> list = mainMapper.portfolio();
		List<IntroduceVO> introducevo = mainMapper.introduce();
		List<EducationVO> educationvo = mainMapper.education();
		List<CareerVO> careervo = mainMapper.career();
		List<CareerDetailVO> careerdetailvo = mainMapper.careerDetailList();
		List<SkillVO> skillvo = mainMapper.skill();
		AboutVO aboutvo = mainMapper.about();

		mv.addObject("list", list);
		mv.addObject("aboutvo", aboutvo);
		mv.addObject("introducevo", introducevo);
		mv.addObject("educationvo", educationvo);
		mv.addObject("careervo", careervo);
		mv.addObject("careerdetailvo", careerdetailvo);
		mv.addObject("skillvo", skillvo);

		return mv;

    }
}



