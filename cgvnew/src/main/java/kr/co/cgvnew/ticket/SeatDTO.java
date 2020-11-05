package kr.co.cgvnew.ticket;

public class SeatDTO {
	public String getTs_num() {
		return ts_num;
	}
	public void setTs_num(String ts_num) {
		this.ts_num = ts_num;
	}
	public String getTs_nm() {
		return ts_nm;
	}
	public void setTs_nm(String ts_nm) {
		this.ts_nm = ts_nm;
	}
	public String getTs_tcount() {
		return ts_tcount;
	}
	public void setTs_tcount(String ts_tcount) {
		this.ts_tcount = ts_tcount;
	}
	public String getTm_num() {
		return tm_num;
	}
	public void setTm_num(String tm_num) {
		this.tm_num = tm_num;
	}
	private String ts_num;
	private String ts_nm;
	private String ts_tcount;
	private String tm_num;
}
