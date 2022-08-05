<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>



<div class="container">
   <div class="col-md-offset-5 col-md-5 check-row">
<form role="form">
  <div class="form-group">

  <div class="checkbox">
    <label>
      <input type="checkbox" class="check" id="checkAll"> Check All
    </label>
  </div>

    <div class="checkbox">
    <label>
      <input type="checkbox" class="check"> Check me out
    </label>
  </div>


    <div class="checkbox">
    <label>
      <input type="checkbox" class="check"> Check me out
    </label>
  </div>

    <div class="checkbox">
    <label>
      <input type="checkbox" class="check"> Check me out
    </label>
  </div>
</form>
  </div>
 </div>


<div class="container">
  <div class="row">
    <div class="col-12">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">Select Day</th>
            <th scope="col">Article Name</th>
            <th scope="col">Author</th>
            <th scope="col">Words</th>
            <th scope="col">Shares</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                  <label class="custom-control-label" for="customCheck1">1</label>
              </div>
            </td>
            <td>Bootstrap 4 CDN and Starter Template</td>
            <td>Cristina</td>
            <td>913</td>
            <td>2.846</td>
          </tr>
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="customCheck2">
                  <label class="custom-control-label" for="customCheck2">2</label>
              </div>
            </td>
            <td>Bootstrap Grid 4 Tutorial and Examples</td>
            <td>Cristina</td>
            <td>1.434</td>
            <td>3.417</td>
          </tr>
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="customCheck3">
                  <label class="custom-control-label" for="customCheck3">3</label>
              </div>
            </td>
            <td>Bootstrap Flexbox Tutorial and Examples</td>
            <td>Cristina</td>
            <td>1.877</td>
            <td>1.234</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>


<@c.page>

<div>

    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="{{_csrf.token}}"/>
        <input type="submit" value="Sign Out"/>
    </form>
</div>

<h3 class="text-red text-center m-3">Список пользователей</h3>
<table class="table table-bordered">
	<thead>
		<tr>
			<th style="text-align:center;"><input type="checkbox"></th>
			<th>Дата</th>
			<th>Переходы</th>
			<th>Затраты</th>
			<th>Удалить</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="text-align:center;"><input type="checkbox"></td>
			<td>11.12.2015</td>
			<td>0 шт.</td>
			<td>0 руб.</td>
	  		<td><a href="#">Удалить</a></td>
		</tr>
		<tr>
			<td style="text-align:center;"><input type="checkbox"></td>
			<td>12.12.2015</td>
			<td>56 шт.</td>
			<td>1245 руб.</td>
	 		<td><a href="#">Удалить</a></td>
		</tr>
		<tr>
			<td style="text-align:center;"><input type="checkbox"></td>
			<td>13.12.2015</td>
			<td>45 шт.</td>
			<td>845 руб.</td>
			<td><a href="#">Удалить</a></td>
		</tr>
		<tr>
			<td style="text-align:center;"><input type="checkbox"></td>
			<td>14.12.2015</td>
			<td>1 шт.</td>
			<td>100 руб.</td>
			<td><a href="#">Удалить</a></td>
		</tr>
	</tbody>
</table>

<script>
$('.table').checkboxTable();
</script>

<table class="table table-striped table-bordered">
    <thead>
    <tr>
        <th>
        <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                All
              </label>
            </div>
            </th>
        <th>ID</th>
        <th>Имя пользователя</th>
        <th>Email</th>
        <th>Дата регистрации</th>
        <th>Дата последнего входа</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>

        <tr>
            <td>Павел</td>
            <td>p@g</td>
            <td>24 марта</td>
        </tr>

    </tbody>
</table>



</@c.page>