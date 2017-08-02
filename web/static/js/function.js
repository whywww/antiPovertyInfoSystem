
/**
 * Created by lenovo on 2017/7/25.
 */

    function sendDataforRegister() {
        if($("#u771_input").val()==""||$("#u774_input").val()==""||$("#u768_input").val()==""||$("#u777_input").val()==""){
            alert("No Empty");
        }else{
            $.ajax({
                method:"POST",
                async:true,
                url:"http://localhost:8080/user/register.json",
                data:{
                    telNo:$("#u771_input").val(),
                    name:$("#u774_input").val(),
                    password:$("#u768_input").val(),
                    identification:$("#u777_input").val()
                },
                success:function (data) {
                    alert("注册成功");
                },
                error:function(data) {
                    alert("账号已被注册");
                }
            });
        }
    }

    function login() {
        if($("#u781_input").val()==""||$("#u780_input").val()==""){
            alert("No Empty");
        }else{
            $.ajax({
                method:"POST",
                async:true,
                url:"http://localhost:8080/user/login.json",
                data:{
                    telNo:$("#u781_input").val(),
                    password:$("#u780_input").val()
                },
                success:function (data) {
                   if(data=='1'){
                       var url="http://localhost:8080/Evaluation/to_showEvaluation.do?telNo="+$("#u781_input").val();
                       window.open(url,"_self");
                   }else{
                       window.open("http://localhost:8080/user/managePage.do","_self");
                   }
                },
                error:function(data) {
                    alert("账号或密码错误");
                }
            });
        }
    }

    function deleteProject(project_id) {
        $.ajax({
            method:"POST",
            url:"http://localhost:8080/LowIncomFamilies/deleteProjectByID.do",
            data:{
                project_id:project_id
            },
            success:function (data) {
                window.open("http://localhost:8080/LowIncomFamilies/Authority.do","_self");
            },
            error:function(data) {
                alert("error");
            }
        });
    }

function getProjectData(project_id) {
    $.ajax({
        method:"POST",
        dataType:"json",
        async:false,
        url:"http://localhost:8080/LowIncomFamilies/getProjectData.do",
        data:{
            project_id:project_id
        },
        success:function (data) {
            var val=eval(data);
            var authority=data.authority;

            $("#project_id").val(authority.project_id);
            $("#project_name").val(authority.project_name);
            $("#lif_id").val(authority.lif_id);
            $("#helping_people").val(authority.helping_people);
            $("#helping_department").val(authority.helping_department);
            $("#helping_people_job").val(authority.helping_people_job);
            $("#helping_tel").val(authority.helping_tel);
            $("#supervisor").val(authority.supervisor);
            $("#inspection_time").val(authority.inspection_time);
            $("#out_of_poverty").val(authority.out_of_poverty);
            $("#edit_tab").trigger('click');
        },
        error:function(data) {
            alert("error");
        }
    });
}

function submitData() {
    if ($("#project_id").val() == "" || $("#project_name").val() == "" || $("#lif_id").val() == "" || $("#helping_people").val() == "" || $("#helping_department").val() == "" || $("#helping_people_job").val() == "" || $("#helping_tel").val() == "" || $("#supervisor").val() == "" || $("#inspection_time").val() == "" || $("#out_of_poverty").val() == "") {
        alert("No Empty");
    } else {
        $.ajax({
            method: "POST",
            url: "http://localhost:8080/LowIncomFamilies/createProject.do",
            data: {
                project_id: $("#project_id").val(),
                project_name: $("#project_name").val(),
                lif_id: $("#lif_id").val(),
                helping_people: $("#helping_people").val(),
                helping_department: $("#helping_department").val(),
                helping_people_job: $("#helping_people_job").val(),
                helping_tel: $("#helping_tel").val(),
                supervisor: $("#supervisor").val(),
                inspection_time: $("#inspection_time").val(),
                out_of_poverty: $("#out_of_poverty").val()
            },
            success: function (data) {
                alert("提交成功");
            },
            error: function (data) {
                alert("提交失败");
            }
        });
    }
}


function search() {
    if($("#input_lif_id").val()==""){
        alert("No Empty");
    }else{
        $.ajax({
            method:"POST",
            dataType:"json",
            url:"http://localhost:8080/LowIncomFamilies/basicInfo.json",
            data:{
                lif_id:$("#input_lif_id").val()
            },
            success:function (data) {
                var val=eval(data);
                var lowIncomFamilies=val.lowIncomFamilies;
                var authorities=val.authorities;

               $("#lif_id").html(lowIncomFamilies.lif_id);
                $("#telNo").val(lowIncomFamilies.telNo);
                $("#name").val(lowIncomFamilies.name);
                $("#gender").val(lowIncomFamilies.gender);
                $("#birthday").val(lowIncomFamilies.birthday);
                $("#nationality").val(lowIncomFamilies.nationality);
                $("#domicile").val(lowIncomFamilies.domicile);
                $("#identification").val(lowIncomFamilies.identification);
                $("#dis_id").val(lowIncomFamilies.dis_id);
                $("#disability").val(lowIncomFamilies.disability);
                $("#marriage").val(lowIncomFamilies.marriage);
                $("#family_num").val(lowIncomFamilies.family_num);
                $("#no_insurance_num").val(lowIncomFamilies.no_insurance_num);
                $("#housing").val(lowIncomFamilies.housing);
                $("#house_income").val(lowIncomFamilies.house_income);
                $("#policy_income").val(lowIncomFamilies.policy_income);
                $("#education").val(lowIncomFamilies.education);
                $("#others").val(lowIncomFamilies.others);

                $("#demand_table").children("tr").remove();
                authorities.forEach(function (val,i,arr) {
                    $("<tr><td>"+val.project_id+"</td><td >"+val.project_name+"</td><td>"+val.demand_name+"</td></tr>").appendTo($("#demand_table"));
                });
            },
            error:function(data) {
                alert("没有该编号");
            }
        });
    }
}

function sendLifData() {
    $.ajax({
        method: "POST",
        url: "http://localhost:8080/LowIncomFamilies/LifData.do",
        data: {
            lif_id: $("#lif_id").text(),
            telNo: $("#telNo").val(),
            name: $("#name").val(),
            gender: $("#gender").val(),
            birthday: $("#birthday").val(),
            nationality: $("#nationality").val(),
            domicile: $("#domicile").val(),
            identification: $("#identification").val(),
            dis_id: $("#dis_id").val(),
            disability: $("#disability").val(),
            marriage: $("#marriage").val(),
            family_num: $("#family_num").val(),
            no_insurance_num: $("#no_insurance_num").val(),
            housing: $("#housing").val(),
            house_income: $("#house_income").val(),
            policy_income: $("#policy_income").val(),
            education: $("#education").val(),
            others: $("#others").val()
        },
        success: function (data) {
            alert("保存成功");
        },
        error: function (data) {
            alert("保存失败");
        }
    });
}
function deleteData() {
    $("#lif_id").html("待生成");
    $("#telNo").val("");
    $("#name").val("");
    $("#gender").val("男");
    $("#birthday").val("");
    $("#nationality").val("");
    $("#domicile").val("");
    $("#identification").val("");
    $("#dis_id").val("");
    $("#disability").val("");
    $("#marriage").val("已婚");
    $("#family_num").val("");
    $("#no_insurance_num").val("");
    $("#housing").val("");
    $("#house_income").val("");
    $("#policy_income").val("");
    $("#education").val("小学");
    $("#others").val("");
}


function getInfoProjectData(project_id){
        $.ajax({
            method:"POST",
            dataType:"json",
            async:false,
            url:"http://localhost:8080/LowIncomFamilies/getInfoProjectData.do",
            data:{
                project_id:project_id
            },
            success:function (data) {
                var val=eval(data);
                var sp=val.transparentManagement_sp;
                var plan=val.transparentManagement_plan;
                var account=val.transparentManagement_account;

                $("#a").trigger('click');

                $("#lifname").val(sp.name);
                $("#reason").val(sp.reason);
                $("#poverty_will").val(sp.poverty_will);
                $("#out_of_poverty").val(sp.out_of_poverty);
                $("#poverty_measure").val(sp.poverty_measure);
                $("#project_id").val(sp.project_id);
                $("#method_valid").val(sp.method_valid);
                $("#plan_fund").val(sp.plan_fund);
                $("#invested_money").val(sp.invested_money);
                $("#project_id_").val(sp.project_id);
                $("#project_name").val(plan.project_name);
                $("#demand_name").val(plan.demand_name);
                $("#plan_measure").val(sp.poverty_measure);
                $("#schedule").val(plan.schedule);
                $("#lif_id").val(sp.lif_id);
                $("#project_id_1").val(sp.project_id);
                $("#bank_account").val(account.bank_account);
                $("#year").val(account.year);
                $("#plan_fund_").val(sp.plan_fund);
                $("#notes").val(account.notes);
            },
            error:function(data) {
                alert("error");
            }
        });
}

function a() {
    $("#plan_measure").val($("#poverty_measure").val());
}
function b() {
    $("#plan_fund_").val($("#plan_fund").val());
}

function setPlanData() {
    $.ajax({
        method: "POST",
        url: "http://localhost:8080/LowIncomFamilies/planData.do",
        data: {
            lif_id:$("#lif_id").val(),
            name: $("#lifname").val(),
            reason: $("#reason").val(),
            poverty_will: $("#poverty_will").val(),
            out_of_poverty: $("#out_of_poverty").val(),
            poverty_measure: $("#poverty_measure").val(),
            project_id: $("#project_id").val(),
            method_valid: $("#method_valid").val(),
            plan_fund: $("#plan_fund").val(),
            invested_money: $("#invested_money").val(),
            project_name: $("#project_name").val(),
            demand_name: $("#demand_name").val(),
            schedule: $("#schedule").val(),
            bank_account: $("#bank_account").val(),
            year: $("#year").val(),
            notes: $("#notes").val()
        },
        success: function (data) {
            alert("保存成功");
        },
        error: function (data) {
            alert("保存失败");
        }
    });
}
