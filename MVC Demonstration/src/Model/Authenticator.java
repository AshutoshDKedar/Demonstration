package Model;

public class Authenticator {

	public String authenticate(String username, String password) {
		if (("A".equals(username))
				&& ("A".equals(password))) {
			return "Success";
		} else {
			return "Failure";
		}
	}
}