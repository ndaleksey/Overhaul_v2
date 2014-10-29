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

function setAttributes(questionId, windowCase, srcElemName, dstElemName) {
    alert('setAttributes');
//    _questionId = questionId;
//    _windowCase = windowCase;

//    console.log(srcElemName);
//    console.log(dstElemName);

//    if (srcElemName != null && dstElemName != null) {
//        console.log('inside condition');
//        document.getElementById(dstElemName).innerText = document.getElementById(srcElemName).innerText;
//        console.log(document.getElementById(dstElemName).innerText);
//        console.log(document.getElementById(srcElemName).innerText);
//    }
}

function getWindowCase() {
    return _windowCase;
}



function showPopupWindow() {

//    document.getElementById('questionId').setAttribute('value', _questionId);

    document.getElementById('questionId').setAttribute('value', _questionId);

    document.getElementById('popupWindow').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}
function closePopupWindow() {
    document.getElementById('popupWindow').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}
