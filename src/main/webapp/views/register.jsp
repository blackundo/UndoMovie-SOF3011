<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 13/04/2023
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglib.jsp" %>

<c:url var="apiURL" value="/api/user"/>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.tagit.css" />
  <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
  <!-- SweetAlert2 -->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body class="modal-open" style="padding-right: 10px;"}>

<!-- end header -->




<div class="modal fade pt_auth_box" id="registerbox" tabindex="-1" role="dialog" aria-labelledby="registerbox" style="display: block">
  <div class="modal-dialog" role="document">
    <div class="login_page">
      <div class="login-page">
        <div class="login-form registeration_modal" id="register_form_p">
          <h4>Sign Up!</h4>
          <form id="formSubmit" method="POST">
            <div class="errors form-group errors_alert"></div>
            <div class="errors success form-group"></div>
            <div class="pp_mat_input">
              <input type="text" name="username" id="username" placeholder="Username" required="" autofocus="">
              <label for="username">Username</label>
            </div>
            <div class="pp_mat_input">
              <input type="password" name="password" id="password" placeholder="Password" required="">
              <label for="password">Password</label>
            </div>
            <div class="pp_mat_input">
              <input type="password"  id="repeatPassword" placeholder="Confirm Password" required="">
              <label for="repeatPassword">Confirm Password</label>
            </div>
            <div class="pp_mat_input">
              <input type="text" name="fullname" id="fullname" placeholder="Fullname" required="" autofocus="">
              <label for="fullname">Fullname</label>
            </div>

            <div class="pp_mat_input">
              <input type="email" name="email" id="email" placeholder="E-mail address" required="">
              <label for="email">E-mail address</label>
            </div>

            <div class="recaptcha">
            </div>
            <div class="login_signup_combo">
              <input id="btnSubmit" type="submit" class="btn btn-main button" value="Register">
            </div>
            <hr>
            <div class="signup__">
              Already have an account? <a class="dec" href="https://demo.playtubescript.com/login">Log In</a>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script>
      $(function() {
        $("#accept_terms").change(function() {
          if(this.checked) {
            $('#checked').val('on');
          } else {
            $('#checked').val('off');
          }
        });
        $('.button').on('click', function () {
          if ($('#username').val() && $('#password').val() && $('#email').val() && $('#gender').val() && $('#c_password').val()) {
            $(this).val("Please wait..");
          }
        });
      });
    </script>
  </div>
</div>



<script>
  $('#btnSubmit').click(function (e) {
    e.preventDefault();
    if ($('#password').val() != $('#repeatPassword').val()) {
      $('#repeatPassword').addClass('is-invalid');
      Swal.fire({
        icon: "error",
        title: "Oops...",
        text: "Confirm password is not valid!",
      });
    } else {
      var data = {};
      var formData = $('#formSubmit').serializeArray();
      $.each(formData, function (i, v) {
        data["" + v.name + ""] = v.value;
      });
      add(data);
    }
  })

  //Call API Post User
  function add(data) {
    $.ajax({
      url: '${apiURL}',
      type: 'POST',
      contentType: 'application/json',
      data: JSON.stringify(data),
      dataType: 'json',
      success: function (result) {
        if (result == "username exist") {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Username already exits!',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
          })
        } else if (result == "email exist") {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Email already exits!',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
          })
        } else {
          sendEmail(result.verify);
          Swal.fire({
            title: "Welcome to WaMo!",
            text: "A verification email has been sent. Please verify your email to complete the registration process. Pay attention to check your spam folder if you don't see our email in the main mailbox.",
            icon: "success",
            backdrop: `
	                    rgba(0,0,123,0.4)
	                    url("https://i.gifer.com/origin/fd/fdf70f5f4989f9c08f033da50c38170e.gif")
	                    left top
	                    no-repeat
	                  	`,
          }).then(() => window.location.href = "login"
          )
        }
      },
      error: function (error) {
        Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'Something wrong!',
          showConfirmButton: false,
          timer: 2000,
          timerProgressBar: true,
        })
      }
    })
  }

  //Send email verify account
  function sendEmail(link_verify) {
    var data = {
      service_id: 'service_yeerrcb',
      template_id: 'template_4xht0cp',
      user_id: 'user_FT7XMLT9CwnjPstip5Dke',
      template_params: {
        'user_email': $('#email').val(),
        'to_name': $('#fullname').val(),
        'subject': "Verification Account from WaMo",
        'message': 'We are honored that you choose our service. Please click on the link below to activate your account.',
        'link_verify': 'http://localhost:8080/user?verify=' + link_verify,
      }
    };

    $.ajax('https://api.emailjs.com/api/v1.0/email/send', {
      type: 'POST',
      data: JSON.stringify(data),
      contentType: 'application/json'
    }).done(function () {
      console.log('Your mail is sent!');
    }).fail(function (error) {
      console.log('Oops... ' + JSON.stringify(error));
    });
  }

  //Button Forgot Password
  $('#forgot').click(async function (e) {
    e.preventDefault();
    const {value: email} = await Swal.fire({
      title: 'Retrieve Account',
      input: 'email',
      inputLabel: 'Enter your email address',
      inputPlaceholder: 'Enter your email address'
    })

    if (email) {
      var data = {};
      data["email"] = email;
      reset(data);
    }
  })

  //Call API reset Pass
  function reset(object) {
    $.ajax({
      url: '${apiURL}/reset',
      type: 'PUT',
      contentType: 'application/json',
      data: JSON.stringify(object),
      dataType: 'json',
      success: function (result) {
        if (result != "failed") {
          sendResetPass(result);
        } else {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Something wrong!',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
          })
        }
      },
      error: function (error) {
        Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'Something wrong!',
          showConfirmButton: false,
          timer: 2000,
          timerProgressBar: true,
        })
      }
    })
  }

  //Send email reset pass
  function sendResetPass(object) {
    var data = {
      user_id: 'user_FT7XMLT9CwnjPstip5Dke',
      service_id: 'service_yeerrcb',
      template_id: 'template_lt6hxfi',
      template_params: {
        'user_email': object.email,
        'to_name': object.fullname,
        'subject': "Reset Password Account from WaMo",
        'message': "We are honored that you choose our service. Please click on the link below to reset your password. Note that this link will expires in 15 minutes.",
        'link_verify': 'http://localhost:8080/user/reset?verify=' + object.verify,
      }
    };

    $.ajax('https://api.emailjs.com/api/v1.0/email/send', {
      type: 'POST',
      data: JSON.stringify(data),
      contentType: 'application/json'
    }).done(function () {
      console.log('Your mail is sent!');
      Swal.fire({
        title: "A verification email has been sent!",
        text: "Check the email to reset password account. Pay attention to check your spam folder if you don't see our email in the main mailbox.",
        icon: "success",
        backdrop: `
                rgba(0,0,123,0.4)
                url("../templates/img/catzebra-ok.gif")
                center top
                no-repeat
                `,
      }).then(() => window.location.href = "login");
    }).fail(function (error) {
      console.log('Oops... ' + JSON.stringify(error));
    });
  }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
