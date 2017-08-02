package edu.scdx.entity;

import java.util.Date;

/**
 * Created by lenovo on 2017/7/25.
 */
public class LowIncomFamilies {
    private Integer lif_id;
    private String telNo;
    private String name;
    private String gender;
    private String birthday;
    private String nationality;
    private String domicile;
    private String identification;
    private String dis_id;
    private String disability;
    private String marriage;
    private Integer family_num;
    private Integer no_insurance_num;
    private String housing;
    private Integer house_income;
    private Integer policy_income;
    private String education;
    private String others;

    public LowIncomFamilies() {
    }

    public LowIncomFamilies(Integer lif_id, String telNo, String name, String gender, String birthday, String nationality, String domicile, String identification, String dis_id, String disability, String marriage, Integer family_num, Integer no_insurance_num, String housing, Integer house_income, Integer policy_income, String education, String others) {
        this.lif_id = lif_id;
        this.telNo = telNo;
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.nationality = nationality;
        this.domicile = domicile;
        this.identification = identification;
        this.dis_id = dis_id;
        this.disability = disability;
        this.marriage = marriage;
        this.family_num = family_num;
        this.no_insurance_num = no_insurance_num;
        this.housing = housing;
        this.house_income = house_income;
        this.policy_income = policy_income;
        this.education = education;
        this.others = others;
    }

    public Integer getLif_id() {
        return lif_id;
    }

    public void setLif_id(Integer lif_id) {
        this.lif_id = lif_id;
    }

    public String getTelNo() {
        return telNo;
    }

    public void setTelNo(String telNo) {
        this.telNo = telNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getDomicile() {
        return domicile;
    }

    public void setDomicile(String domicile) {
        this.domicile = domicile;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getDis_id() {
        return dis_id;
    }

    public void setDis_id(String dis_id) {
        this.dis_id = dis_id;
    }

    public String getDisability() {
        return disability;
    }

    public void setDisability(String disability) {
        this.disability = disability;
    }

    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public Integer getFamily_num() {
        return family_num;
    }

    public void setFamily_num(Integer family_num) {
        this.family_num = family_num;
    }

    public Integer getNo_insurance_num() {
        return no_insurance_num;
    }

    public void setNo_insurance_num(Integer no_insurance_num) {
        this.no_insurance_num = no_insurance_num;
    }

    public String getHousing() {
        return housing;
    }

    public void setHousing(String housing) {
        this.housing = housing;
    }

    public Integer getHouse_income() {
        return house_income;
    }

    public void setHouse_income(Integer house_income) {
        this.house_income = house_income;
    }

    public Integer getPolicy_income() {
        return policy_income;
    }

    public void setPolicy_income(Integer policy_income) {
        this.policy_income = policy_income;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }
}
