
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>АРМ менеджера</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/features/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">




</head>
<body>



<main>
    <div class="container px-4 py-5" id="featured-3">
        <h2 class="pb-2 border-bottom">АРМ кредитный сервис</h2>
        <div class="row g-4 py-5 row-cols-1">
            <div class="feature col">

                <h2>Создать заявку</h2>
                    <a class="btn btn-xs btn-outline-dark" href="/credit-processing/step-1" role="button">
                        Создать
                    </a>
            </div>
            <div class="feature col">

                <h2>Просмотр клиентов</h2>
                <a class="btn btn-xs btn-outline-dark" href="/clients_list" role="button">
                    Просмотреть клиентов
                </a>
            </div>
            <div class="feature col">

                <h2>Просмотр заявок</h2>
                <a class="btn btn-xs btn-outline-dark" href="/creditApplications_list" role="button">
                    Просмотреть заявки
                </a>
            </div>
        </div>
            <div class="feature col">
                <h2>Просмотр кредитных договоров</h2>
                <a class="btn btn-xs btn-outline-dark" href="/creditContracts_list" role="button">
                    Просмотреть договоры
                </a>
            </div>
    </div>
</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>
