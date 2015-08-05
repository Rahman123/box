global class BoxHelper {
	final static String ENTERPRISE_ID = '';// ConfigHelper.Properties().getProperty("boxEnterpriseId");
    final static String CLIENT_ID = '';//ConfigHelper.Properties().getProperty("boxClientId");
    final static String CLIENT_SECRET = '';//ConfigHelper.Properties().getProperty("boxClientSecret");
    final static String PRIVATE_KEY = '';//ConfigHelper.Properties().getProperty("boxPrivateKey");
    final static String PRIVATE_KEY_PASSWORD = '';//ConfigHelper.Properties().getProperty("boxPrivateKeyPassword");

    final static String BOX_USER_ID_KEY = 'box_id';
    final static Integer CACHE_EXPIRES_IN_DEFAULT = 45 * 60;
    final static String ENTERPRISE_TOKEN_CACHE_KEY = 'enterprise_token';
    final static String USER_TOKEN_CACHE_KEY = 'user_token';

	public BoxHelper() {
		
	}

	public static BoxAPIConnection adminClient(){
        //String enterpriseToken = enterpriseToken();
        //BoxAPIConnection adminClient = new BoxAPIConnection(enterpriseToken);
        BoxAPIConnection adminClient = new BoxAPIConnection();

        return adminClient;
    }

	public static BoxAPIConnection userClient(){
        //return userClient(boxIdFromRequest(request));
        return new BoxAPIConnection();
    }

    public static BoxAPIConnection userClient(String userId){
    	/*
        String userToken = userToken(userId);
        BoxAPIConnection userClient = new BoxAPIConnection(userToken);

        return userClient;
		*/
        return new BoxAPIConnection();
    }
}