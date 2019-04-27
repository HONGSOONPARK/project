package hs.intro.mapper;

import java.util.List;

import hs.intro.admin.AboutVO;
import hs.intro.admin.CareerDetailVO;
import hs.intro.admin.CareerVO;
import hs.intro.admin.EducationVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;
import hs.intro.admin.SkillVO;

public interface MainMapper {

	public List<PortfolioVO> portfolio() throws Exception;
	public List<IntroduceVO> introduce() throws Exception;
	public List<EducationVO> education() throws Exception;
	public List<CareerVO> career() throws Exception;
	public List<CareerDetailVO> careerDetailList() throws Exception;
	public List<SkillVO> skill() throws Exception;
	public AboutVO about() throws Exception;


}
