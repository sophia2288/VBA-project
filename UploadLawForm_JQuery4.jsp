<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
<style type="text/css">@import url("<c:url value="/jquery-ui-1.12.1/jquery-ui.min.css"/>");</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/datepicker/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/CaseBrief.js"></script>
<title>录入法律法规等规范性文件</title>
</head>
<body>
<div id="global">
<form action="saveLaw" enctype="multipart/form-data" method="post">
    <fieldset>
        <legend>法律法规录入</legend>
        <p>
            <label for="uploadFile">请选择文件<span class="star">*</span>：</label>
            <input type="file" name="file" accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document" style="width:210px;height:25px">
        </p>
        <p>
            <label for="fullName">法律全称<span class="star">*</span>：</label>
            <input type="text" id="fullName" name="fullName" style="width:140px;height:25px"/>
        </p>
        <p>
            <label for="organ">发布机关<span class="star">*</span>： </label>
            <input type="text" id="organ" name="organ" style="width:140px;height:25px"/>
        </p>
        <p>
            <label for="referenceNo">发文字号：</label>
            <input type="text" id="referenceNo" name="referenceNo" style="width:140px;height:25px"/>
        </p>
        <p>
            <label for="publishDate">发布日期：</label>
            <input type="text" id="publishDate" name="publishDate" style="width:140px;height:25px" onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
        </p>
        <p>
            <label for="effectiveDate">施行日期<span class="star">*</span>：</label>
            <input type="text" id="effectiveDate" name="effectiveDate" style="width:140px;height:25px" onClick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"/>
        </p>
        <p>
            <label for="prescription">时效性<span class="star">*</span>：</label>
            <input type="radio" name="prescription" value="现行有效" checked="checked"/>现行有效
            <input type="radio" name="prescription" value="已被修改"/>已被修改
            <input type="radio" name="prescription" value="已废止"/>已废止
        </p>
        <p>
            <label for="hierarchy">效力级别<span class="star">*</span>：</label>
            <select id="hierarchy" name="hierarchy" style="height:28px">
                <option value="法律" selected="selected">法律</option>
                <option value="行政法规">行政法规</option>
                <option value="省地方性法规">省地方性法规</option>
                <option value="较大市地方性法规">较大市地方性法规</option>
                <option value="司法解释">司法解释</option>
                <option value="部门规章">部门规章</option>
                <option value="地方政府规章">地方政府规章</option>
                <option value="最高人民法院的答复批复">最高法答复和批复</option>
            </select>
        </p>
        <p>
            <label for="classification">法律分类<span class="star">*</span>：</label>
            <select id="classification" name="classification" style="height:28px">
                <option value="实体" selected="selected">实体法</option>
                <option value="程序">程序法</option>
                <option value="实体&程序">实体&程序法</option>
            </select>&nbsp;&nbsp;&nbsp;
            <select id="classification1" name="classification1" style="height:28px">
                <option value="民商事" selected="selected">民商事</option>
                <option value="刑事">刑事</option>
                <option value="行政">行政</option>
                <option value="执行">执行</option>
            </select>
        </p>
        <p>
            <label for="brief">案由编码：</label>
            <input type="text" id="brief" name="brief.briefId" placeholder="已启用输入提示功能" style="width:140px;height:25px"/>
        </p>
        <p>
            <label for="aliases">法律简称：</label>
            <textarea id="aliases" name="aliases" rows="5" style="width:160px"></textarea>
        </p>
        
        <p id="buttons">
            <input id="reset" type="reset" tabindex="4" value="重新填写">&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="submit" type="submit" tabindex="5" value="保存文件">
        </p>
    </fieldset>
</form>
</div>
</body>
</html>