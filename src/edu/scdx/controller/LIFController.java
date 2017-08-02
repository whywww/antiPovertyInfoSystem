package edu.scdx.controller;

/**
 * Created by lenovo on 2017/7/26.
 */
import javax.jws.WebParam;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.scdx.entity.LowIncomFamilies;
import edu.scdx.entity.TransparentManagement;
import edu.scdx.service.LIFService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import edu.scdx.entity.Authority;
import org.springframework.web.util.HtmlUtils;

@Controller
@RequestMapping("/LowIncomFamilies")
public class LIFController {
    @Autowired
    private LIFService lifService;

    @RequestMapping("/applicant.do")
    public String getApplicantList(Model model,HttpSession session){
        List<LowIncomFamilies> applicants=lifService.getAll();
        model.addAttribute("applicants",applicants);
        return "ApplicantList";
    }

    /*项目进展公示*/
    @RequestMapping("/ProjNotify.do")
    public String getProjectList(Model model,HttpSession session){
        List<TransparentManagement> projects=lifService.getProjList();
        model.addAttribute("project",projects);
        return "ProjNotify";
    }

    /*获取申请人名单及所有信息*/
    @RequestMapping("/LowIncomeFamilies.do")
    public String getLowIncomeFamilies(Model model,HttpSession session){
        List<LowIncomFamilies> applicants=lifService.getAll_lif();
        model.addAttribute("applicants",applicants);
        return "LowIncomeFamilies";
    }

    /*公示公告*/
    @RequestMapping("/notify.do")
    public String getNotify(Model model,HttpSession session){
        return "notify";
    }

    /*扶贫事权管理*/
    @RequestMapping("/Authority.do")
    public String getAuthorityPage(Model model, HttpSession session){
        List<Authority> projects=lifService.getAllProject();
        model.addAttribute("projects",projects);
        return "Authority";
    }

    /*删除某个项目*/
    @RequestMapping("/deleteProjectByID.do")
    public void deleteProjectByID(Model model, HttpSession session,HttpServletResponse response,String project_id) throws IOException{
        Integer rowcount=lifService.deleteProjectByID(project_id);
        response.setHeader("Content_Type","text/html;charset=utf-8");
       if(rowcount>0){
           response.setStatus(200);
       }else {
           response.setStatus(400);
       }
        PrintWriter out=response.getWriter();
        out.write("");
    }

    /*获得项目信息*/
    @RequestMapping("/getProjectData.do")
    public void getProjectData(Model model, HttpSession session,HttpServletResponse response,String project_id) throws IOException{
        Authority authority=lifService.getProjectDataByID(project_id);

        JSONObject json=new JSONObject();
        json.put("authority",authority);
        response.setContentType("text/json");
        response.setCharacterEncoding("UTF-8");
        if(authority!=null){
            response.setStatus(200);
        }else {
            response.setStatus(400);
        }
        PrintWriter out=response.getWriter();
        out.print(json.toString());
        out.flush();
        out.close();
    }

    /*创建一个项目*/
    @RequestMapping("/createProject.do")
    public void createProject(Model model, HttpSession session,HttpServletResponse response,String project_id, Integer lif_id, String project_name,String helping_people, String helping_department, String helping_people_job, String helping_tel, String supervisor, String inspection_time, String out_of_poverty) throws IOException{
        Authority authority= lifService.getProjectDataByID(project_id);
        //System.out.println(project_id+";"+lif_id+";"+project_name+";"+out_of_poverty+";"+helping_people+";"+helping_department+";"+helping_department+";"+helping_tel+";"+supervisor+";"+inspection_time);
        Authority auth;
        auth = new Authority(project_id, lif_id,project_name,"", "","", "","", 0f, 0f,out_of_poverty,"",helping_people,helping_department,helping_people_job,helping_tel,supervisor,inspection_time);

        int rowcount1=0;
        int rowcount2=0;
        if(authority==null){
            rowcount1=lifService.insertProjectData(auth);
            rowcount2=lifService.insertSupData(auth);
        }else{
            rowcount1=lifService.updateProjectData(auth);
            rowcount2=lifService.updateSupData(auth);
        }

        System.out.println(rowcount1);
        System.out.println(rowcount2);

        response.setHeader("Content_Type","text/html;charset=utf-8");
        if(rowcount1>0&&rowcount2>0){
            response.setStatus(200);
        }else {
            response.setStatus(400);
        }
        PrintWriter out=response.getWriter();
        out.write("");
    }

   /*基本信息表*/
    @RequestMapping("/basicInfo.do")
    public String BasicInfo(Model model, HttpSession session) {
        return "basicInfo";
    }

    /*json:基本信息传输*/
    @RequestMapping("/basicInfo.json")
    public void getBasicInfo(Model model,HttpSession session, HttpServletResponse response, Integer lif_id)throws IOException{
        LowIncomFamilies lowIncomFamilies = lifService.getInfoById(lif_id);
        List<Authority> authorities=lifService.getDemand(lif_id);

        JSONObject jsonObject=new JSONObject();
        jsonObject.put("lowIncomFamilies",lowIncomFamilies);
        jsonObject.put("authorities",authorities);

        response.setContentType("text/json");
        response.setCharacterEncoding("UTF-8");
        if(lowIncomFamilies!= null){
            response.setStatus(200);
        }else{
            response.setStatus(404);
        }

        PrintWriter out=response.getWriter();
        out.print(jsonObject.toString());
        out.flush();
        out.close();
        return ;
    }

    /*修改个人信息*/
     @RequestMapping("/LifData.do")
    public void editBasicInfo(Model model, HttpSession session,HttpServletResponse response, String lif_id, String telNo, String name, String gender, String birthday, String nationality, String domicile,String identification, String dis_id, String disability, Integer family_num, Integer no_insurance_num, Integer house_income, Integer policy_income, String housing, String education, String marriage,String others)throws IOException {
        response.setHeader("Content_Type","text/html;charset=utf-8");
        int rowcount=0;
        if(lif_id.equals("待生成")){
            System.out.println("insert");
            LowIncomFamilies lowIncomFamilies=new LowIncomFamilies(0,telNo,name,gender,birthday,nationality, domicile, identification, dis_id, disability,marriage, family_num,no_insurance_num,housing,house_income,policy_income,education,others);
            rowcount=lifService.insertBasicInfo(lowIncomFamilies);
            if(rowcount>0){
                response.setStatus(200);
            }
            else {
                response.setStatus(404);
            }
        }
        else{
            LowIncomFamilies lowIncomFamilies=new LowIncomFamilies(Integer.parseInt(lif_id),telNo,name,gender,birthday,nationality, domicile, identification, dis_id, disability,marriage, family_num,no_insurance_num,housing,house_income,policy_income,education,others);
            rowcount=lifService.editBasicInfo(lowIncomFamilies);
            if(rowcount>0){
                response.setStatus(200);
            }
            else {
                response.setStatus(404);
            }
        }
         PrintWriter out=response.getWriter();
         out.write("");
        return;
    }

    /*阳光操作管理*/
    @RequestMapping("/TransparentManagement.do")
    public String getTransparentManagement(Model model,HttpSession session) {
        List<TransparentManagement> transparentManagements = lifService.getAllTM();
        model.addAttribute("transparentManagements", transparentManagements);
        return "TransparentManagement";
    }

    /*获取某个项目信息*/
    @RequestMapping("/getInfoProjectData.do")
    public void getInfoProjectData(Model model, HttpSession session, HttpServletResponse response,String project_id) throws IOException{
    TransparentManagement transparentManagement_sp=lifService.getLSP(project_id);
    TransparentManagement transparentManagement_plan=lifService.getPlan(project_id);
    TransparentManagement transparentManagement_account=lifService.getAccount(project_id);

    JSONObject jsonObject=new JSONObject();
    jsonObject.put("transparentManagement_sp",transparentManagement_sp);
    jsonObject.put("transparentManagement_plan",transparentManagement_plan);
    jsonObject.put("transparentManagement_account",transparentManagement_account);

    response.setContentType("text/json");
    response.setCharacterEncoding("UTF-8");
    if(transparentManagement_plan!= null){
        response.setStatus(200);
    }else{
        response.setStatus(404);
    }
    PrintWriter out=response.getWriter();
    out.print(jsonObject.toString());
    out.flush();
    out.close();
    return ;
}

    /*获取阳光操作计划信息*/
    @RequestMapping("/planData.do")
    public void setPlanData(Model model, HttpSession session, HttpServletResponse response,Integer lif_id,String name, String reason, String poverty_will, String out_of_poverty, String poverty_measure, String project_id, String method_valid, Float plan_fund, Float invested_money, String project_name, String demand_name, String schedule, String bank_account, String year, String notes) throws IOException{
    //System.out.println(lif_id+";"+name+";"+reason+";"+poverty_will+";"+out_of_poverty+";"+poverty_measure+";"+project_id+";"+method_valid+";"+plan_fund+";"+invested_money+";"+project_name+";"+demand_name+";"+schedule+";"+bank_account+";"+year+";"+notes);
    TransparentManagement transparentManagement=new TransparentManagement(lif_id,name, reason, poverty_will,out_of_poverty, poverty_measure,project_id,method_valid, plan_fund, invested_money,project_name,demand_name,schedule,bank_account,year,notes);
    TransparentManagement tm=lifService.getAccount(project_id);
    System.out.println("Account start");
    if(tm==null){
        lifService.insertAccount(transparentManagement);
    }else{
        lifService.updateAccount(transparentManagement);
    }
    System.out.println("Account ok");
    lifService.updateLIF_name(transparentManagement);
    System.out.println("LIF_name ok");
    lifService.updateProject(transparentManagement);
    System.out.println("Project ok");
    lifService.updateSP(transparentManagement);
    System.out.println("SP ok");

    response.setHeader("Content_Type","text/html;charset=utf-8");
    response.setStatus(200);
    PrintWriter out=response.getWriter();
    out.write("");
}

    /*大数据分析*/
    @RequestMapping("/DataAnalysis.do")
    public String DataAnalysisPage(){
        return "Charts";
    }
}
