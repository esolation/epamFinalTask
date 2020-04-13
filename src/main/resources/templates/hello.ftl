<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row overflow-auto" style="height: 400px;">
        <#if orders??>
    <#list orders as order>

        <div class="col-md-4">
    <div class="card" style="width: 18rem;">
        <img class="card-img-top mw-50 mh-50" src="/img/${order.getPhotos()[0]}"  alt="${order.getCarModel()}">
        <div class="card-body">
            <h5 class="card-title">${order.getCarModel()}</h5>
            <p class="card-text">${order.getShortDescription()}</p>
            <a href="#" class="btn btn-primary">Заказать</a>
            <span class="card-text">${order.getCost()}</span>
        </div>
    </div>
        </div>
    </#list>
        </#if>
    </div>
</div>


<#--<#list orders as order>-->
<#--<#if order.getPhotos()??>-->
<#--    <#list order.getPhotos() as photo>-->
<#--<div><img src="/img/${photo}" alt=""></div>-->
<#--    </#list>-->
<#--</#if>-->
<#--</#list>-->
</body>
</html>