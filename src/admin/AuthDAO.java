package admin;

public class AuthDAO {
	public static String authQuary(String usrname, String token) {
		
		  String sqlQuery = "SELECT username_ FROM admin WHERE token_ = '" + token + "'"
		  		+ "and username_ = '"+ usrname +"'" ;

         
		  return sqlQuery;
	}
}
