package hs.intro.mapper;

import java.util.List;

import hs.intro.admin.PortfolioVO;

public interface AdminMapper {

	public List<PortfolioVO> portfolioList() throws Exception;

	public int portfolioUpdate(PortfolioVO portfoliovo) throws Exception;

	public int portfolioInsert(PortfolioVO portfoliovo) throws Exception;

	public int portfolioDelete(PortfolioVO portfoliovo) throws Exception;


}
