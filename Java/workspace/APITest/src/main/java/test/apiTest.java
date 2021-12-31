package test;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;



public class apiTest {
	public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://openapi.foodsafetykorea.go.kr/api/b2d19a6f3acd4283bd04/I2790/json/501/502"); /*URL*/      
//        urlBuilder.append("?" + URLEncoder.encode("keyId","UTF-8") + "b2d19a6f3acd4283bd04"); /*인증키*/
//        urlBuilder.append("&" + URLEncoder.encode("serviceId","UTF-8") + "=" + URLEncoder.encode("I2790", "UTF-8")); /*서비스명*/
//        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*데이터 타입*/
//        urlBuilder.append("&" + URLEncoder.encode("startIdx","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 요청시작 인덱스*/
//        urlBuilder.append("&" + URLEncoder.encode("endIdx","UTF-8") + "=" + URLEncoder.encode("105", "UTF-8"));  /* 요청종료 인덱스*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
    }
}

