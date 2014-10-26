/**
 * Created by ND on 23.10.2014.
 */
//$(document).ready(function(){
//    $('#overlay').css({opacity: 0.5})
//
//    $('#ref').click(function(){
//        alert('Hello from ref!');
//        console.log("Hello");
//    });
//
//
//
//});



//console.log(getComputedCSSPropertyValue(document.getElementById('popup_win'), 'display'));

function keydown(e) {
    var e = window.event || e;

    if (e.keyCode == 27) {
        closePopup();
    }
}

//console.log(window.event.keyCode);


function getComputedCSSPropertyValue(element, CSSProperty) {
    return (typeof getComputedStyle == "undefined" ? element.currentStyle
        : getComputedStyle(element, null))[CSSProperty];
}


function showPopup() {
    document.getElementById('popupWindow').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}

function closePopup() {
    document.getElementById('popupWindow').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}
