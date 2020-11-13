package kr.co.cgvnew.ticket;

public class ReserveDTO {
	
	public String getTc_num() {
		return tc_num;
	}
	public void setTc_num(String tc_num) {
		this.tc_num = tc_num;
	}
	public String getMv_num() {
		return mv_num;
	}
	public void setMv_num(String mv_num) {
		this.mv_num = mv_num;
	}
	public String getTm_num() {
		return tm_num;
	}
	public void setTm_num(String tm_num) {
		this.tm_num = tm_num;
	}
	public String getTt_num() {
		return tt_num;
	}
	public void setTt_num(String tt_num) {
		this.tt_num = tt_num;
	}
	public String getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(String seat_num) {
		this.seat_num = seat_num;
	}
	public String getMb_no() {
		return mb_no;
	}
	public void setMb_no(String mb_no) {
		this.mb_no = mb_no;
	}
	public String getTc_date() {
		return tc_date;
	}
	public void setTc_date(String tc_date) {
		this.tc_date = tc_date;
	}
	private String tc_num;
	private String mv_num;
	private String tm_num;
	private String tt_num;
	private String seat_num;
	private String mb_no;
	private String tc_date;
}
