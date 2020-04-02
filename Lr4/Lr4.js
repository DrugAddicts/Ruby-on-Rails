var d = document;
d.getElementById('name').value = '';
d.getElementById('cost').value = '';
d.getElementById('itog').value = 0 + " руб";
function add() {
	if ((d.getElementById('name').value == '') || (d.getElementById('cost').value == '')) alert('Введены пустые поля');
	else
	{var table = d.getElementById('tab1');
	var tr1 = d.createElement('tr'); 
	var td1 = d.createElement('td'); 
	var but = d.createElement('input');
	but.type = 'button';
	but.value = "Добавить";
	but.id = 'buto1';
	but.setAttribute("onclick", "tran(this)");
	td1.innerHTML = d.getElementById('name').value; 
	var td2 = d.createElement('td'); 
	td2.setAttribute("onmouseenter", "col(this)");
	td2.setAttribute("onmouseout", "col2(this)");
	td2.innerHTML = d.getElementById('cost').value;	
	tr1.appendChild(td1);
	tr1.appendChild(td2);
	tr1.appendChild(but);
	tab1.appendChild(tr1);
	d.getElementById('name').value = '';
	d.getElementById('cost').value = '';
	d.getElementById('itog').value = '';
	}
}
function math() {
	var tabl = d.getElementById('tab2');
	var t = tabl.children;
	var j; var sum = 0;
	for (var i = 1; i < t.length; i++) {
		j = t[i].children;
		sum = sum + j[1].innerHTML * j[2].innerHTML;
	}
	d.getElementById('itog').value = sum + " руб";
}
function col(num) {
 num.style.backgroundColor = "#FFE4C4";
}
 function col2(num) {
 num.style.backgroundColor = "#7FFFD4";
}
 function col3(num) {
 num.style.backgroundColor = "aqua";
}
function tran(num)
{
	var i = num.parentNode;
	var j = i.children;
	var name = j[0].innerHTML;
	var cost = j[1].innerHTML;
	var tabl = d.getElementById('tab2');
	var t = tabl.children;
	var u; var ch = 0;
	for (var p = 1; p < t.length; p++){
		u = t[p].children;
		if (u[0].innerHTML == name) {u[2].innerHTML = Number(u[2].innerHTML) + 1; ch++; break;}
	}
	if (ch == 0) {
	var row = d.createElement('TR');
    var td1 = d.createElement('TD');
	var td2 = d.createElement('TD');
	var td3 = d.createElement('TD');
	td2.setAttribute("onmouseenter", "col(this)");
	td2.setAttribute("onmouseout", "col3(this)");
	td3.innerHTML = 1;
	td1.innerHTML = name;
	td2.innerHTML = cost;
    row.appendChild(td1);
    row.appendChild(td2);
	row.appendChild(td3);
	tabl.appendChild(row);}
} 
d.getElementById('itog').value = 0 + " руб";