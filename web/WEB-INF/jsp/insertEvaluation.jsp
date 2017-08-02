
<%--
  Created by IntelliJ IDEA.
  User: Chris Fan
  Date: 2017/7/26
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <script src="../../static/js/prototype.js" type="text/javascript"></script>
    <script src="../../static/js/effects.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../static/js/validation.js"></script>
    <script type="text/javascript">

    </script>
    <link title="style1" rel="stylesheet" href="../../static/css/eval_style.css" type="text/css" />
    <link title="style2" rel="alternate stylesheet" href="../../static/css/style2.css" type="text/css" />
    <link title="style3" rel="alternate stylesheet" href="../../static/css/style3.css" type="text/css" />
</head>
<body>
<div class="style_changer">
    <div class="style_changer_text">Themes:</div>
    <input type="submit" value="1" onclick="setActiveStyleSheet('style1');" />
    <input type="submit" value="2" onclick="setActiveStyleSheet('style2');" />
    <input type="submit" value="3" onclick="setActiveStyleSheet('style3');" />
</div>

<div class="form_content">
    <form id="test" action="${pageContext.request.contextPath }/Evaluation/insertEvaluation.do" method="get">
        <fieldset>

        </fieldset>
        <div class="form-row">
            <div class="field-label"><label for="field5">登陆号码：</label>:</div>
            <div class="field-widget"><input name="user_id"  class="optional" title="Enter your name" /></div>
        </div>

        <div class="form-row">
            <div class="field-label"><label for="field1">评价表编号：</label>:</div>
            <div class="field-label"><label for="field5"></label>:</div>
        </div>


        <fieldset>
            <legend>基本评价</legend>

            <div class="form-row">
                <div class="field-label"><label for="field2">宣传发动：</label>:</div>
                <div class="field-widget" >
                    <select  name="degree1" >
                        <option value="特别满意">特别满意</option>
                        <option value="基本满意">基本满意</option>
                        <option value="不满意">不满意</option>
                        <option value="非常不满意">非常不满意</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="field-label"><label for="field5">备注：</label>:</div>
                <div class="field-widget"><input name="marks1" id="field5"  class="optional"  title="Enter your name" /></div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="field3">评议程序：</label>:</div>
                <div class="field-widget" >
                    <select  name="degree2" >
                        <option value="特别满意">特别满意</option>
                        <option value="基本满意">基本满意</option>
                        <option value="不满意">不满意</option>
                        <option value="非常不满意">非常不满意</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="field5">备注：</label>:</div>
                <div class="field-widget"><input name="marks2" id="field5"  class="optional"  title="Enter your name" /></div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="field12">入街走访：</label>:</div>
                <div class="field-widget" >
                    <select  name="degree3" >
                        <option value="特别满意">特别满意</option>
                        <option value="基本满意">基本满意</option>
                        <option value="不满意">不满意</option>
                        <option value="非常不满意">非常不满意</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="fiel">备注：</label>:</div>
                <div class="field-widget"><input name="marks3"  class="optional" title="Enter your name" /></div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="field12">帮扶举措：</label>:</div>
                <div class="field-widget" >
                    <select name="degree4" >
                        <option value="特别满意">特别满意</option>
                        <option value="基本满意">基本满意</option>
                        <option value="不满意">不满意</option>
                        <option value="非常不满意">非常不满意</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="fiel">备注：</label>:</div>
                <div class="field-widget"><input name="marks4"  class="optional" title="Enter your name" /></div>
            </div>


        </fieldset>
        <fieldset>
            <legend>总体评价：</legend>
            <div class="form-row">
                <div class="field-label"><label for="field12">总体评价：</label>:</div>
                <div class="field-widget"><textarea name="ident" class="optional"></textarea></div>
            </div>


        </fieldset>

        <fieldset>
            <legend class="optional">信息</legend>


            <div class="form-row">
                <div class="field-label"><label for="field9">常用住址：</label>:</div>
                <div class="field-label">
                    <input name="address" id="field9" class="optional" title="Enter your employee number, please use only alphanumeric characters" />
                </div>
            </div>

            <div class="form-row">
                <div class="field-label"><label for="field10">联系电话：</label>:</div>
                <div class="field-label"><input name="tel_no" id="field10" class="optional" title="Optional: Enter your age" /></div>
            </div>
            <div class="form-row-select">

                <fieldset>
                    <legend class="optional">贫困户分类</legend>
                    <label class="left">
                        <select name="assort" >
                            <option value="特别满意">绝对贫困人口（年人均纯收入低于627元）</option>
                            <option value="基本满意">相对贫困人口（年人均纯收入628—865元）</option>
                            <option value="不满意">低收入人口（年人均纯收入866—1205元）</option>
                            <option value="非常不满意">一般收入和高收入（年人均纯收入1205元以上）</option>
                        </select>
                    </label>


                    </label>



                </fieldset>

            </div>
            <div class="form-row">
                <div class="field-label"><label for="field12">其他：</label>:</div>
                <div class="field-widget"><textarea name="other" class="optional"></textarea></div>
            </div>

        </fieldset>
        <input type="submit" class="submit" value="提交" /><input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
    </form>
</div>

<script type="text/javascript">
    function formCallback(result, form) {
        window.status = "valiation callback for form '" + form.id + "': result = " + result;
    }

    var valid = new Validation('test', {immediate : true, onFormValidate : formCallback});
    Validation.addAllThese([
        ['validate-password', '> 6 characters', {
            minLength : 7,
            notOneOf : ['password','PASSWORD','1234567','0123456'],
            notEqualToField : 'field1'
        }],
        ['validate-password-confirm', 'please try again.', {
            equalToField : 'field8'
        }]
    ]);
</script>

</body>
</html>