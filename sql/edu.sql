DROP database if EXISTS precisepoverty;
CREATE database precisepoverty DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use precisepoverty;
/*
*网站注册用户信息
 */
CREATE TABLE user(telNo VARCHAR(11) NOT NULL,
                    name VARCHAR(32) NOT NULL,
                    password VARCHAR(64) NOT NULL,
                    identification VARCHAR(20) NOT NULL,
                    authority INT(1) NOT NULL,
                    PRIMARY KEY (telNo));
/*
*贫困户基本信息
 */
CREATE TABLE lif_basic_info(lif_id INT NOT  NULL AUTO_INCREMENT,
                              telNo VARCHAR(50) NOT NULL ,
                              name VARCHAR(32) NOT  NULL,
                              gender VARCHAR(10) NOT NULL ,
                              birthday VARCHAR(20) NOT NULL,
                              nationality VARCHAR(50) NOT NULL,
                              domicile VARCHAR(50) NOT NULL,
                              identification VARCHAR(50) NOT NULL ,
                              dis_id VARCHAR(50),
                              disability VARCHAR(50),
                              marriage VARCHAR(50) NOT NULL ,
                              family_num INT NOT NULL ,
                              no_insurance_num INT NOT NULL,
                              housing VARCHAR(50) NOT NULL ,
                              house_income INT NOT NULL ,
                              policy_income INT NOT NULL,
                              education VARCHAR(50) NOT NULL ,
                              others VARCHAR(100),
                              PRIMARY KEY(lif_id));

/*
*脱贫项目信息
 */
CREATE TABLE project(project_id VARCHAR(10) NOT NULL ,
                        lif_id INT NOT NULL ,
                        project_name VARCHAR(50) ,
                        poverty_measure VARCHAR(200),
                        schedule VARCHAR(50) ,
                        demand_name VARCHAR(11),
                        PRIMARY KEY(project_id),
                        FOREIGN KEY(lif_id) REFERENCES lif_basic_info(lif_id) ON DELETE CASCADE ON UPDATE CASCADE );

/*
*帮扶情况信息
 */
CREATE TABLE support_situation(lif_id INT NOT NULL ,
                                  reason VARCHAR(100),
                                  poverty_will VARCHAR(10),
                                  plan_fund FLOAT(10,2),
                                  invested_money FLOAT(10,2),
                                  project_id VARCHAR(10) NOT NULL,
                                  out_of_poverty VARCHAR(4),
                                  method_valid VARCHAR(20),
                                  helping_people VARCHAR(36),
                                  helping_department VARCHAR(36),
                                  helping_people_job VARCHAR(36),
                                  helping_tel VARCHAR(11),
                                  supervisor VARCHAR(36),
                                  inspection_time VARCHAR(20),
                                  PRIMARY KEY(lif_id),
                                  FOREIGN KEY(project_id) REFERENCES project(project_id) ON DELETE CASCADE ON UPDATE CASCADE,
                                  FOREIGN KEY(lif_id) REFERENCES lif_basic_info(lif_id) ON DELETE CASCADE ON UPDATE CASCADE);

/*
*贫困户台账信息
 */
CREATE TABLE account(project_id VARCHAR(10) NOT NULL ,
                        lif_id INT NOT NULL ,
                        bank_account VARCHAR(20),
                        year VARCHAR (5),
                        helping_fund FLOAT(10,2),
                        notes VARCHAR(100),
                        PRIMARY KEY (project_id),
                        FOREIGN KEY(project_id) REFERENCES project(project_id) ON DELETE CASCADE ON UPDATE CASCADE ,
                        FOREIGN KEY(lif_id) REFERENCES lif_basic_info(lif_id) ON DELETE CASCADE ON UPDATE CASCADE);
/*
*贫困户申请人
 */
CREATE TABLE applicant( name VARCHAR(32) NOT  NULL,
                              gender VARCHAR(2) NOT NULL ,
                              nationality VARCHAR(20),
                              identification VARCHAR(20) NOT NULL ,
                              domicile VARCHAR(50) NOT NULL,
                              tel VARCHAR(20) NOT NULL ,
                              housing VARCHAR(50) NOT NULL ,
                              education VARCHAR(20) NOT NULL ,
                              marriage VARCHAR(20) NOT NULL,
                              PRIMARY KEY(identification));



