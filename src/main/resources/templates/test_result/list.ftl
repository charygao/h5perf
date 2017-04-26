<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>任务列表</title>

<#include '../common/header.ftl'>

</head>
<body>
<div class="container-fluid">
<#include '../common/nav.ftl'>
    <table class="table table-hover">
        <thead>
        <th>tid</th>
        <th>testUrl</th>
        <th>结果</th>
        </thead>
        <tbody>
        <#list listTestResult as t >
        <tr>
            <td>${t.tid}</td>
            <td><a href="${t.testUrl}">${t.testUrl}</a></td>
            <td>
                <a href="detailTestResult?tid=${t.tid}" class="btn-link" target="_blank">详情</a>
            </td>
        </tr>
        </#list>
        </tbody>
    </table>

    <div class="center">
        <ul class="pagination">
            <li><a href="/listTestCase?pageNo=${prePage}&pageSize=10">&laquo;</a></li>
        <#list 1..totalPage as index>
            <#if index=pageNo>
                <li class="active"><a href="/listTestCase?pageNo=${index}&pageSize=10">${index}</a></li>
            <#else>
                <li><a href="/listTestCase?pageNo=${index}&pageSize=10">${index}</a></li>
            </#if>
        </#list>
            <li><a href="/listTestCase?pageNo=${nextPage}&pageSize=10">&raquo;</a></li>

        <#--<li class="active"><a href="#">1</a></li>-->
        <#--<li><a href="#">2</a></li>-->
        <#--<li><a href="#">3</a></li>-->
        <#--<li><a href="#">4</a></li>-->
        <#--<li><a href="#">5</a></li>-->
        </ul>
    </div>


</div>

</body>
<#include '../common/footer.ftl'>
</html>
