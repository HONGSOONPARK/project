package hs.intro.mapper;

import java.util.List;

import hs.intro.admin.AboutVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;

public interface AdminMapper {

	public List<PortfolioVO> portfolioList() throws Exception;

	public int portfolioUpdate(PortfolioVO portfoliovo) throws Exception;

	public int portfolioInsert(PortfolioVO portfoliovo) throws Exception;

	public int portfolioDelete(PortfolioVO portfoliovo) throws Exception;

	public AboutVO aboutList() throws Exception;

	public int aboutInsert(AboutVO aboutvo) throws Exception;

	public int aboutUpdate(AboutVO aboutvo) throws Exception;

	public List<IntroduceVO> introduceList() throws Exception;

	public int introduceUpdate(IntroduceVO introducevo) throws Exception;

	public int introduceInsert(IntroduceVO introducevo) throws Exception;

	public int introduceDelete(IntroduceVO introducevo) throws Exception;
}
