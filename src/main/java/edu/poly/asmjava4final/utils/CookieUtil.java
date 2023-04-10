package edu.poly.asmjava4final.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {
    public static Cookie add(String name, String value, int hours, HttpServletResponse response){
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours*2147483647);
        cookie.setPath("/");
        return cookie;
    }

    public static String get(String name, HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        if (cookies != null){
            for(Cookie cookie : cookies){
                if (cookie.getName().equalsIgnoreCase(name)){
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

}
