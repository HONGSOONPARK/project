package hs.intro.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hs.intro.admin.AboutVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;
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
		AboutVO aboutvo = mainMapper.about();

		mv.addObject("list", list);
		mv.addObject("aboutvo", aboutvo);
		mv.addObject("introducevo", introducevo);

		return mv;

    }
}


