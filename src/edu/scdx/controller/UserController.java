package edu.scdx.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.scdx.entity.User;
import edu.scdx.service.UserService;

import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("/loginPage.do")
    public String getLoginPage() {
       return "login";
    }

    @RequestMapping("/login.json")
    public void getUsers(Model model, HttpSession session, HttpServletResponse response, String telNo, String password) throws IOException{
        User user = userService.getByTelNoandPassword(telNo, password);
        if(user!=null){
            response.setHeader("Content_Type","text/html;charset=utf-8");
            response.setStatus(200);
            PrintWriter out=response.getWriter();
            out.write(user.getAuthority()+"");
        }else {
            response.setHeader("Content_Type","text/html;charset=utf-8");
            response.setStatus(404);
            PrintWriter out=response.getWriter();
            out.write("");
        }
        return;
    }

    @RequestMapping("/register.json")
    public void register(Model model, HttpSession session, HttpServletResponse response, String telNo, String name, String password, String identification) throws IOException{
        User user_e=userService.getByTelNo(telNo);
        if(user_e==null){
            User user=new User(telNo,name,password,identification,1);
            userService.registerUser(user);
            response.setHeader("Content_Type","text/html;charset=utf-8");
            response.setStatus(200);
            PrintWriter out=response.getWriter();
            out.write("");
        }else {
            response.setHeader("Content_Type","text/html;charset=utf-8");
            response.setStatus(404);
            PrintWriter out=response.getWriter();
            out.write("");
        }
        return;
    }

    @RequestMapping("/managePage.do")
    public String getManagePage(Model model, HttpSession session){
        return "managePage";
    }


    @RequestMapping("/insertEvaluation.do")
    public String getEvaluation(){
        return "insertEvaluation";
    }
}
