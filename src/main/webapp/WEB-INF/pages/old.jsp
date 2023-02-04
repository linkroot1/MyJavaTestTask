<%--
  Created by IntelliJ IDEA.
  User: lekha
  Date: 03.02.2023
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<form action="/clients_list" method="post" class="col-sm-6 mx-auto text-left">
  <div class="row g-3">
    <div class="col-md-5">
      <select class="form-select-outline-dark" id="searchType" name="searchType" required>
        <option value="0">По ФИО</option>
        <option value="1">По номеру телефона</option>
        <option value="2">По паспортным данным</option>
      </select>
    </div>

    <div class="col-md-4">
      <input type="text" class="form-control-outline-dark" id="searchingValue" name="searchingValue" placeholder="Поиск"
             value="">
    </div>

    <div class="col-md-3">
      <button class="w-100 btn btn-xs btn-outline-dark" type="submit">Найти</button>
    </div>
  </div>
</form>
