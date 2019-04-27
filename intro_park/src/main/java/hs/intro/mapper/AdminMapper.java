package hs.intro.mapper;

import java.util.List;

import hs.intro.admin.AboutVO;
import hs.intro.admin.CareerDetailVO;
import hs.intro.admin.CareerVO;
import hs.intro.admin.EducationVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;
import hs.intro.admin.SkillVO;

public interface AdminMapper {

	// 포트폴리오
	public List<PortfolioVO> portfolioList() throws Exception;

	public PortfolioVO portfolioDetail(PortfolioVO portfoliovo) throws Exception;

	public int portfolioUpdate(PortfolioVO portfoliovo) throws Exception;

	public int portfolioInsert(PortfolioVO portfoliovo) throws Exception;

	public int portfolioDelete(PortfolioVO portfoliovo) throws Exception;


	// 간략소개
	public AboutVO aboutList() throws Exception;

	public int aboutInsert(AboutVO aboutvo) throws Exception;

	public int aboutUpdate(AboutVO aboutvo) throws Exception;


	// 자기소개
	public List<IntroduceVO> introduceList() throws Exception;

	public int introduceUpdate(IntroduceVO introducevo) throws Exception;

	public int introduceInsert(IntroduceVO introducevo) throws Exception;

	public int introduceDelete(IntroduceVO introducevo) throws Exception;

    // 교육사항
	public List<EducationVO> educationList() throws Exception;

	public int educationUpdate(EducationVO educationvo) throws Exception;

	public int educationInsert(EducationVO educationvo) throws Exception;

	public int educationDelete(EducationVO educationvo) throws Exception;

	// 경력사항
	public List<CareerVO> careerList() throws Exception;

	public int careerUpdate(CareerVO careervo) throws Exception;

	public int careerInsert(CareerVO careervo) throws Exception;

	public int careerDelete(CareerVO careervo) throws Exception;

	public int careerChildDelete(CareerVO careervo) throws Exception;

	// 경력사항 상세
	public List<CareerDetailVO> careerDetailList() throws Exception;

	public int careerDetailUpdate(CareerDetailVO careerdetailvo) throws Exception;

	public int careerDetailInsert(CareerDetailVO careerdetailvo) throws Exception;

	public int careerDetailDelete(CareerDetailVO careerdetailvo) throws Exception;


    // 보유기술
	public List<SkillVO> skillList() throws Exception;

	public int skillUpdate(SkillVO skillvo) throws Exception;

	public int skillInsert(SkillVO skillvo) throws Exception;

	public int skillDelete(SkillVO skillvo) throws Exception;

}
