package edu.scdx.entity;

/**
 * Created by lenovo on 2017/7/27.
 */
public class TransparentManagement {
    private Integer lif_id;
    private String name;
    private String reason;
    private String poverty_will;
    private String out_of_poverty;

    private String poverty_measure;

    private String project_id;
    private String method_valid;
    private Float plan_fund;
    private Float invested_money;

    private String project_name;
    private String demand_name;
    private String schedule;

    private String bank_account;
    private String year;
    private String notes;

    public TransparentManagement() {
    }

    public TransparentManagement(Integer lif_id, String name, String reason, String poverty_will, String out_of_poverty, String poverty_measure, String project_id, String method_valid, Float plan_fund, Float invested_money, String project_name, String demand_name, String schedule, String bank_account, String year, String notes) {
        this.lif_id = lif_id;
        this.name = name;
        this.reason = reason;
        this.poverty_will = poverty_will;
        this.out_of_poverty = out_of_poverty;
        this.poverty_measure = poverty_measure;
        this.project_id = project_id;
        this.method_valid = method_valid;
        this.plan_fund = plan_fund;
        this.invested_money = invested_money;
        this.project_name = project_name;
        this.demand_name = demand_name;
        this.schedule = schedule;
        this.bank_account = bank_account;
        this.year = year;
        this.notes = notes;
    }

    public void setLif_id(Integer lif_id) {
        this.lif_id = lif_id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setPoverty_will(String poverty_will) {
        this.poverty_will = poverty_will;
    }

    public void setOut_of_poverty(String out_of_poverty) {
        this.out_of_poverty = out_of_poverty;
    }

    public void setPoverty_measure(String poverty_measure) {
        this.poverty_measure = poverty_measure;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public void setMethod_valid(String method_valid) {
        this.method_valid = method_valid;
    }

    public void setPlan_fund(Float plan_fund) {
        this.plan_fund = plan_fund;
    }

    public void setInvested_money(Float invested_money) {
        this.invested_money = invested_money;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public void setDemand_name(String demand_name) {
        this.demand_name = demand_name;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public void setBank_account(String bank_account) {
        this.bank_account = bank_account;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Integer getLif_id() {
        return lif_id;
    }

    public String getName() {
        return name;
    }

    public String getReason() {
        return reason;
    }

    public String getPoverty_will() {
        return poverty_will;
    }

    public String getOut_of_poverty() {
        return out_of_poverty;
    }

    public String getPoverty_measure() {
        return poverty_measure;
    }

    public String getProject_id() {
        return project_id;
    }

    public String getMethod_valid() {
        return method_valid;
    }

    public Float getPlan_fund() {
        return plan_fund;
    }

    public Float getInvested_money() {
        return invested_money;
    }

    public String getProject_name() {
        return project_name;
    }

    public String getDemand_name() {
        return demand_name;
    }

    public String getSchedule() {
        return schedule;
    }

    public String getBank_account() {
        return bank_account;
    }

    public String getYear() {
        return year;
    }

    public String getNotes() {
        return notes;
    }
}
