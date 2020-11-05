<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
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
@import url('https://fonts.googleapis.com/css?family=Lato:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i');
 * {
	 font-family: Lato, sans-serif;
	 box-sizing: border-box;
}
 body {
	 background-image: linear-gradient(to top, #37ecba 0%, #72afd3 100%);
}
 .container {
	 max-width: 948px;
	 margin: 4em auto;
	 padding: 4em;
	 background: #fff;
	 border-radius: 1em;
}
 section.cards {
	 margin: 0 auto;
	 display: grid;
	 grid-auto-flow: row dense;
	 grid-template-columns: repeat(3, 256px);
	 grid-template-rows: repeat(12, 196px);
	 grid-gap: 16px;
}
 .card {
	 display: flex;
	 border: 1px solid rgba(0, 0, 0, 0.1);
	 transition: all 0.25s ease;
}
 .card:hover {
	 transform: scale(1.05);
}
 .vertical {
	 flex-direction: column;
	 grid-row: span 2;
	 grid-column: span 1;
}
 .horizontal {
	 flex-direction: row;
	 grid-row: span 1;
	 grid-column: span 2;
}
 .reverse-horizontal {
	 flex-direction: row-reverse;
	 grid-row: span 1;
	 grid-column: span 2;
}
 .horizontal .card__img, .reverse-horizontal .card__img {
	 height: 100%;
}
 .vertical .card__img {
	 width: 100%;
}
 .card__content {
	 padding: 16px;
}
 .card__type {
	 font-variant: small-caps;
	 letter-spacing: 2px;
	 opacity: 0.9;
	 color: palevioletred;
	 padding-bottom: 0.5em;
}
 .card__title {
	 font-size: 18px;
	 opacity: 0.8;
	 font-weight: 700;
	 padding-bottom: 0.5em;
	 transition: all 0.25s ease;
}
 .card__date {
	 font-size: 14px;
	 padding-bottom: 0.5em;
	 opacity: 0.3;
}
 .card__time-to-read {
	 font-style: italic;
}
 .card__excerpt {
	 font-size: 16px;
	 padding-bottom: 0.5em;
}
 .card__tags {
	 margin-top: auto;
}
 .tag {
	 display: inline;
	 background: papayawhip;
	 padding: 0.5em;
	 border-radius: 0.5em;
	 font-size: 12px;
	 color: palevioletred;
	 user-select: none;
	 cursor: pointer;
}
 .tag:hover {
	 background: #ffe5bc;
}
 .tag:active {
	 background: #ffdca2;
}
 .tag i {
	 margin-right: 4px;
}
 
</style>
</head>
<body>
<div class="container">
  <h1> Blog </h1>
  <p> This is my blog! </h1>

  <section class="cards">
    <article class="horizontal card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=321" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; <span class="card__time-to-read">5 min read</span></div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="vertical card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=990" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="vertical card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=123" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="vertical card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=421" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="horizontal card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=424" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="vertical card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=721" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="vertical card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=426" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
    <article class="reverse-horizontal card">
      <img class="card__img" src="https://picsum.photos/256/196/?image=161" class="card__image">
      <div class="card__content">
        <div class="card__type">article</div>
        <div class="card__title">
          Test Post: Electric Boogaloo
        </div>
        <div class="card__date">14 March 2011 &middot; 5 min read</div>
        <div class="card__excerpt">
          This is a test article, in a perculiar context, to see whether grid and flexbox works to make a blog...
        </div>
        <div class="card__tags">
          <div class="tag"><i class="fa fa-tag"></i>test</div>
          <div class="tag"><i class="fa fa-tag"></i>test</div>
        </div>
      </div>
    </article>
  </section>
</div>
</body>
</html>