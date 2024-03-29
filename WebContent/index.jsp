<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Controller.BeanIndex"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="Model.prodotto"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<title>homepage</title>
</head>
<body>
<jsp:include page="header.jsp" />





<div class="alert" id="myAlert">
	<span><i class="fas fa-check-square"></i></span>
	<span class="msg-alert">Prodotto aggiunto al carrello</span>
</div>

<section id="off">
	<h2>Le nostre Offerte</h2>
<div class="off-container">
    <%
        // Crea un'istanza del JavaBean
        BeanIndex bean2 = new BeanIndex();

        // Recupera i dati dal JavaBean
        ArrayList<prodotto> off = bean2.getOff();

        // Utilizza i dati nella pagina JSP
        if (off != null) {
            for (prodotto o : off) {
    %>	
		<div class="offerta">
		<form action="prodotto.jsp" method="post">
    <input type="hidden" name="marca" value="<%= o.getMarca() %>">
    <input type="hidden" name="nome" value="<%= o.getNome() %>">
    <input type="hidden" name="costo" value="<%= o.getCosto() %>">
    <input type="hidden" name="sconto" value="<%= o.getSconto() %>">
    <input type="hidden" name="immagine" value="<%= o.getImmagine() %>">
    <input type="hidden" name="id" value="<%= o.getId() %>">
    <input type="hidden" name="descrizione" value="<%= o.getDescrizione() %>">
    <button type="submit" class="invisibile">
        <img src="immagini/<%= o.getImmagine() %>" alt="">
    </button>
</form>
	
    

		

				<div class="descr2">
					<span><%= o.getMarca() %></span>
					<h5><%= o.getNome() %></h5>
					<h4><%= o.getCosto() %>€</h4>
					<h4><del style="color: red;"><%= o.getSconto() %>€</del></h4>
				</div>
				<form id="aggiungiAlCarrello_<%= o.getId() %>" action="aggiungi.jsp" method="post">
				<input type="hidden" name="marca" value="<%= o.getMarca() %>">
    <input type="hidden" name="nome" value="<%= o.getNome() %>">
    <input type="hidden" name="costo" value="<%= o.getCosto() %>">
    <input type="hidden" name="immagine" value="<%= o.getImmagine() %>">
    <input type="hidden" name="id" value="<%= o.getId() %>">
    <input type="hidden" name="descrizione" value="<%= o.getDescrizione() %>">
     <input type="hidden" name="unit" value=1>
	<ion-icon name="cart-outline" class="carrello2" onclick="aggiungi('<%= o.getId() %>')"></ion-icon>

</form>
				
		</div>
		
    <%
            }
        } else {
    %>
            <li>
                <font color="red">
                    <h3 id="not">Errore, ricaricare la pagina</h3>
                </font>
            </li>
    <%
        }
    %>

	
		
		
		</div>
</section>


	<section id="prod">
	<h2>I nostri prodotti PC</h2>
<div class="pro-container">
    <%
        // Crea un'istanza del JavaBean
        BeanIndex bean = new BeanIndex();

        // Recupera i dati dal JavaBean
        ArrayList<prodotto> pro = bean.getPc();

        // Utilizza i dati nella pagina JSP
        if (pro != null) {
            for (prodotto p : pro) {
    %>	
		<div class="prodotto">
		<form action="prodotto.jsp" method="post">
    <input type="hidden" name="marca" value="<%= p.getMarca() %>">
    <input type="hidden" name="nome" value="<%= p.getNome() %>">
    <input type="hidden" name="costo" value="<%= p.getCosto() %>">
    <input type="hidden" name="sconto" value="0">
    <input type="hidden" name="immagine" value="<%= p.getImmagine() %>">
    <input type="hidden" name="id" value="<%= p.getId() %>">
    <input type="hidden" name="descrizione" value="<%= p.getDescrizione() %>">
    <button type="submit" class="invisibile">
        <img src="immagini/<%= p.getImmagine() %>" alt="">
    </button>
</form>
				<div class="descr">
					<span><%= p.getMarca() %></span>
					<h5><%= p.getNome() %></h5>
					<h4><%= p.getCosto() %>€</h4>
					
				</div>
				
				<form id="aggiungiAlCarrello_<%= p.getId() %>" action="aggiungi.jsp" method="post">
				<input type="hidden" name="marca" value="<%= p.getMarca() %>">
    <input type="hidden" name="nome" value="<%= p.getNome() %>">
    <input type="hidden" name="costo" value="<%= p.getCosto() %>">
    <input type="hidden" name="immagine" value="<%= p.getImmagine() %>">
    <input type="hidden" name="id" value="<%= p.getId() %>">
    <input type="hidden" name="descrizione" value="<%= p.getDescrizione() %>">
     <input type="hidden" name="unit" value=1>
	<ion-icon name="cart-outline" class="carrello" onclick="aggiungi('<%= p.getId() %>')"></ion-icon>

</form>
				
		</div>
		
    <%
            }
        } else {
    %>
            <li>
                <font color="red">
                    <h3 id="not">Errore, ricaricare la pagina</h3>
                </font>
            </li>
    <%
        }
    %>

	
		
		
		</div>
</section>


	<section id="cons">
	<h2>Le Nostre Console</h2>
	<h3>XBOX</h3>
		<div class="con-container">
		<%
        // Crea un'istanza del JavaBean
        BeanIndex bean1 = new BeanIndex();

        // Recupera i dati dal JavaBean
        ArrayList<prodotto> cons = bean.getX();

        // Utilizza i dati nella pagina JSP
        if (cons != null) {
            for (prodotto c : cons) {
    %>	
		<div class="console">
		 <form action="prodotto.jsp" method="post">
    <input type="hidden" name="marca" value="<%= c.getMarca() %>">
    <input type="hidden" name="nome" value="<%= c.getNome() %>">
    <input type="hidden" name="costo" value="<%= c.getCosto() %>">
    <input type="hidden" name="sconto" value="0">
    <input type="hidden" name="immagine" value="<%= c.getImmagine() %>">
    <input type="hidden" name="id" value="<%= c.getId() %>">
    <input type="hidden" name="descrizione" value="<%= c.getDescrizione() %>">
    <button type="submit" class="invisibile">
        <img src="immagini/<%= c.getImmagine() %>" alt="">
    </button>
</form>
		

				<div class="descr1">
					<span><%= c.getMarca() %></span>
					<h5><%= c.getNome() %></h5>
					<h4><%= c.getCosto() %>€</h4>
				</div>
				<form id="aggiungiAlCarrello_<%= c.getId() %>" action="aggiungi.jsp" method="post">
				<input type="hidden" name="marca" value="<%= c.getMarca() %>">
    <input type="hidden" name="nome" value="<%= c.getNome() %>">
    <input type="hidden" name="costo" value="<%= c.getCosto() %>">
    <input type="hidden" name="immagine" value="<%= c.getImmagine() %>">
    <input type="hidden" name="id" value="<%= c.getId() %>">
    <input type="hidden" name="descrizione" value="<%= c.getDescrizione() %>">
     <input type="hidden" name="unit" value=1>
	<ion-icon name="cart-outline" class="carrello1" onclick="aggiungi('<%= c.getId() %>')"></ion-icon>

</form>
				
				
		</div>
		
    <%
            }
        } else {
    %>
            <li>
                <font color="red">
                    <h3 id="not">Errore, ricaricare la pagina</h3>
                </font>
            </li>
    <%
        }
    %>
		</div>
</section>





 
<jsp:include page="footer.jsp" />
</body>
</html>