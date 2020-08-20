<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인</title>
    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="./login.css" />
  </head>
  <body lang="ko">
    <div id="login">
      <h3 class="text-center text-white pt-5"></h3>
      <div class="container">
        <div
          id="login-row"
          class="row justify-content-center align-items-center"
        >
          <div id="login-column" class="col-md-6">
            <div id="login-box" class="col-md-12">
              <form id="login-form" class="form" action="./loginAf.jsp" method="post">
                <h3 class="text-center text-info">Login</h3>
                <div class="form-group">
                  <label for="username" class="text-info">Username:</label
                  ><br />
                  <input
                    type="text"
                    name="userid"
                    id="userid"
                    class="form-control"
                    onkeydown="fn_press_han(this);"
                  />
                </div>
                <div class="form-group">
                  <label for="password" class="text-info">Password:</label
                  ><br />
                  <input
                    type="password"
                    name="password"
                    id="password"
                    class="form-control"
                  />
                </div>
                
                <div class="form-group">
                <span id="alert"></span>
                   <br />
                  <input
                    type="button"
                    id="loginBtn"
                    class="btn btn-info btn-md"
                    value="로그인"
                    onclick="loginFormCheck()"
                  />
                </div>
                <div id="register-link" class="text-right">
                  <a href="../regeister/regeister.jsp" class="text-info">
                  	회원가입
               	</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 
    	한글 막음 예시  
    <input type="text" onkeydown="fn_press_han(this);">
    	영어 숫자시 영어만 입력불가
    <input type="text" onkeypress="onlyNumber();">
    -->
    <script src="../util.js"></script>
	<script type="text/javascript">
	//로그인폼 체크
	function loginFormCheck(){
		let id = document.getElementById("userid");
		let pw = document.getElementById("password");
		
		if(id.value.trim()==""||pw.value.trim()==""){
			document.getElementById("alert").innerText="ID,PW를 입력해주십시오";
			id.focus();
		}else{
			document.getElementById("login-form").submit();
		}
	}
	</script>
  </body>
</html>
