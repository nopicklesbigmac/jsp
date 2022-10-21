package session;

import java.util.ArrayList;

public class MemberDAO {
	
	private static ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
	
	public  MemberDAO() {
		
	}
	public void insert (MemberDTO member) {
		members.add(member);
	}
	public ArrayList<MemberDTO> selectAll () {
		return members;
	}
	public MemberDTO selectId (String id) {
		for(MemberDTO member :members) {
			if(member.getId().equals(id)) {
				return member;
			}
		}
		return null;
	}
}
