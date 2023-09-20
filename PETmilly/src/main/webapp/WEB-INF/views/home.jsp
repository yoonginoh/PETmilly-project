<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DOG & CAT - Not animal, it's PETmilly</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
</head>

<body>
	<%@include file="/WEB-INF/inc/top.jsp" %>
    


    <!-- Header Start -->
    <div class="container-fluid bg-dark">
        <div class="container text-center py-5">
            <h1 class="text-primary mb-4">PETmilly</h1>
            <h1 class="text-white display-3 mb-5">동물 병원 검색 사이트</h1>
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
                    <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="지역명,동물명,질환명,병원명 등">
                    <div class="input-group-append">
                        <button class="btn btn-primary px-3">검색</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 pb-4 pb-lg-0">
                    <img class="img-fluid w-100" src="img/dog,cat1.jpg" alt="">
                    <div class="bg-primary text-dark text-center p-4">
                        <h3 class="m-0">적절한 치료와 예방은<br> 필수입니다!</h3>
                    </div>
                </div>
                <div class="col-lg-7">
                    <h6 class="text-primary text-uppercase font-weight-bold">About Us</h6>
                    <h1 class="mb-4">검증된 동물병원 비교 사이트</h1>
                    <p class="mb-4">사람이 아니라고 말을 못한다고 터무니 없는 가격으로 진료를 받았던 기억이 있으신가요? 
                        실제 키우고 있는 회원들의 믿을만한 후기와 투명한 가격을 통해 비교해보세요!
                    </p>
                    <div class="d-flex align-items-center pt-2">
                        <button type="button" class="btn-play" data-toggle="modal"
                            data-src="https://www.youtube.com/embed/L3__yPYa1bA?si=JuKr50wImlyFDD58" data-target="#videoModal">
                            <span></span>
                        </button>
                        <h5 class="font-weight-bold m-0 ml-4">최신 정보 확인 하기</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Video Modal -->
        <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>        
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!--  Quote Request Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 py-5 py-lg-0">
                    <h6 class="text-primary text-uppercase font-weight-bold">진료비 조회</h6>
                    <h1 class="mb-4">두 눈으로 직접 확인해보세요!</h1>
                    <p class="mb-4"></p>
                    <div class="row">
                        <div class="col-sm-4">
                            <h1 class="text-primary mb-2" data-toggle="counter-up">5506</h1>
                            <h6 class="font-weight-bold mb-4">등록된 동물병원 수</h6>
                        </div>
                        <div class="col-sm-4">
                            <h1 class="text-primary mb-2" data-toggle="counter-up">3105</h1>
                            <h6 class="font-weight-bold mb-4">회원수</h6>
                        </div>
                        <div class="col-sm-4">
                            <h1 class="text-primary mb-2" data-toggle="counter-up">2500</h1>
                            <h6 class="font-weight-bold mb-4">등록된 후기</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="bg-primary py-5 px-4 px-sm-5">
                        <form class="py-5">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 p-4" placeholder="동물명" required="required" />
                            </div>
                            <!-- <div class="form-group">
                                <input type="email" class="form-control border-0 p-4" placeholder="지역명" required="required" />
                            </div> -->
                            <div class="form-group">
                                <select class="custom-select border-0 px-4" style="height: 47px;">
                                    <option selected>지역명</option>
                                    <option value="1">서울</option>
                                    <option value="2">경기</option>
                                    <option value="3">대전</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="custom-select border-0 px-4" style="height: 47px;">
                                    <option selected>증상 및 병명</option>
                                    <option value="1">검이경 검사</option>
                                    <option value="2">귀도말 검사</option>
                                    <option value="3">내시경 검사</option>
                                </select>
                            </div>
                            <div>
                                <button class="btn btn-dark btn-block border-0 py-3" type="submit">진료비 확인하기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote Request Start -->


    <!-- Services Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-primary text-uppercase font-weight-bold">Our Services</h6>
                <h1 class="mb-4">최고의 동물 병원 검색 서비스</h1>
            </div>
            <div class="row pb-3">
                <div class="col-lg-3 col-md-6 text-center mb-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary mb-4 p-4">
                        <i class="fa-light fa-earth-americas text-dark pr-3"></i>
                        <i class="fa fa-2x fa-plane text-dark pr-3"></i>
                        <h6 class="text-white font-weight-medium m-0">지역별 동물 병원 검색</h6>
                    </div>
                    <p>같은 지역에 있는 병원이라도 진료비와 서비스는 천차만별! <br> 위치와 가격, 검증된 후기까지 </p>
                    <a class="border-bottom text-decoration-none" href="">지금 검색해보기</a>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary mb-4 p-4">
                        <i class="fa fa-2x fa-ship text-dark pr-3"></i>
                        <h6 class="text-white font-weight-medium m-0">증상별 대처방법</h6>
                    </div>
                    <p>평소와 다른 행동을 보인다면 <br> 어떻게 대처해야하는지 알아보세요.</p>
                    <a class="border-bottom text-decoration-none" href="">지금 검색해보기</a>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary mb-4 p-4">
                        <i class="fa fa-2x fa-truck text-dark pr-3"></i>
                        <h6 class="text-white font-weight-medium m-0">특수 동물 전문 병원</h6>
                    </div>
                    <p>특수 동물들을 위한 <BR> 전문 동물 병원을 찾아보세요!</p>
                    <a class="border-bottom text-decoration-none" href="">지금 검색해보기</a>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary mb-4 p-4">
                        <i class="fa fa-2x fa-store text-dark pr-3"></i>
                        <h6 class="text-white font-weight-medium m-0">애견 서비스 업체</h6>
                    </div>
                    <p>동물 병원 뿐만 아니라 근처에 있는 호텔, 훈련장, 카페까지 <br > 모두 여기서 알아 볼 수 있습니다.</p>
                    <a class="border-bottom text-decoration-none" href="">지금 검색해보기</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->


    <!-- Features Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <img class="img-fluid w-100" src="img/dog,cat2.jpg" alt="">
                </div>
                <div class="col-lg-7 py-5 py-lg-0">
                    <h6 class="text-primary text-uppercase font-weight-bold">동물병원 왜 알아봐야 할까요?</h6>
                    <h1 class="mb-4">반려동물은 가족이기 때문입니다.</h1>
                    <p class="mb-4">법적으로 정해진 바가 없고, 보험이 적용 되지 않기 때문에 많은 사람들이 불합리한 가격을 내고 안좋은 서비스를 받는데에 그치고 있습니다. 이러한 문제를 구조적으로 개선하기 위해선 관심이 필요합니다.</p>
                    <ul class="list-inline">
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>합리적인 가격</h6>
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>믿을 수 있는 후기</h6></li>
                        <li><h6><i class="far fa-dot-circle text-primary mr-3"></i>특수한 상황의 대처방안까지</h6></li>
                    </ul>
                    <a href="" class="btn btn-primary mt-3 py-2 px-4">지금 당장 알아보세요</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Features End -->


    <!-- Pricing Plan Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-primary text-uppercase font-weight-bold">동물 병원이나 관련 서비스 업체라면</h6>
                <h1 class="mb-4">합리적인 구독 서비스</h1>
            </div>
            <div class="row">
                <div class="col-md-4 mb-5">
                    <div class="bg-secondary">
                        <div class="text-center p-4">
                            <h1 class="display-4 mb-0">
                                <small class="align-top text-muted font-weight-medium" style="font-size: 22px; line-height: 45px;"></small>5000원<small class="align-bottom text-muted font-weight-medium" style="font-size: 16px; line-height: 40px;">/달</small>
                            </h1>
                        </div>
                        <div class="bg-primary text-center p-4">
                            <h3 class="m-0">기본</h3>
                        </div>
                        <div class="d-flex flex-column align-items-center py-4">
                            <p>1년에 1번 건강 검진</p>
                            <p>전문가와 함께 하는 전문 상담</p>
                            <p>2달에 한번 프리미엄 사료</p>
                            <p></p>
                            <a href="" class="btn btn-primary py-2 px-4 my-2">구독하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="bg-secondary">
                        <div class="text-center p-4">
                            <h1 class="display-4 mb-0">
                                <small class="align-top text-muted font-weight-medium" style="font-size: 22px; line-height: 45px;"></small>10000원<small class="align-bottom text-muted font-weight-medium" style="font-size: 16px; line-height: 40px;">/달</small>
                            </h1>
                        </div>
                        <div class="bg-primary text-center p-4">
                            <h3 class="m-0">프리미엄</h3>
                        </div>
                        <div class="d-flex flex-column align-items-center py-4">
                            <p>전문가와 함께하는 전문 상담</p>
                            <p>매 6개월마다 정기 건강 검진</p>
                            <p>2달에 한번 프리미엄 사료</p>
                            <p>정기적인 예방 접종 알람 및 할인 쿠폰</p>
                            <a href="" class="btn btn-primary py-2 px-4 my-2">구독하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="bg-secondary">
                        <div class="text-center p-4">
                            <h1 class="display-4 mb-0">
                                <small class="align-top text-muted font-weight-medium" style="font-size: 22px; line-height: 45px;"></small>20000원<small class="align-bottom text-muted font-weight-medium" style="font-size: 16px; line-height: 40px;">/Mo</small>
                            </h1>
                        </div>
                        <div class="bg-primary text-center p-4">
                            <h3 class="m-0">Business</h3>
                        </div>
                        <div class="d-flex flex-column align-items-center py-4">
                            <p>홈페이지 상단 광고 노출</p>
                            <p>각종 제휴 혜택</p>
                            <p>검증된 펫오너</p>
                            <p>효율적이고 인상적인 광고</p>
                            <a href="" class="btn btn-primary py-2 px-4 my-2">구독하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pricing Plan End -->


    <!-- Team Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-primary text-uppercase font-weight-bold">veterinarian
                    Team</h6>
                <h1 class="mb-4">검증된 전문가 그룹을 만나보세요!</h1>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="team card position-relative overflow-hidden border-0 mb-5">
                        <img class="card-img-top" src="img/team-1.jpg" alt="">
                        <div class="card-body text-center p-0">
                            <div class="team-text d-flex flex-column justify-content-center bg-secondary">
                                <h5 class="font-weight-bold">마동석</h5>
                                <span>고객전문상담사</span>
                            </div>
                            <div class="team-social d-flex align-items-center justify-content-center bg-primary">
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-outline-dark btn-social" href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team card position-relative overflow-hidden border-0 mb-5">
                        <img class="card-img-top" src="img/team-2.jpg" alt="">
                        <div class="card-body text-center p-0">
                            <div class="team-text d-flex flex-column justify-content-center bg-secondary">
                                <h5 class="font-weight-bold">강형욱</h5>
                                <span>동물 훈련사</span>
                            </div>
                            <div class="team-social d-flex align-items-center justify-content-center bg-primary">
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-outline-dark btn-social" href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team card position-relative overflow-hidden border-0 mb-5">
                        <img class="card-img-top" src="img/team-3.jpg" alt="">
                        <div class="card-body text-center p-0">
                            <div class="team-text d-flex flex-column justify-content-center bg-secondary">
                                <h5 class="font-weight-bold">최영민</h5>
                                <span>특수동물전문 수의사</span>
                            </div>
                            <div class="team-social d-flex align-items-center justify-content-center bg-primary">
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-outline-dark btn-social" href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="team card position-relative overflow-hidden border-0 mb-5">
                        <img class="card-img-top" src="img/team-4.jpg" alt="">
                        <div class="card-body text-center p-0">
                            <div class="team-text d-flex flex-column justify-content-center bg-secondary">
                                <h5 class="font-weight-bold">노윤기</h5>
                                <span>HTML,CSS,JS 싫어요</span>
                            </div>
                            <div class="team-social d-flex align-items-center justify-content-center bg-primary">
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-dark btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-outline-dark btn-social" href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-primary text-uppercase font-weight-bold">Testimonial</h6>
                <h1 class="mb-4">검증된 후기들</h1>
            </div>
            <div class="owl-carousel testimonial-carousel">
                <div class="position-relative bg-secondary p-4">
                    <i class="fa fa-3x fa-quote-right text-primary position-absolute" style="top: -6px; right: 0;"></i>
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid rounded-circle" src="img/testimonial-1.jpg" style="width: 60px; height: 60px;" alt="">
                        <div class="ml-3">
                            <h6 class="font-weight-semi-bold m-0">лади́мир Влади́мирович Пу́тин</h6>
                            <small>- 러시아 대통령</small>
                        </div>
                    </div>
                    <p class="m-0">쪼코 진료 봐주시면서 쌤이 정말 멍머들 많이 사랑하시는구나~ 하는게 느껴졌어요! 

 

                        쪼코 아프면 안돼지만, 앞으로 아프면 꼭 쌤에게 맡겨야겠어요. 앞으로도 잘 부탁드립니다!!!</p>
                </div>
                <div class="position-relative bg-secondary p-4">
                    <i class="fa fa-3x fa-quote-right text-primary position-absolute" style="top: -6px; right: 0;"></i>
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid rounded-circle" src="img/testimonial-2.jpg" style="width: 60px; height: 60px;" alt="">
                        <div class="ml-3">
                            <h6 class="font-weight-semi-bold m-0"> Xí Jìnpíng</h6>
                            <small>- 중화인민공화국의 최고지도자</small>
                        </div>
                    </div>
                    <p class="m-0">깔끔한 내부환경도 좋았고 스트레스 받을 고양이를 위한 대기실이 따로 있는 것도 좋았어요. 

                        원장쌤은 엄청 차분한 분이신데 설명도 차트보면서 자세히 해주셨어요. 비용도 과잉없이 적당한 것 같고 괜찮았어요. 
                        
                        좋은 동물병원 찾기 어려운데 말캉 덕분에 좋은데 찾은 것 같아요. 물론 더 다녀봐야 알겠지만요 ㅎㅎㅎ </p>
                </div>
                <div class="position-relative bg-secondary p-4">
                    <i class="fa fa-3x fa-quote-right text-primary position-absolute" style="top: -6px; right: 0;"></i>
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid rounded-circle" src="img/testimonial-3.jpg" style="width: 60px; height: 60px;" alt="">
                        <div class="ml-3">
                            <h6 class="font-weight-semi-bold m-0">윤석열</h6>
                            <small>- 대한민국 대통령</small>
                        </div>
                    </div>
                    <p class="m-0">
                        접수부터 상담까지 친절하시고 전문적이셔서 좋았어요~
                        주차도 편리했고 처음부터 끝까지 만족하고 왔습니다^^</p>
                </div>
                <div class="position-relative bg-secondary p-4">
                    <i class="fa fa-3x fa-quote-right text-primary position-absolute" style="top: -6px; right: 0;"></i>
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid rounded-circle" src="img/testimonial-4.jpg" style="width: 60px; height: 60px;" alt="">
                        <div class="ml-3">
                            <h6 class="font-weight-semi-bold m-0">岸田文雄</h6>
                            <small>- 일본 내각총리대신</small>
                        </div>
                    </div>
                    <p class="m-0">첫방문인데 테크니션 그리고 수의사님 너무 친절하시고 아이가 어떤 상태인지 상세하게 잘 설명해주세요! 시설도 너무 청결하고 과잉진료가 없어 너무 좋았던거같아요. 아직 우리동네 동물병원 정착을 못 했는데 오엠동물의료센터 우리집 근처에 있었다면 매일 꾸준히 다녔을텐데 많이 아쉬워요ㅠㅠ 일산갈때 병원갈일있으면 또 방문하겠습니다!</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


    <!-- Blog Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <h6 class="text-primary text-uppercase font-weight-bold">Our Blog</h6>
                <h1 class="mb-4">펫밀리와 함께하는 이야기</h1>
            </div>
            <div class="row">
                <div class="col-md-6 mb-5">
                    <div class="position-relative">
                        <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
                        <div class="position-absolute bg-primary d-flex flex-column align-items-center justify-content-center rounded-circle"
                            style="width: 60px; height: 60px; bottom: -30px; right: 30px;">
                            <h4 class="font-weight-bold mb-n1">28</h4>
                            <small class="text-white text-uppercase">Aug</small>
                        </div>
                    </div>
                    <div class="bg-secondary" style="padding: 30px;">
                        <div class="d-flex mb-3">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle" style="width: 40px; height: 40px;" src="img/user.jpg" alt="">
                                <a class="text-muted ml-2" href="">PETmilly</a>
                            </div>
                            <div class="d-flex align-items-center ml-4">
                                <i class="far fa-bookmark text-primary"></i>
                                <a class="text-muted ml-2" href="">상식</a>
                            </div>
                        </div>
                        <h4 class="font-weight-bold mb-3">강아지 양치질에 대해서!</h4>
                        <p>강아지 또한 사람과 마찬가지로 매일 닦아주면 좋은데요. 실제로 그렇게 행하기 어려운데 과연 어느정도로 하는게 좋을까요?</p>
                        <a class="border-bottom border-primary text-uppercase text-decoration-none" href="">자세히보기 <i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 mb-5">
                    <div class="position-relative">
                        <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                        <div class="position-absolute bg-primary d-flex flex-column align-items-center justify-content-center rounded-circle"
                            style="width: 60px; height: 60px; bottom: -30px; right: 30px;">
                            <h4 class="font-weight-bold mb-n1">14</h4>
                            <small class="text-white text-uppercase">Aug</small>
                        </div>
                    </div>
                    <div class="bg-secondary" style="padding: 30px;">
                        <div class="d-flex mb-3">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle" style="width: 40px; height: 40px;" src="img/user.jpg" alt="">
                                <a class="text-muted ml-2" href="">PETmilly</a>
                            </div>
                            <div class="d-flex align-items-center ml-4">
                                <i class="far fa-bookmark text-primary"></i>
                                <a class="text-muted ml-2" href="">예방접종</a>
                            </div>
                        </div>
                        <h4 class="font-weight-bold mb-3">반려견 심장사상충 증상부터 예방, 주의사항까지!</h4>
                        <p>심장사상충이란 강아지 기생충으로, 주로 강아지의 우심실,폐동맥 등에 기생하는 선충인데요. 적절한 시기에 치료를 해주지 않으면 죽음까지 이르게 하는 질병입니다.</p>
                        <a class="border-bottom border-primary text-uppercase text-decoration-none" href="">자세히보기 <i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-white mt-5 py-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-7 col-md-6">
                <div class="row">
                    <div class="col-md-6 mb-5">
                        <h3 class="text-primary mb-4">연락처</h3>
                        <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, New York, USA</p>
                        <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                        <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                        <div class="d-flex justify-content-start mt-4">
                            <a class="btn btn-outline-light btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-outline-light btn-social" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 mb-5">
                        <h3 class="text-primary mb-4">고객센터</h3>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Services</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Pricing Plan</a>
                            <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-6 mb-5">
                <h3 class="text-primary mb-4">제휴문의</h3>
                <p>Rebum labore lorem dolores kasd est, et ipsum amet et at kasd, ipsum sea tempor magna tempor. Accu kasd sed ea duo ipsum. Dolor duo eirmod sea justo no lorem est diam</p>
                <div class="w-100">
                    <div class="input-group">
                        <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="Your Email Address">
                        <div class="input-group-append">
                            <button class="btn btn-primary px-4">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-white border-top py-4 px-sm-3 px-md-5" style="border-color: #3E3E4E !important;">
        <div class="row">
            <div class="col-lg-6 text-center text-md-left mb-3 mb-md-0">
                <p class="m-0 text-white">&copy; <a href="#">PETmilly</a>. All Rights Reserved. 
				
				<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
				Designed by <a href="https://htmlcodex.com">HTML Codex</a>
                </p>
            </div>
            <div class="col-lg-6 text-center text-md-right">
                <ul class="nav d-inline-flex">
                    <li class="nav-item">
                        <a class="nav-link text-white py-0" href="#">Privacy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white py-0" href="#">Terms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white py-0" href="#">FAQs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white py-0" href="#">Help</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="https://use.fontawesome.com/release/v5.2.0/js/all.js"></script> 
    <!-- 아이콘 추가  -->

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>