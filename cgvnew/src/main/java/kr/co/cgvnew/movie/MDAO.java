package kr.co.cgvnew.movie;

import java.util.List;

public interface MDAO {

	public MDTO detail(String mv_nm);

	public List<MDTO> list();




	public List<MDTO> listSearch(String mv_nm);







}
