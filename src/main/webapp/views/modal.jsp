<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url var="apiURL" value="/api/user/login"/>
<c:if test="${not empty param.message}">
    <div class="position-fixed start-50 translate-middle-x alert alert-${param.alert} alert-dismissible fade show"
         role="alert" style="top: 15%">
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </symbol>
        </svg>
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
            <use xlink:href="#exclamation-triangle-fill"/>
        </svg>
        <strong>${param.message}</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


</c:if>
<div class="modal fade pt_auth_box in" id="loginbox" tabindex="-1" role="dialog" aria-labelledby="loginbox" ${param.message != null ? 'style="display: block;"' : ''}>

    <div class="modal-dialog" role="document">
        <div class="login_page">
            <div class="login-page">
                <div class="login-form">
                    <h4>Log In</h4>
                    <form id="formSubmit1" action="/login" method="post">
                        <div class="errors form-group"></div>
                        <div class="pp_mat_input">
                            <input type="text" name="username" id placeholder="Username" required autofocus="" value="${cookie.username.value}">
                            <label for="username">Username</label>
                        </div>
                        <div class="pp_mat_input">
                            <input type="password" name="password" id placeholder="Password" value="${cookie.password.value}" required>
                            <label for="password">Password</label>
                        </div>
                        <div class="forgot_password">
                            <a href="#">Forgot your password?</a>
                        </div>
                        <div class="login_signup_combo">
                            <input id="btnSubmit1" type="submit" class="btn btn-main button" value="Log In">
                        </div>
                        <div class="pt_vdo_cstm_radio">
                            <input type="checkbox" name="remember" id="remember" <c:if test="${not empty cookie.remember}">checked</c:if> >
                            <label for="remember">Remember this device</label>
                        </div>
                        <div class="clear"></div>
                        <hr>
                        <div class="signup__">
                            New here? <a class="dec" href="#">Register</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            $(function() {
                $('.button').on('click', function () {
                    if ($('#username').val() && $('#password').val()) {
                        $(this).val("Please wait..");
                    }
                });
            });
        </script>
    </div>
</div>


<div class="modal fade pt_auth_box" id="registerbox" tabindex="-1" role="dialog" aria-labelledby="registerbox">
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
    //Button Submit form
    $('#btnSubmit').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        login(data);
    })

    //Call API Post submit
    function login(data) {
        $.ajax({
            url: '${apiURL}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                if (result == "failed") {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Username or Password incorrect!',
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                    })
                } else if (result == "need verify") {
                    Swal.fire({
                        title: "One more step!",
                        text: "Please verify your email to activate this account!",
                        icon: "warning",
                        backdrop: `
                        rgba(3, 86, 252,0.2)
                        url("../templates/img/peachcat-wait.gif")
                        center top
                        no-repeat
                        `,
                    });
                } else if (result == "block") {
                    Swal.fire({
                        title: "Unfortunately!",
                        text: "Your account has been blocked!",
                        icon: "error",
                        backdrop: `
                        rgba(3, 86, 252,0.2)
                        url("../templates/img/peachcat-cry.gif")
                        center top
                        no-repeat
                        `,
                    });
                } else {
                    Swal.fire({
                        title: `Hi ` + result.fullname + `!`,
                        text: "Let's checkout some movie 😉",
                        icon: "success",
                        timer: 3000,
                        timerProgressBar: true,
                        backdrop: `
	                    rgba(3, 86, 252,0.2)
	                    url("../templates/img/peachcat-go.gif")
	                    center top
	                    no-repeat
	                    `,
                    }).then(() => {
                        $('#formSubmit').submit();
                    });
                }
            },
            error: function (error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                    showConfirmButton: false,
                    timer: 2000,
                    timerProgressBar: true,
                })
            }
        })
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
            url: '/api/user/reset',
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