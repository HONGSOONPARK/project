package hs.intro.common;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import hs.intro.mapper.CommonMapper;


@Service
public class FileService
{
	@Value("${spring.file.upload-dir}")
	private String dir;

	@Autowired
	CommonMapper commonMapper;

//	  private String fileUrl = "C:/eGovFrameDev/git/PROJECT/intro_park/src/main/webapp/uploads/portfolio/";

	  public List<FileVO> fileStore(MultipartFile[] files) throws Exception{

			FileVO filevo = null;
			List<FileVO> fileList = new ArrayList<FileVO>();
			String sourceFileName;
			String sourceFileNameExtension;
		    File destinationFile;
		    String destinationFileName;
		    for(int i=0; i<files.length; i++){
				if(!files[i].isEmpty() && files[i].getSize() > 0){
		//			fileList = new ArrayList<FileVO>();
					filevo = new FileVO();
		    		sourceFileName = files[i].getOriginalFilename();
		    		sourceFileName = sourceFileName.substring(sourceFileName.lastIndexOf("\\") + 1);
		            sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase();

		            // 파일 원래 이름
		            filevo.setFile_original_name(sourceFileName);
		            // 파일 확장자
		            filevo.setFile_extension(sourceFileNameExtension);

		            do {
		                destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension;
		                destinationFile = new File(dir + destinationFileName);

		                // 파일 변경된 이름
		                filevo.setFile_stored_name(destinationFileName);
		                filevo.setFile_explain(sourceFileName);
			            // 삭제구분 기본 N
			            filevo.setDel_yn("N");
			            // 파일 사이즈
			            filevo.setFile_size(files[i].getSize());

			            // 파일이 있을때
			            filevo.setFile_status("ACTIVE");
		            } while (destinationFile.exists());
		            destinationFile.getParentFile().mkdirs();
		            files[i].transferTo(destinationFile);
				}else{
					filevo = new FileVO();
					filevo.setFile_status("NONE");
				}
				fileList.add(filevo);
		    }
		    return fileList;
	  }

	// 파일 삭제 ( del_yn = 'Y' )
	public void fileDelete(FileVO filevo) throws Exception{
		commonMapper.fileDelete(filevo);
	}

}






