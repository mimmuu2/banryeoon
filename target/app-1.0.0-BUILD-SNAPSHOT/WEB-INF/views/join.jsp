<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.net.URLDecoder" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="../../resources/css/join.css">
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="icon" href="../resources/img/favicon.png" type="image/x-icon">
</head>
<body>
<header>
    <div class="header_top">
        <div class="h_t_desc">유기하지말고 반려온!</div>
        <div class="content_box">
            <div class="area_box">
                <div class="h_t_box">
                    <a href="<c:url value="/"/>">
                        <div class="h_logo_word_box">
                            <img src="/resources/img/logo.word.png" alt="반려온(사이트이름)" class="h_logo_word">
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </div>

    <div class="h_img_box">
        <a href="<c:url value="/"/>">
            <img src="/resources/img/banryeoonlogo.png" alt="" class="h_logo_img">
        </a>
    </div>
</header>


<nav>
    <div class="nav_bar">
        <div class="area_box">
            <div class="area_box nav_box">
                <ul class="nav_ul">
                    <li class="nav_li">기업소개</li>
                    <li class="nav_li">입양절차</li>
                    <li class="nav_li">고양이/강아지 입양</li>
                    <li class="nav_li">우리아기 자랑</li>
                    <li class="nav_li">제품구매</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="nav_page">
        <div class="area_box">
            <div class="area_box">
                <ul class="nav_page_ul">
                    <li class="nav_page_intro">

                        <div class="np"><a href="/company/intro">기업소개</a></div>
                        <div class="np"><a href="/company/event">반려온 이벤트</a></div>

                    </li>

                    <li class="nav_page_process">

                        <div class="np"><a href="/adoption/intro">입양소개</a></div>

                    </li>

                    <li class="nav_page_adopt">

                        <div class="np"><a href="http://localhost:8080/adoption/list?aniTypeCd=200">고양이 입양</a></div>
                        <div class="np"><a href="http://localhost:8080/adoption/list">강아지 입양</a></div>

                    </li>


                    <li class="nav_page_review">

                        <div class="np"><a href="<c:url value="/proud/list" />">입양 후기</a></div>

                    </li>

                    <li class="nav_page_merchan">
                        <div class="np"><a href="http://localhost:8080/product/animal?type=200">고양이 제품</a></div>
                        <div class="np"><a href="http://localhost:8080/product/animal?type=100">강아지 제품</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>


</nav>


<main>

    <div class="join_title">회원가입</div>
    <div class="join_in_box">
         <div class="content_box">
             <!-- 메시지 출력 -->
              <div id="msg" class="msg" >${ URLDecoder.decode(param.msg, "utf-8") }</div>

             <form action="<c:url value="/save"/>" method="post" onsubmit="return frmChk(this) && combineInputs()">
                <div class="head_desc">Create An Account</div>

                <input type="radio" class="indivi_mem" checked>개인회원
                <div class="info_desc">
                    <div class="info_1">INFORMATION</div>
                    <div class="info_2">*필수 입력 사항</div>
                </div>

            <!-- 아이디 -->
                <div class="id">
                    <input type="text" value="" placeholder="아이디* (영소문자/숫자, 4~16자)" id="uid" name="userId" autocomplete="new-id" required>
                    <div class="id_msg">아이디를 입력해주세요.</div>
                </div>
                <!-- 비밀번호 -->
                <input type="password" id="password" value="" placeholder="비밀번호* (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)" class="psw i_type1" name="userPw" autocomplete="new-password" required>

                <!-- 비밀번호 확인 -->
                 <div id="i_pwC ">
                    <input type="password" id="passwordConfirm" value="" name="passwordConfirm" placeholder="비밀번호 재확인* " class="psw i_type1 cPassword" required>
                     <span id="pwMatchStatus" class="pwChk"></span>
                 </div>

                <!-- 이름 -->
                <input type="text" value="" placeholder="이름*" class="u_name i_type1"  name="userName" required>

                <!-- 연락처 -->
                <div class="tele">
                    <select id="sel" required>
                        <option value="">선택</option>
                        <option value="010">010</option>
                        <option value="016">016</option>
                        <option value="017">017</option>
                        <option value="018">018</option>
                        <option value="019">019</option>
                    </select>
                    <input type="tel" id="phone2" value="" placeholder="전화번호*" maxlength="4" required>
                    <input type="tel" id="phone3" value="" maxlength="4" required>
                    <input type="hidden" name="userPhone" id="userPhone">
                </div>

                <!-- 이메일 -->
                <input type="text" value="" class="u_email i_type1" name="userEmail" placeholder="이메일*" required>

                <div class="agreement">
                    <label for="rd_a1">
                        <input type="radio" name="agree" id="rd_a1" checked>동의함
                    </label>
                    <label for="rd_d1">
                        <input type="radio" name="agree" id="rd_d1">동의 안함
                    </label>
                    <div class="agree_desc">평생회원으로 가입하시면 반려온(溫) 회원 탈퇴시까지는 휴면계정으로 전환되지 않으며, 고객님의 개인정보가 탈퇴시까지 안전하게 보관됩니다.</div>
                </div>

                <div class="extra">
                    EXTRA INFORMATION
                </div>

                <div class="birthday">
                    <input type="tel" id="birth1" value="" maxlength="4" placeholder="년" required> 년
                    <input type="tel" id="birth2" value="" maxlength="2" placeholder="월" required> 월
                    <input type="tel" id="birth3" value="" maxlength="2" placeholder="일" required> 일
                    <input type="hidden" name="userBirth" id="userBirth">
                </div>


                <div class="content_box">
                    <div class="document">
                       <div class="docu_1_box">
                            <input type="checkbox" name="chk_1" id="checkall">이용약관 및 개인정보 수집 및 이용, 쇼핑정보 수신 (선택)에 모두 동의합니다.
                            <div class="db_1_desc">이용약관 및 개인정보수집 및 이용에 모두 동의합니다.</div>
                       </div>

                       <div class="docu_2_box db">
                             <div class="chk_box">
                                <input type="checkbox" name="chk_2" class="chk" required> [필수] 이용약관 동의
                                <div class="chk_mark">∨</div>
                            </div>
                            <div class="docu_regulation">
                                <div class="frist">
                                제 1조 (목적)<br>
                               1. 본 약관은 반려온(溫)(이하 "사이트"라 합니다)이 제공하는 유기묘 및 유기견 입양 서비스(이하 "서비스"라 합니다)의 이용과 관련하여 사이트와 회원 간의 권리, 의무 및 책임사항을 규정하는 것을 목적으로 합니다.
                                </div>



                                <div class="second">
                                제 2조 (약관의 효력)<br>
                                1. 회원이 사이트에 회원가입을 함으로써 효력을 발생합니다.
                                2. 사이트는 본 약관을 변경할 수 있으며, 변경 사항은 사이트 내에 공지하거나 회원에게 통지함으로써 효력이 발생합니다.

                                </div>

                                <div class="thrid">
                              제 3조 (회원가입)<br>
                              1. 서비스 이용을 원하는 자는 본 약관에 동의하고, 회원가입 절차를 통해 회원으로 가입할 수 있습니다.
                              2. 회원가입 시 제공하는 정보는 사실에 근거하여 정확하게 기입해야 하며, 허위 정보를 기재할 경우 회원 자격이 취소될 수 있습니다.
                                </div>

                            </div>


                       </div>

                       <div class="docu_3_box db">
                            <div class="chk_box">
                                <input type="checkbox" name="chk_3" class="chk" required> [필수] 서비스이용 및 회원의 의무
                                <div class="chk_mark">∨</div>
                            </div>
                            <div class="docu_regulation">
                                <div class="frist">
                                제 1조 (서비스 이용)<br>
                                1. 사이트는 회원에게 유기묘 및 유기견의 입양 정보를 제공하며, 이를 위한 중개 서비스만을 제공합니다.<br>
                                2. 서비스 이용자는 입양받고자 하는 유기동물에 대해 필요한 정보를 확인하고, 해당 동물의 보호자와의 소통을 통해 입양 절차를 진행할 수 있습니다.
                                </div>



                                <div class="second">
                                제 2조 (회원의 의무)<br>
                                1. 회원은 서비스 이용 시 공공질서 및 미풍양속에 위배되는 행위를 해서는 안 됩니다.<br>
                                2. 회원은 타인의 개인정보를 침해하거나 불법적인 방법으로 서비스를 이용해서는 안 됩니다.<br>
                                3. 회원은 서비스 이용 시 제공한 개인정보에 변경 사항이 있을 경우 이를 즉시 수정해야 합니다.<br>
                                4. 본 서비스를 통해 동물을 입양하는 회원은 입양 계약서에 명시된 모든 조항을 성실히 이행할 의무가 있습니다.<br>
                                5. 입양 회원은 입양된 동물이 새로운 환경에 안정적으로 적응하고 건강하게 살아갈 수 있도록 최소 6개월 이상의 충분한 적응 기간 동안 책임감을 가지고 동물을 돌봐야 합니다.<br>
                                6. 입양 회원은 전 조 제2항에 따라 입양일로부터 6개월간 회원 탈퇴가 제한됨을 인지하고 이에 동의합니다. 이는 입양된 동물의 안전과 복지를 최우선으로 고려한 조치이며, 입양 후 회사의 사후 관리 및 필요한 경우 연락을 위함입니다.<br>
                                7. (필요시) 입양 회원은 입양 후 회사가 요청하는 경우 입양 동물에 대한 사후 관리 확인에 성실히 협조할 의무가 있습니다.
                                </div>

                                <div class="thrid">
                                제 3조 (서비스 이용 중지)<br>
                                1. 회원이 본 약관을 위반하거나 불법적인 행위를 한 경우, 사이트는 회원의 서비스 이용을 제한하거나 중지할 수 있습니다.<br>
                                2. 사이트는 서비스 제공에 필요한 경우, 사전 고지 없이 일시적인 서비스 중단을 할 수 있습니다.
                                </div>

                            </div>
                       </div>

                       <div class="docu_4_box db">
                            <div class="chk_box">
                                <input type="checkbox" name="chk_4" class="chk" required> [필수] 개인정보 보호 처리방침
                                <div class="chk_mark">∨</div>
                            </div>
                            <div class="docu_regulation">
                                <div class="frist">
                                제 1조 (개인정보 보호)<br>
                                1. 본 페이지는 유기견 및 유기묘 입양 서비스를 제공함에 있어 회원 여러분의 개인정보를 매우 중요하게 생각하며, 「개인정보 보호법」 등 관련 법규를 준수하고 있습니다. 회원가입 시 수집되는 개인정보는 다음과 같으며, 명시된 목적 이외의 용도로는 사용되지 않습니다.
                                </div>



                                <div class="second">
                                 제 2조 (수집하는 개인정보의 항목 및 수집 방법)<br>
                                 1. 회원가입 시 원활한 입양 절차 진행, 입양 관련 정보 제공, 회원제 서비스 이용 및 관리, 본인 확인 등을 위해 다음과 같은 최소한의 개인정보를 필수 항목으로 수집하고 있습니다.
                                </div>

                                <div class="thrid">
                               제 3조 (개인정보의 수집 및 이용 목적)<br>
                               회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
                               1. 회원제 서비스 제공 및 운영 (로그인, 본인 확인, 회원 관리 등)<br>
                               2. 유기동물 입양 절차 진행 및 관리 (입양 신청 접수, 심사, 상담, 입양 후 확인 등)<br>
                               3. 입양 가능한 동물 정보 제공 및 맞춤 추천<br>
                               4. 입양 관련 공지사항, 알림 등 중요 정보 전달<br>
                               5. 서비스 이용 관련 문의 및 요청사항 처리<br>
                               6. 부정 이용 방지 및 비인가 사용 방지<br>
                               7. (선택 항목 동의 시) 개인 맞춤형 서비스 제공 및 통계 분석

                                </div>

                            </div>
                       </div>

                       <div class="docu_5_box db">
                            <div class="chk_box">
                                <input type="checkbox" name="chk_5" class="chk"> [선택] 저작권 및 면책조항
                                <div class="chk_mark">∨</div>
                            </div>
                            <div class="docu_regulation">
                                <div class="frist">
                                제 1조 (면책 조항)<br>
                                1. 사이트는 유기동물의 입양과 관련된 모든 과정에서 발생하는 법적 책임을 지지 않습니다. 모든 입양 과정은 보호자와 수용자의 책임 하에 이루어집니다.<br>
                                2. 사이트는 천재지변, 제3자의 불법적인 행위 등 예측할 수 없는 사유로 인해 서비스 제공에 차질이 발생할 경우 이에 대해 책임지지 않습니다.

                                </div>

                                <div class="second">
                                제 2조 (저작권)<br>
                                1. 사이트 내 모든 콘텐츠(글, 이미지, 동영상 등)의 저작권은 사이트 또는 그에 의해 제공된 제3자에게 있으며, 이를 무단으로 복제하거나 배포할 수 없습니다.

                                </div>

                                <div class="thrid">
                                제 3조 (분쟁 해결)<br>
                                1. 본 약관과 관련하여 분쟁이 발생할 경우, 당사자 간의 합의로 해결을 원칙으로 하며, 합의가 이루어지지 않는 경우 관련 법률에 따라 해결합니다.<br>
                                2. 분쟁 해결을 위한 소송은 **강남구** 법원을 제1심 법원으로 합니다.

                                </div>

                            </div>
                       </div>

                       <div class="docu_6_box db">
                            <div class="chk_box">
                                <input type="checkbox" name="chk_6" class="chk"> [선택] SMS, 카카오톡 수신 동의
                            </div>

                       </div>

                       <div class="docu_7_box db">
                            <div class="chk_box">
                                <input type="checkbox" name="chk_7" class="chk"> [선택] 이메일 수신 동의
                            </div>


                       </div>
                    </div>
                    <input type="submit" value="회원가입" class="submit_btn">
                 </div>
             </form>

    </div>
    </div>
    </main>

  
       
<footer class="footer_box">
    <div class="area_box">
        <div class="footer_title">
            반려온은 유기견과 유기묘의 따뜻한 집을 찾는 여정을 돕는 플랫폼입니다. 새로운 가족을 만나기 위한 첫걸음을 함께해 주세요.
        </div>
        <div class="fotter_info">
            전화: 02-1234-1004<br>
            이메일: support@banryeon.com
        </div>

        <div class="footer_role">이용 약관</div>
        <div class="footer_role"><a href="#">이용약관 | 개인정보처리방침</a></div>

        <div class="footer_name">Copyright © 2025 반려온(溫). All rights reserved.</div>



    </div>
</footer>


<script src="../../resources/js/join_in.js"></script>
<script>
    function combineInputs() {
        // 연락처 합치기
        var p1 = document.getElementById('sel').value;
        var p2 = document.getElementById('phone2').value;
        var p3 = document.getElementById('phone3').value;
        document.getElementById('userPhone').value = p1 + '-' + p2 + '-' + p3;

        // 생년월일 합치기
        var y = document.getElementById('birth1').value;
        var m = document.getElementById('birth2').value;
        var d = document.getElementById('birth3').value;
        document.getElementById('userBirth').value = y + '-' + m.padStart(2, "0") + '-' + d.padStart(2, "0");

        return true; // 폼 전송
    }

    function frmChk(frm) {
        if(frm.userId.value.length < 3) {
            // document.getElementById('msg').innerHTML = "메세지";
            setMsg("id의 길이는 3자 이상입니다.", frm.userid)
            return false;
        }
        else if(frm.userPw.value.length < 3) {
            // document.getElementById('msg').innerHTML = "메세지";
            setMsg("pw의 길이는 3자 이상입니다.", frm.pw)
            return false;
        }

        return true;
    }
    // ****** 비밀번호 재확인 *****************************
        const pw = document.getElementById('password');
        const pwConfirm = document.getElementById('passwordConfirm');
        const status = document.getElementById('pwMatchStatus');

        function checkPasswordMatch() {
        if (pwConfirm.value.length === 0) {
        status.textContent = '';
        return;
    }
        if (pw.value === pwConfirm.value) {
        status.textContent = '✔';
        status.style.color = 'green';
    } else {
        status.textContent = '✖';
        status.style.color = 'red';
    }
    }

        pw.addEventListener('input', checkPasswordMatch);
        pwConfirm.addEventListener('input', checkPasswordMatch);

    // 폼 제출 시 마지막으로 검사해서 다르면 제출 막기
    function validatePasswords() {
        if (pw.value !== pwConfirm.value) {
            alert("비밀번호가 일치하지 않습니다.");
            return false; // 제출 중단
        }
        return true; // 제출 진행
    }
</script>
</body>
</html>