package kr.co.cgvnew.theater;

import java.util.List;

public interface TheaterService {

	List<TheaterDTO> list();

	List<TheaterDTO> selectMiddle(String lcode);

	List<TheaterDTO> detailMiddle(String mcode);

}
