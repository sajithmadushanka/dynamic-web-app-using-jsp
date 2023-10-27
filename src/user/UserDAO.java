package user;

public class UserDAO {
			public static String insertQuuery(UserModel user) {
				String sqlQuery = "INSERT INTO user " +
						"(firstName_, lastName_, email_, password_) " +
						"VALUES ('" +
						user.getFirstName() + "', '" +
						user.getLastName() + "', '" +
						user.getEmail() + "', '" +
						user.getPassword() + "')";

				return sqlQuery;
						
			}
			
			public static String loginQuary(String email, String password) {
				
				  String sqlQuery = "SELECT * FROM user WHERE email_ = '"+ email +"'" ;

		         
				  return sqlQuery;
			}
}
