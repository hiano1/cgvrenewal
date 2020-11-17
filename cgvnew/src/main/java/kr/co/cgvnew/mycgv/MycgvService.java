package kr.co.cgvnew.mycgv;

import java.util.List;

public interface MycgvService {

	public List<MycgvDTO> myInfo(String myInfo);

	public MycgvDTO memberInfo(String memberInfo);

	public int infoUpdate(MycgvDTO inDto);

	public List<MycgvDTO> myInfo2(String myInfo);

	public int mbrDelete(MycgvDTO inDto);

	public List<MycgvDTO> myInfo3(String myInfo); 

}
