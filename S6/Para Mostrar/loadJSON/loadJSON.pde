/*

 http://api.openweathermap.org/data/2.5/forecast/city?id=3871336&APPID=cc2d193783444c0570ad4bd39a9bda9e
 
 */



JSONArray values;
String url = "http://api.openweathermap.org/data/2.5/forecast/city?id=3871336&APPID=cc2d193783444c0570ad4bd39a9bda9e";

void setup() {

  values = loadJSONArray("city.json");

  for (int i = 0; i < values.size(); i++) {

    JSONObject weather = values.getJSONObject(i); 

    int id = weather.getInt("weather");
    String dt = weather.getString("dt_txt");
    String sys = weather.getString("sys");

    println(id + ", " + dt + ", " + sys);
  }
}