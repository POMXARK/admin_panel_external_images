@include('additions')   <?php // подключение шаблона (чанка - blade) ?>

@include('header_main_menu')  <?php // подключение шаблона (чанка - blade) ?>

<?php // Разметка HTML ?>
{!! Form::open(['action' => 'BDInsertController@BD_insert']) !!}
{!! Form::label('name', 'Ссылки на фото imbb - Коды для встраивания - HTML - код полноразмерного со ссылкой https://imgbb.com/ :' , ['class' => 'form-control container ']) !!}
  {!! Form::textarea('html_arr', null, ['class' => 'form-control container ']) !!}
  <br>
  {!! Form::submit('Загрузить фото ' , ['class' => 'form-control container  btn-primary'] ) !!}
  {!! Form::close() !!}
<?php // Разметка HTML ?>


<!-- <form method="POST" action="content\foto">
<div class="form-group">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Example select</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">Example multiple select</label>
    <select multiple class="form-control" id="exampleFormControlSelect2">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group container">
    <label for="exampleFormControlTextarea1">Ссылки на фото</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="9"></textarea>
    <br>
    <button type="submit" class="btn btn-primary">Загрузить</button>

  </div>

</form>
<td><button onclick="location.href='{{ url('\welcome') }}'">
     Check Stock</button></td> -->
