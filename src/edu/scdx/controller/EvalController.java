package edu.scdx.controller;

import edu.scdx.entity.Evaluation;
import edu.scdx.service.EvalService;
import edu.scdx.service.EvalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/Evaluation")
public class EvalController {
    @Autowired
    private EvalService evalService;

    /*在线反馈界面*/
    @RequestMapping("/to_insertEvaluation.do")
    public String getUser(Model model,HttpSession httpSession)
    {
        return "insertEvaluation";
    }

    /*添加在线反馈信息*/
    @RequestMapping("/insertEvaluation.do")
    public void insertEvaluation(Model  model, HttpSession httpSession, HttpServletResponse response, String user_id, String degree1, String degree2, String degree3, String degree4, String marks1, String marks2, String marks3, String marks4, String ident, String address, String tel_no, String assort, String other) throws IOException
    {
        System.out.println(user_id+degree1+degree2 +degree3 +degree4 +marks1+marks2+marks3+marks4+ident+address+ tel_no+assort+other);
        Evaluation evaluation = new Evaluation( user_id,degree1 ,degree2 ,degree3 ,degree4 ,marks1,marks2,marks3,marks4,ident,address,tel_no,assort,other);
        evalService.insertEvaluation(evaluation );
        response.sendRedirect("/");
        //return "insertOK";
    }

    /*在线反馈公示*/
    @RequestMapping("/to_showEvaluation.do")
    public String  showEvaluation(Model model,HttpSession httpSession,HttpServletRequest request)
    {
        String telNo=request.getParameter("telNo");
        System.out.println(telNo);
        Evaluation eval=evalService.getEvaluationById(telNo);
        model.addAttribute("eval",eval);
        return "showEvaluation";


    }

}
