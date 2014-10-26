/**
 * Created by ND on 25.10.2014.
 */

var _windowCase, _questionId;



function keydown(e) {
    var e = window.event || e;

    if (e.keyCode == 27) {
        closePopupWindow();
    }
}

function setAttributes(questionId, windowCase) {
    _questionId = questionId;
    _windowCase = windowCase;

    console.log('questionId = ' + _questionId);
    console.log('windowCase = ' + _windowCase);
}

function getWindowCase() {
    return _windowCase;
}



function showPopupWindow() {

//    document.getElementById('questionId').setAttribute('value', _questionId);

    console.log(_questionId);
    document.getElementById('questionId').setAttribute('value', _questionId);
    console.log(document.getElementById('questionId'));

    document.getElementById('popupWindow').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}
function closePopupWindow() {
    document.getElementById('popupWindow').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}
