//유효성 검사를 기록할 객체 생성
const checkObj = {
    "memberEmail" : true, // 1.정규 표현식 이메일 형식 맞는지 체크 2.맞으면 ajax통신(중복검사) 3.맞으면 true
    "memberPw" : false, // 1 정규표현식 체크 
    "memberPwConfirm" :false, // 비밀번호랑 맞는지 체크
    "memberTel" : false, //정규표현식
    "memberNickname" : false, //1.정규 표현식 이메일 형식 맞는지 체크 2.맞으면 ajax통신(중복검사) 3.맞으면 true
    "sendEmail" : false // 
}

const memberEmail = document.getElementById("memberEmail");

// 타이머에 사용될 변수
let checkInterval; //인터벌 저장 변수
let min =4;
let sec =59;


// 인증번호 보내기
const sendBtn = document.getElementById("sendBtn");
const cMessage = document.getElementById("cMessage");


sendBtn.addEventListener("click", function() {

    if( checkObj.memberEmail) { // 유효한 이메일이 작성 되어있을때만 메일 보내기

        $.ajax({
            url : "sendEmail",
            data : {"inputEmail" : memberEmail.value},
            type : "GET",
            success : function(result) {
                console.log("이메일 발송 성공");
                console.log(result);
            },
            error : function() {
                console.log("이메일 발송 실패");
            }
        });
        
        // Mail발송 ajax는 동작이 느리다
        //-> ajxs 코드가 비동기이기때문에 메일이 보내지는 것을 기다리지 않고
        // 바로 다음 코드를 수행한다
        
        // 5분 타이머
        // setInterval(함수 지연시간)
		cMessage.innerText = "5:00"; // 초기값 5분
		min = 4;
		sec = 59;
		
		cMessage.classList.remove("confirm");
		cMessage.classList.remove("error");
		
		checkInterval = setInterval(function() {
            if(sec < 10) sec ="0" + sec;
            cMessage.innerText = min + ":" + sec;

            if(Number(sec) ===0) {
                min--;
                sec =59;
            } else {
                sec--;
            }

            if(min === -1) { //만료
                cMessage.classList.add("error");
                cMessage.innerText = "인증번호가 만료됨";

                clearInterval(checkInterval); // checkInterval 반복 지움
            }

        }, 1000); // 1초 지연후 수행

        alert("인증번호 발송 완료");
    }
})








