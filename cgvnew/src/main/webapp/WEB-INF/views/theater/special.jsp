<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>special</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
.tab-wrap {
	 transition: 0.3s box-shadow ease;
	 border-radius: 6px;
	 max-width: 100%;
	 display: flex;
	 flex-wrap: wrap;
	 position: relative;
	 list-style: none;
	 background-color: #fff;
	 margin: 40px 0;
	 box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}
 .tab-wrap:hover {
	 box-shadow: 0 12px 23px rgba(0, 0, 0, 0.23), 0 10px 10px rgba(0, 0, 0, 0.19);
}
 .tab {
	 display: none;
}
 .tab:checked:nth-of-type(1) ~ .tab__content:nth-of-type(1) {
	 opacity: 1;
	 transition: 0.5s opacity ease-in, 0.8s transform ease;
	 position: relative;
	 top: 0;
	 z-index: 100;
	 transform: translateY(0px);
	 text-shadow: 0 0 0;
}
 .tab:checked:nth-of-type(2) ~ .tab__content:nth-of-type(2) {
	 opacity: 1;
	 transition: 0.5s opacity ease-in, 0.8s transform ease;
	 position: relative;
	 top: 0;
	 z-index: 100;
	 transform: translateY(0px);
	 text-shadow: 0 0 0;
}
 .tab:checked:nth-of-type(3) ~ .tab__content:nth-of-type(3) {
	 opacity: 1;
	 transition: 0.5s opacity ease-in, 0.8s transform ease;
	 position: relative;
	 top: 0;
	 z-index: 100;
	 transform: translateY(0px);
	 text-shadow: 0 0 0;
}
 .tab:checked:nth-of-type(4) ~ .tab__content:nth-of-type(4) {
	 opacity: 1;
	 transition: 0.5s opacity ease-in, 0.8s transform ease;
	 position: relative;
	 top: 0;
	 z-index: 100;
	 transform: translateY(0px);
	 text-shadow: 0 0 0;
}
 .tab:checked:nth-of-type(5) ~ .tab__content:nth-of-type(5) {
	 opacity: 1;
	 transition: 0.5s opacity ease-in, 0.8s transform ease;
	 position: relative;
	 top: 0;
	 z-index: 100;
	 transform: translateY(0px);
	 text-shadow: 0 0 0;
}
 .tab:first-of-type:not(:last-of-type) + label {
	 border-top-right-radius: 0;
	 border-bottom-right-radius: 0;
}
 .tab:not(:first-of-type):not(:last-of-type) + label {
	 border-radius: 0;
}
 .tab:last-of-type:not(:first-of-type) + label {
	 border-top-left-radius: 0;
	 border-bottom-left-radius: 0;
}
 .tab:checked + label {
	 background-color: #fff;
	 box-shadow: 0 -1px 0 #fff inset;
	 cursor: default;
}
 .tab:checked + label:hover {
	 box-shadow: 0 -1px 0 #fff inset;
	 background-color: #fff;
}
 .tab + label {
	 box-shadow: 0 -1px 0 #eee inset;
	 border-radius: 6px 6px 0 0;
	 cursor: pointer;
	 display: block;
	 text-decoration: none;
	 color: #333;
	 flex-grow: 3;
	 text-align: center;
	 background-color: #f2f2f2;
	 user-select: none;
	 text-align: center;
	 transition: 0.3s background-color ease, 0.3s box-shadow ease;
	 height: 50px;
	 box-sizing: border-box;
	 padding: 15px;
}
 .tab + label:hover {
	 background-color: #f9f9f9;
	 box-shadow: 0 1px 0 #f4f4f4 inset;
}
 .tab__content {
	 padding: 10px 25px;
	 background-color: transparent;
	 position: absolute;
	 width: 100%;
	 z-index: -1;
	 opacity: 0;
	 left: 0;
	 transform: translateY(-3px);
	 border-radius: 6px;
}
/* boring stuff */
 body {
	 font-family: 'Helvetica', sans-serif;
	 background-color: #e7e7e7;
	 color: #777;
	 padding: 30px 0;
	 font-weight: 300;
}
 .container {
	 margin: 0 auto;
	 display: block;
	 max-width: 800px;
}
 .container > *:not(.tab-wrap) {
	 padding: 0 80px;
}
 h1, h2 {
	 margin: 0;
	 color: #444;
	 text-align: center;
	 font-weight: 400;
}
 h2 {
	 font-size: 1em;
	 margin-bottom: 30px;
}
 h3 {
	 font-weight: 400;
}
 p {
	 line-height: 1.6;
	 margin-bottom: 20px;
}
 
</style>
</head>
<body>
<h1>special</h1>


<h1>CSS Tabs</h1>
<h2>Transitioning Between Variable Heights</h2>

<div class="container">

  <div class="demo-section">
    <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
  </div>

  <div class="tab-wrap">

    <!-- active tab on page load gets checked attribute -->
    <input type="radio" id="tab1" name="tabGroup1" class="tab" checked>
    <label for="tab1">Short</label>

    <input type="radio" id="tab2" name="tabGroup1" class="tab" checked>
    <label for="tab2">Medium</label>

    <input type="radio" id="tab3" name="tabGroup1" class="tab" checked>
    <label for="tab3">Long</label>

    <div class="tab__content">
      <h3>Short Section</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
    </div>

    <div class="tab__content">
      <h3>Medium Section</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>

      <p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>
    </div>

    <div class="tab__content">
      <h3>Long Section</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>

      <p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>

      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>

      <p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>
    </div>

  </div>

  <div class="demo-section">
    <p>Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Proin viverra, ligula sit amet ultrices semper, ligula arcu tristique sapien, a accumsan nisi mauris ac eros. Phasellus volutpat, metus eget
      egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Praesent nec nisl a purus blandit viverra. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>

    <p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>
  </div>

  <div class="tab-wrap">

    <input type="radio" id="tab4" name="tabGroup2" class="tab" checked>
    <label for="tab4">Apples</label>

    <input type="radio" id="tab5" name="tabGroup2" class="tab">
    <label for="tab5">Oranges</label>

    <input type="radio" id="tab6" name="tabGroup2" class="tab">
    <label for="tab6">Bananas</label>

    <input type="radio" id="tab7" name="tabGroup2" class="tab">
    <label for="tab7">Kiwis</label>

    <input type="radio" id="tab8" name="tabGroup2" class="tab">
    <label for="tab8">Tomatos</label>

    <div class="tab__content">
      <h3>Apples</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
    </div>

    <div class="tab__content">
      <h3>Oranges</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>

      <p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>
    </div>

    <div class="tab__content">
      <h3>Bananas</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
    </div>

    <div class="tab__content">
      <h3>Kiwis</h3>
      <p>Praesent nonummy mi in odio.</p>
    </div>

    <div class="tab__content">
      <h3>Tomatos</h3>
      <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum.</p>
    </div>

  </div>

  <div class="demo-section">
    <p>Etiam ut purus enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Pellentesque posuere. Etiam ut purus mattis mauris sodales aliquam. Praesent nec nisl a purus blandit viverra.</p>

    <p>Praesent nonummy mi in odio. Nullam accumsan lorem in dui. Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Nullam accumsan lorem in dui. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
  </div>

</div>
</body>
</html>