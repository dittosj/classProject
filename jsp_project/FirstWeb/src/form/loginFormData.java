package form;

public class loginFormData {
	String userId;
	String userPw;
	
	public loginFormData() {
	}

	public loginFormData(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	@Override
	public String toString() {
		return "loginFormData [userId=" + userId + ", userPw=" + userPw + "]";
	}
	
}
