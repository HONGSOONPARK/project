package hs.intro.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import hs.intro.common.FileService;
import hs.intro.common.FileVO;
import hs.intro.mapper.AdminMapper;
import hs.intro.mapper.CommonMapper;


@Service
public class AdminService
{
	@Resource
	AdminMapper adminMapper;

	@Resource
	CommonMapper commonMapper;

	@Resource
	FileService fileService;


	// 포트폴리오 추가
	public void portfolioInsert(PortfolioVO portfoliovo, MultipartFile[] files) throws Exception{

		// seq 업데이트
		commonMapper.updateSeq("PORTFOLIO");

		// 현재 seq 갖고오기
		int seq = commonMapper.selectSeq("PORTFOLIO");

		// 데이터 삽입
		adminMapper.portfolioInsert(portfoliovo);

		// 파일 추가
		List<FileVO> fileList = fileService.fileStore(files);

		for(int i=0; i<fileList.size(); i++){
			//파일이 추가된 상태
			if(!fileList.isEmpty() && fileList.get(i).getFile_status() == "ACTIVE"){
//				fileList.get(i).setFile_explain(portfoliovo.getFile_explain());
				fileList.get(i).setRef_no(seq);

				// seq 업데이트
				commonMapper.updateSeq("FILES");

				// 데이터삽입
				commonMapper.fileInsert(fileList.get(i));
			}
		}
	}


	// 포트폴리오 업데이트
	public void portfolioUpdate(PortfolioVO portfoliovo, MultipartFile[] files) throws Exception{

		List<FileVO> fileList = fileService.fileStore(files);
		for(int i=0; i<fileList.size(); i++){
			if(!fileList.isEmpty() && fileList.get(i).getFile_status() == "ACTIVE"){
				fileList.get(i).setFile_explain(portfoliovo.getFile_explain());
				fileList.get(i).setRef_no(portfoliovo.getNo());
				if(portfoliovo.getFile_no() == null){
					// seq 업데이트
					commonMapper.updateSeq("FILES");
					// 데이터삽입
					commonMapper.fileInsert(fileList.get(i));
				}else{
					// 데이터 엡데이트
					commonMapper.fileUpdate(fileList.get(i));
				}
			}
		}

		// 데이터 업데이트
		adminMapper.portfolioUpdate(portfoliovo);
	}

	// 포트폴리오 삭제
	public void portfolioDelete(PortfolioVO portfoliovo) throws Exception{
		// del_yn = 'Y' 변경
		adminMapper.portfolioDelete(portfoliovo);
		FileVO filevo = new FileVO();
		filevo.setFile_no(portfoliovo.getFile_no());
		filevo.setDel_yn(portfoliovo.getDel_yn());
		// 데이터 업데이트
		fileService.fileDelete(filevo);
	}

	public void aboutUpdate(AboutVO aboutvo) throws Exception{
		// 데이터 업데이트
		adminMapper.aboutUpdate(aboutvo);
	}


	// 자기소개서 추가
	public void introduceInsert(IntroduceVO introducevo) throws Exception{

		// seq 업데이트
		commonMapper.updateSeq("INTRODUCE");
		// 데이터 삽입
		adminMapper.introduceInsert(introducevo);

	}


	// 자기소개서 업데이트
	public void introduceUpdate(IntroduceVO introducevo) throws Exception{

		// seq 업데이트
//		commonMapper.updateSeq("INTRODUCE");
		// 데이터 업데이트
		adminMapper.introduceUpdate(introducevo);
	}

	// 자기소개서 삭제
	public void introduceDelete(IntroduceVO introducevo) throws Exception{
		// del_yn = 'Y' 변경
		adminMapper.introduceDelete(introducevo);
	}





}





