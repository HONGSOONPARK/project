package hs.intro.mapper;

import java.util.List;

import hs.intro.admin.AboutVO;
import hs.intro.admin.IntroduceVO;
import hs.intro.admin.PortfolioVO;

public interface MainMapper {

	public List<PortfolioVO> portfolio() throws Exception;
	public List<IntroduceVO> introduce() throws Exception;
	public AboutVO about() throws Exception;


}
