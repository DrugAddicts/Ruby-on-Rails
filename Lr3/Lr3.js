function print(elem,s){
	
if (elem.children.length !=0){
var d = elem.children;
var len = d.length;
var res = document.getElementById("result");
	s += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
for (var i = 0; i< len; i++) {
res.innerHTML = res.innerHTML + '<br/>' + '<br/>' + s + d[i].tagName;
console.log(d[i].tagName);
 if (d[i].id != "result") print(d[i],s);
	}
	 s = s.replace("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;","");
	}
}

print(document.documentElement,"");