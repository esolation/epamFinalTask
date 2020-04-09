<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<#list orders as order>
<#if order.getPhotos()??>
    <#list order.getPhotos() as photo>
<div><img src="/img/${photo}" alt=""></div>
    </#list>
</#if>
</#list>
</body>
</html>