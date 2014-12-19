/**
 * Created by ND on 25.10.2014.
 */

var _questionId;

function keydown(e) {
    var e = window.event || e;

    if (e.keyCode == 27) {
        closePopupWindow();
        closeConfirmWindow();
    }
}

function setAttributes(questionId, componentName, message) {
    _questionId = questionId;
    console.log(message);

    if (componentName != null && message != null) {
        var text = message;
        console.log('length = ' + text.length);
        console.log(text.replace(/&apos;/g, "'"));
        document.getElementById(componentName).innerText = message.replace(/&apos;/g, "'");
    }
}

function showConfirmWindow() {
    document.getElementById('questionIdDelete').setAttribute('value', _questionId);
    document.getElementById('confirmWindow').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}

function closeConfirmWindow() {
    document.getElementById('confirmWindow').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}

function showPopupWindow() {
    console.log(document.getElementsByName('questionId'));
    document.getElementById('questionId').setAttribute('value', _questionId);

    document.getElementById('popupWindow').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}
function closePopupWindow() {
    document.getElementById('popupWindow').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}
