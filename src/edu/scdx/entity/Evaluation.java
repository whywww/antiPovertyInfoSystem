package edu.scdx.entity;

public class Evaluation {
    private Integer eval_id=null;
    private String user_id;
    private String degree1;
    private String degree2;
    private String degree3;
    private String degree4;
    private String marks1;
    private String marks2;
    private String marks3;
    private String marks4;
    private String ident;
    private String address;
    private String tel_no;
    private String assort;
    private String other;

    public Evaluation() {
    }

    public Evaluation(String user_id, String degree1, String degree2, String degree3, String degree4, String marks1, String marks2, String marks3, String marks4, String ident, String address, String tel_no, String assort, String other)
    {
        this.eval_id=null;
        this.user_id=user_id;
        this.degree1=degree1;
        this.degree2=degree2;
        this.degree3=degree3;
        this.degree4=degree4;
        this.marks1=marks1;
        this.marks2=marks2;
        this.marks3=marks3;
        this.marks4=marks4;
        this.ident=ident;
        this.address=address;
        this.tel_no=tel_no;
        this.assort=assort;
        this.other=other;
    }

    public Integer getEval_id() {
        return eval_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public String getDegree1() {
        return degree1;
    }

    public String getDegree2() {
        return degree2;
    }

    public String getDegree3() {
        return degree3;
    }

    public String getDegree4() {
        return degree4;
    }

    public String getMarks1() {
        return marks1;
    }

    public String getMarks2() {
        return marks2;
    }

    public String getMarks3() {
        return marks3;
    }

    public String getMarks4() {
        return marks4;
    }

    public String getIdent() {
        return ident;
    }

    public String getAddress() {
        return address;
    }

    public String getTel_no() {
        return tel_no;
    }

    public String getAssort() {
        return assort;
    }

    public String getOther() {
        return other;
    }

    public void setEval_id(Integer eval_id) {
        this.eval_id = eval_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public void setDegree1(String degree1) {
        this.degree1 = degree1;
    }

    public void setDegree2(String degree2) {
        this.degree2 = degree2;
    }

    public void setDegree3(String degree3) {
        this.degree3 = degree3;
    }

    public void setDegree4(String degree4) {
        this.degree4 = degree4;
    }

    public void setMarks1(String marks1) {
        this.marks1 = marks1;
    }

    public void setMarks2(String marks2) {
        this.marks2 = marks2;
    }

    public void setMarks3(String marks3) {
        this.marks3 = marks3;
    }

    public void setMarks4(String marks4) {
        this.marks4 = marks4;
    }

    public void setIdent(String ident) {
        this.ident = ident;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setTel_no(String tel_no) {
        this.tel_no = tel_no;
    }

    public void setAssort(String assort) {
        this.assort = assort;
    }

    public void setOther(String other) {
        this.other = other;
    }
}
