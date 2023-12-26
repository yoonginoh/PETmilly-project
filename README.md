
<h1> 동물병원 검색 프로그램  PETmily Project  입니다. </h1>

![1](https://github.com/yoonginoh/PETmilly-project/assets/138415045/95550d92-d0ba-4fd2-91f7-acfbca337daa)

메뉴는 보시다시피 1. Petmily Project의 개요 2. 동물병원 검색 3. 지역별 진료비 확인 4. 증상별 대처법 으로 나누었습니다. 

1.Petmily란? 

2.동물병원 검색
![2](https://github.com/yoonginoh/PETmilly-project/assets/138415045/168ea1f0-293f-4722-bdac-a7c6c4204ff7)

페이지에 들어가게 되면 대한민국 전체지도를 보여주고 클러스트링 기법을 사용하여 어느 지역에 동물병원이 많이 분포하였는지 보여주었습니다.
그 후 geolocation api를 이용하여 사용자에게 위치 정보에 대한 권한을 받고 사용자 위치로 맵을 이동시켰습니다. 
위치 정보에 대한 권한을 받지 못하면 그냥 페이지에서 바로 검색할 수 있도록 하였습니다. 

![3](https://github.com/yoonginoh/PETmilly-project/assets/138415045/35a37517-9e22-43a6-a7e4-af4d555ac0dd)

이렇게 해당 지역으로 이동하게 되면 맵 중앙으로부터 5km 이내에 있는 동물병원 목록중 가장 가까운 거리에 있는 병원 5개를 리스트로 보여줍니다. 

![마커](https://github.com/yoonginoh/PETmilly-project/assets/138415045/0e427b0b-23c1-4d28-bb97-a96749e33cfb)

맵에 있는 마커를 누를 경우 해당 병원의 이름과 전화번호를 보여주고 큰지도보기 / 길찾기를 누르면 링크를 걸어서 카카오 맵에서 볼 수 있도록 구현하였습니다. 

![search4](https://github.com/yoonginoh/PETmilly-project/assets/138415045/36829674-531c-4497-91dc-14d293e79a02)

또한 다른 지역의 동물병원을 검색할 수 있게 검색창을 만들었으며 검색어에 대한 자동 완성 기능도 만들었습니다

