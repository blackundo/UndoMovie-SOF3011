<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal fade pt_auth_box in" id="loginbox" tabindex="-1" role="dialog" aria-labelledby="loginbox">
    <div class="modal-dialog" role="document">
        <div class="login_page">
            <div class="login-page">
                <div class="login-form">
                    <h4>Log In</h4>
                    <form action="https://demo.playtubescript.com/login" method="POST">
                        <div class="errors form-group"></div>
                        <div class="pp_mat_input">
                            <input type="text" name="username" id="username" placeholder="Username" required="" autofocus="">
                            <label for="username">Username</label>
                        </div>
                        <div class="pp_mat_input">
                            <input type="password" name="password" id="password" placeholder="Password" required="">
                            <label for="password">Password</label>
                        </div>
                        <div class="forgot_password">
                            <a href="#">Forgot your password?</a>
                        </div>
                        <div class="login_signup_combo">
                            <input type="submit" class="btn btn-main button" value="Log In">
                        </div>
                        <div class="pt_vdo_cstm_radio">
                            <input type="checkbox" name="remember_device" id="remember_device" checked="">
                            <label for="remember_device">Remember this device</label>
                        </div>
                        <div class="login-icons">
                            Login with
                            <div>
                                <a href="javascript:void(0)" onclick="SLogin('Facebook')"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="background-color: #2d4373;"><path fill="currentColor" d="M17,2V2H17V6H15C14.31,6 14,6.81 14,7.5V10H14L17,10V14H14V22H10V14H7V10H10V6A4,4 0 0,1 14,2H17Z"></path></svg></a>
                            </div>
                            <div>
                                <a href="javascript:void(0)" onclick="SLogin('LinkedIn')" title=""><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="background-color: #007bb6;"><path fill="currentColor" d="M21,21H17V14.25C17,13.19 15.81,12.31 14.75,12.31C13.69,12.31 13,13.19 13,14.25V21H9V9H13V11C13.66,9.93 15.36,9.24 16.5,9.24C19,9.24 21,11.28 21,13.75V21M7,21H3V9H7V21M5,3A2,2 0 0,1 7,5A2,2 0 0,1 5,7A2,2 0 0,1 3,5A2,2 0 0,1 5,3Z"></path></svg></a>
                            </div>
                            <div>
                                <a href="javascript:void(0)" onclick="SLogin('Vkontakte')" title=""><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="background-color: #587ea3;"><path fill="currentColor" d="M20.8,7.74C20.93,7.32 20.8,7 20.18,7H18.16C17.64,7 17.41,7.27 17.28,7.57C17.28,7.57 16.25,10.08 14.79,11.72C14.31,12.19 14.1,12.34 13.84,12.34C13.71,12.34 13.5,12.19 13.5,11.76V7.74C13.5,7.23 13.38,7 12.95,7H9.76C9.44,7 9.25,7.24 9.25,7.47C9.25,7.95 10,8.07 10.05,9.44V12.42C10.05,13.08 9.93,13.2 9.68,13.2C9,13.2 7.32,10.67 6.33,7.79C6.13,7.23 5.94,7 5.42,7H3.39C2.82,7 2.7,7.27 2.7,7.57C2.7,8.11 3.39,10.77 5.9,14.29C7.57,16.7 9.93,18 12.08,18C13.37,18 13.53,17.71 13.53,17.21V15.39C13.53,14.82 13.65,14.7 14.06,14.7C14.36,14.7 14.87,14.85 16.07,16C17.45,17.38 17.67,18 18.45,18H20.47C21.05,18 21.34,17.71 21.18,17.14C21,16.57 20.34,15.74 19.47,14.76C19,14.21 18.29,13.61 18.07,13.3C17.77,12.92 17.86,12.75 18.07,12.4C18.07,12.4 20.54,8.93 20.8,7.74Z"></path></svg></a>
                            </div>
                            <div>
                                <a href="javascript:void(0)" onclick="SLogin('Discord')" title=""><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" fill="currentColor" style="background-color: #6e85d2;"><g><path d="m484.629 225.058c-20.379-70.018-43.361-106.196-43.732-106.845-1.31-1.599-33.786-40.463-112.059-69.209l-10.343 28.16c37.237 13.676 63.655 30.36 78.184 41.14-43.376-12.953-94.977-20.886-140.679-20.886s-97.303 7.933-140.679 20.886c14.528-10.779 40.946-27.464 78.183-41.14l-10.343-28.16c-78.271 28.746-110.747 67.61-112.057 69.209-.371.649-23.354 36.827-43.732 106.845-19.64 67.476-27.101 162.665-27.372 166.482 1.75 2.736 42 71.456 151.693 71.456l27.804-40.262c-31.15-8.271-60.853-21.609-88.043-39.708l16.623-24.973c43.865 29.197 95.016 44.631 147.923 44.631s104.058-15.434 147.923-44.631l16.623 24.973c-27.189 18.099-56.893 31.437-88.043 39.708l27.804 40.262c109.693 0 149.943-68.72 151.693-71.456-.271-3.817-7.732-99.006-27.371-166.482zm-297.987 78.482h-30v-50h30zm168.716 0h-30v-50h30z"></path></g></svg></a>
                            </div>
                            <div>
                                <a href="https://demo.wowonder.com/oauth?app_id=f8856f1d671098efdd1c"><img src="https://demo.wowonder.com/themes/default/img/icon.png" alt="Login" style="width: 29px; height: 29px"></a>
                            </div>
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
                    <form action="https://demo.playtubescript.com/register" method="POST">
                        <div class="errors form-group errors_alert"></div>
                        <div class="errors success form-group"></div>
                        <div class="pp_mat_input">
                            <input type="text" name="username" id="username" placeholder="Username" required="" autofocus="">
                            <label for="username">Username</label>
                        </div>
                        <div class="pp_mat_input">
                            <input type="email" name="email" id="email" placeholder="E-mail address" required="">
                            <label for="email">E-mail address</label>
                        </div>
                        <div class="pp_mat_input">
                            <input type="password" name="password" id="password" placeholder="Password" required="">
                            <label for="password">Password</label>
                        </div>
                        <div class="pp_mat_input">
                            <input type="password" name="c_password" id="c_password" placeholder="Confirm Password" required="">
                            <label for="c_password">Confirm Password</label>
                        </div>
                        <div class="pp_mat_input">
                            <select name="gender" id="gender" required="">
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>
                        <div class="recaptcha">
                        </div>
                        <div class="login_signup_combo">
                            <input type="submit" class="btn btn-main button" value="Sign Up!">
                        </div>
                        <div class="terms">
                            <label for="accept_terms">
                                <input type="checkbox" name="accept_terms" id="accept_terms">By creating your account, you agree to our
                                <a href="https://demo.playtubescript.com/terms/terms">Terms of use</a> &amp; <a href="https://demo.playtubescript.com/terms/privacy-policy">Privacy Policy</a>
                            </label>
                            <div class="clear"></div>
                        </div>
                        <hr>
                        <div class="signup__">
                            Already have an account? <a class="dec" href="https://demo.playtubescript.com/login">Log In</a>
                        </div>
                        <input type="hidden" id="checked" value="off" name="terms">
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