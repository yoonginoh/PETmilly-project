package com.petmilly.my.searchAH.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.petmilly.my.searchAH.dao.SearchAHDAO;
import com.petmilly.my.searchAH.vo.SearchAHVO;

@Service
public class SearchAHService {

    @Autowired
    SearchAHDAO dao;
    
    String apiKey = "cc6b254190d54087de65c50b9314c3c0"; 
    

    public List<SearchAHVO> getSearchList() {
        List<SearchAHVO> result = dao.getSearchList();
        
        for (SearchAHVO sAHVO : result) {
            if (sAHVO.getLatitude() != null && sAHVO.getLongitude() != null) {
                String latitude = sAHVO.getLatitude().toString();
                String longitude = sAHVO.getLongitude().toString();
 
                String[] parts = convertCoordinate(latitude, longitude).split("\"x\":|,\"y\":|},\\{");
                
                if (parts.length >= 3) {
                    String x = parts[1].trim();
                    String y = parts[2].trim();
                    
                    
                    sAHVO.setLongitude(Double.parseDouble(x));
                    sAHVO.setLatitude(Double.parseDouble(y));
                }
                
            }
            System.out.println(sAHVO);
        } 
        return result;
    }

    public String convertCoordinate(String latitude, String longitude) {
        try {
            // API 요청 URL 생성
            String url = "https://dapi.kakao.com/v2/local/geo/coord2regioncode.json?x=" + latitude + "&y=" + longitude + "&input_coord=TM";

            // HTTP GET 요청 보내기
            HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

            // 응답 데이터 읽기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder responseBuilder = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                responseBuilder.append(line);
            }
            br.close();

            String jsonResponse = responseBuilder.toString();
            
            
           
           
            return jsonResponse;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
