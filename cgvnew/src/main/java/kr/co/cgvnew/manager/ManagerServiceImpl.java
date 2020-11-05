package kr.co.cgvnew.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDAO dao;
	
	@Override
	public List<ManagerDTO> timelist() {
		List<ManagerDTO> timelist = dao.timeList();
		return null;
	}

}
