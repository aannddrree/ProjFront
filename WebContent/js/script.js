const urlBase = 'http://localhost:8080/ProjFront/';
var conteudo = document.getElementById("conteudo")

function mostrarDados(){
	let nome = document.getElementById("nome").value;
	let mensagem = document.getElementById("mensagem").value;
	let url = urlBase + 'ChatController?nome=' + nome + "&mensagem=" + mensagem;
	loadDoc(url);
}


function loadDoc(url) {
    this.getJSON(url, function(err, data) {
    	//
    });
    document.location.reload(true);
}

var getJSON = function(url, callback) {
    var xhr = new XMLHttpRequest(); 
    
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function() {
      var status = xhr.status;
      if (status === 200) {
        callback(null, xhr.response);
      } else {
        callback(status, xhr.response);
      }
    };
    xhr.send();
};