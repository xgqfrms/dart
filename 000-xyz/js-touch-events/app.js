"use strict";

/**
 *
 * @author xgqfrms
 * @license MIT
 * @copyright xgqfrms
 * @created 2019-01-01
 *
 * @description touchApp
 * @augments
 * @example
 *
 */

function load() {
    document.addEventListener("touchstart", touch, false);
    document.addEventListener("touchmove", touch, false);
    document.addEventListener("touchend", touch, false);
    function touch(event) {
        let event = event || window.event;
        let oInp = document.getElementById("inp");
        switch (event.type) {
            case "touchstart":
                oInp.innerHTML = "Touch started (" + event.touches[0].clientX + "," + event.touches[0].clientY + ")";
                break;
            case "touchend":
                oInp.innerHTML = "<br>Touch end (" + event.changedTouches[0].clientX + "," + event.changedTouches[0].clientY + ")";
                break;
            case "touchmove":
                event.preventDefault();
                oInp.innerHTML = "<br>Touch moved (" + event.touches[0].clientX + "," + event.touches[0].clientY + ")";
            break;
        }
    }
}

window.addEventListener("load", load, false);



// const touchApp = (datas = [], debug = false) => {
//     let result = ``;
//     // do something...
//     return result;
// };

// export default touchApp;

// export {
//     touchApp,
// };
