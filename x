let kerdesek = [];
let aktualisKerdesIndex = 0;
let pontszam = 0;
fetch('https://raw.githubusercontent.com/Emperor-Tomato-Ketchup/asd/main/kerdesek')
    .then(response => response.json())
    .then(data => {
        kerdesek = data;
    });
function startQuiz() {
    aktualisKerdesIndex = 0;
    pontszam = 0;
    mutatKovetkezoKerdest();
    document.getElementById('fooldal').style.display = 'none';
    document.getElementById('kerdesKartya').style.display = 'block';
    document.getElementById('eredmenyKartya').style.display = 'none';
}
function mutatKovetkezoKerdest() {
    if (aktualisKerdesIndex >= kerdesek.length) {
        mutatEredmenyt();
        return;
    }
    const aktualisKerdes = kerdesek[aktualisKerdesIndex];
    document.getElementById('kerdes').textContent = aktualisKerdes.kerdes;
    document.getElementById('valasz').textContent = aktualisKerdes.valasz;
    document.getElementById('valasz').style.display = 'none';
    document.getElementById('valaszGomb').style.display = 'inline-block';
    document.getElementById('tudomGomb').style.display = 'none';
    document.getElementById	('nemTudomGomb').style.display = 'none';
}
function mutasdValaszt() {
document.getElementById('valasz').style.display = 'block';
document.getElementById('valaszGomb').style.display = 'none';
document.getElementById('tudomGomb').style.display = 'inline-block';
document.getElementById('nemTudomGomb').style.display = 'inline-block';
}
function kovetkezoKerdes(helyes) {
if (helyes) {
    pontszam++;
}
aktualisKerdesIndex++;
mutatKovetkezoKerdest();
}
function mutatEredmenyt() {
document.getElementById('kerdesKartya').style.display = 'none';
document.getElementById('eredmenyKartya').style.display = 'block';
document.getElementById('pontszam').textContent = 'Pontszám: ' + pontszam;
}
function visszaAFooldalra() {
window.location.href = "../landing - oldal/";
}
function mutatKovetkezoKerdest() {
if (aktualisKerdesIndex >= kerdesek.length) {
mutatEredmenyt();
return;
}
const aktualisKerdes = kerdesek[aktualisKerdesIndex];
document.getElementById('kerdes').textContent = aktualisKerdes.kerdes;
document.getElementById('valasz').textContent = aktualisKerdes.valasz;
const kerdesSorszamElem = document.getElementById('kerdesSzama');
kerdesSorszamElem.textContent = (aktualisKerdesIndex + 1) + '/' + kerdesek.length;
document.getElementById('valasz').style.display = 'none';
document.getElementById('valaszGomb').style.display = 'inline-block';
document.getElementById('tudomGomb').style.display = 'none';
document.getElementById('nemTudomGomb').style.display = 'none';
}
