package com.programmingGeek02.springboot.myfirstwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {

    @RequestMapping("404")
    public String handle404Error() {
        return "error_404"; // nombre de la página de error personalizada
    }

    @RequestMapping("500")
    public String handle500Error() {
        return "error_500"; // nombre de la página de error personalizada
    }
}