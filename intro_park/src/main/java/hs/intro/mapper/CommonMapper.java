package hs.intro.mapper;

import hs.intro.common.FileVO;

public interface CommonMapper {

	public int fileInsert(FileVO filevo) throws Exception;
	public int fileUpdate(FileVO filevo) throws Exception;
	public int fileDelete(FileVO filevo) throws Exception;


	public int updateSeq(String seq_code) throws Exception;
	public int selectSeq(String seq_code) throws Exception;


}

