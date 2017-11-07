// hi there

var wordlist = new Array();
var font = "Garamond";

function f(v)
{
    font = v;
}

function text(v)
{

    wordlist = v.split(" ");
    var numlines = Math.ceil(Math.sqrt(wordlist.length));
    var perline = Math.ceil(wordlist.length/numlines);

    //post(wordlist.length + " " + numlines + "\n");

    outlet(0, "frgb", 255, 255, 255);
    outlet(0, "brgb", 0, 0, 0);
    outlet(0, "clear");

    var vertical = 0;
    for(var i = 0;i<numlines;i++)
    {
        var theline = "";
        for(var j = i*perline;j< (i+1)*perline;j++)
        {
            if(j<wordlist.length) theline+=wordlist[j]+" ";
        }
        //var size = 300/numlines;
        var size = 750/theline.length;
        outlet(0, "font", font, size);
        vertical+=size/1.5;
        outlet(0, "moveto", (size/2)*1.3333, vertical);
        outlet(0, "write", theline);
    }
    outlet(0, "bang");


}