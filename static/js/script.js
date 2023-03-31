function mostrarFormulario() {
    var disciplina = document.getElementById("disciplina").value;
        if (disciplina == "matematica") {
            document.getElementById("compmat").style.display = "block";
            document.getElementById("compbio").style.display = "none";
            document.getElementById("compport").style.display = "none";

        } else if (disciplina == "biologia") {
            document.getElementById("compmat").style.display = "none";
            document.getElementById("compbio").style.display = "block";
            document.getElementById("compport").style.display = "none";
        } else {
            document.getElementById("compmat").style.display = "none";
            document.getElementById("compbio").style.display = "none";
            document.getElementById("compport").style.display = "block";
        }   
}
