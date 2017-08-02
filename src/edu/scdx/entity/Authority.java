package edu.scdx.entity;

/**
 * Created by lenovo on 2017/7/26.
 */
public class Authority {
    private String project_id;
    private Integer lif_id;
    private String project_name;
    private String poverty_measure;
    private String schedule;
    private String demand_name;

    private String reason;
    private String poverty_will;
    private Float plan_fund;
    private Float invested_money;
    private String out_of_poverty;
    private String method_valid;
    private String helping_people;
    private String helping_department;
    private String helping_people_job;
    private String helping_tel;
    private String  supervisor;
    private String inspection_time;

    public Authority() {
    }

    public Authority(String project_id, Integer lif_id, String project_name, String poverty_measure, String schedule, String demand_name, String reason, String poverty_will, Float plan_fund, Float invested_money, String out_of_poverty, String method_valid, String helping_people, String helping_department, String helping_people_job, String helping_tel, String supervisor, String inspection_time) {
        this.project_id = project_id;
        this.lif_id = lif_id;
        this.project_name = project_name;
        this.poverty_measure = poverty_measure;
        this.schedule = schedule;
        this.demand_name = demand_name;
        this.reason = reason;
        this.poverty_will = poverty_will;
        this.plan_fund = plan_fund;
        this.invested_money = invested_money;
        this.out_of_poverty = out_of_poverty;
        this.method_valid = method_valid;
        this.helping_people = helping_people;
        this.helping_department = helping_department;
        this.helping_people_job = helping_people_job;
        this.helping_tel = helping_tel;
        this.supervisor = supervisor;
        this.inspection_time = inspection_time;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public void setLif_id(Integer lif_id) {
        this.lif_id = lif_id;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public void setPoverty_measure(String poverty_measure) {
        this.poverty_measure = poverty_measure;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public void setDemand_name(String demand_name) {
        this.demand_name = demand_name;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setPoverty_will(String poverty_will) {
        this.poverty_will = poverty_will;
    }

    public void setPlan_fund(Float plan_fund) {
        this.plan_fund = plan_fund;
    }

    public void setInvested_money(Float invested_money) {
        this.invested_money = invested_money;
    }

    public void setOut_of_poverty(String out_of_poverty) {
        this.out_of_poverty = out_of_poverty;
    }

    public void setMethod_valid(String method_valid) {
        this.method_valid = method_valid;
    }

    public void setHelping_people(String helping_people) {
        this.helping_people = helping_people;
    }

    public void setHelping_department(String helping_department) {
        this.helping_department = helping_department;
    }

    public void setHelping_people_job(String helping_people_job) {
        this.helping_people_job = helping_people_job;
    }

    public void setHelping_tel(String helping_tel) {
        this.helping_tel = helping_tel;
    }

    public void setSupervisor(String supervisor) {
        this.supervisor = supervisor;
    }

    public void setInspection_time(String inspection_time) {
        this.inspection_time = inspection_time;
    }

    public String getProject_id() {
        return project_id;
    }

    public Integer getLif_id() {
        return lif_id;
    }

    public String getProject_name() {
        return project_name;
    }

    public String getPoverty_measure() {
        return poverty_measure;
    }

    public String getSchedule() {
        return schedule;
    }

    public String getDemand_name() {
        return demand_name;
    }

    public String getReason() {
        return reason;
    }

    public String getPoverty_will() {
        return poverty_will;
    }

    public Float getPlan_fund() {
        return plan_fund;
    }

    public Float getInvested_money() {
        return invested_money;
    }

    public String getOut_of_poverty() {
        return out_of_poverty;
    }

    public String getMethod_valid() {
        return method_valid;
    }

    public String getHelping_people() {
        return helping_people;
    }

    public String getHelping_department() {
        return helping_department;
    }

    public String getHelping_people_job() {
        return helping_people_job;
    }

    public String getHelping_tel() {
        return helping_tel;
    }

    public String getSupervisor() {
        return supervisor;
    }

    public String getInspection_time() {
        return inspection_time;
    }
}
