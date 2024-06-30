// 현재 시각 가지고 오는 법 
// html에서 시간 넣는 부분(div) id를 clock으로 하였음. 그외에는 전부 JS에서 처리.
document.addEventListener("DOMContentLoaded", () => {
    const clock = document.getElementById("clock");

    function getClock() {
        const date = new Date();
        const hour = String(date.getHours()).padStart(2, "0");
        const minutes = String(date.getMinutes()).padStart(2, "0");
        const seconds = String(date.getSeconds()).padStart(2, "0");
        clock.innerText = `${hour}:${minutes}:${seconds}`;
    }
    
    getClock();
    setInterval(getClock, 1000);
});