package member;

public class MemberCheck {
	public static boolean emptyCheck(String id, String pw, String name) {
		if(id == "" || pw == "" || name == "") {
			return true;
		}
		return false;
	}
	public static boolean emptyCheck(String id, String pw) {
		if(id == "" || pw == "" ) {
			return true;
		}
		return false;
	}
	
	public static boolean pwEquals(String pw, String confirmPw) {
		return !pw.equals(confirmPw);
	}
	
	public static boolean idCheck(String id) {
		String reg = "^[a-z0-9_]{5,15}$";
		return ! id.matches(reg);
	}
}
