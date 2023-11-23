class ApiConstance {
  static String baseUrl = 'https://newsapi.org/v2/';
  static String apiKey = "7f169cdbd868463c83dfc4e22ea2aa93";
  static String getNewsEndpoint = 'everything?domains=techcrunch.com,thenextweb.com';
  static String getNewsUrl = "$baseUrl$getNewsEndpoint&apiKey=$apiKey";
}
