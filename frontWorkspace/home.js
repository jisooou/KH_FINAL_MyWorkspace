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


// -----------------메모장 JS--------------------------
const memoBtn = document.getElementById('save-button');
const clearBtn = document.getElementById('clear-button');
const memoContent = document.getElementById('memo-content');

// 페이지 로드 시 로컬 스토리지에서 메모를 불러온다.
document.addEventListener('DOMContentLoaded', () => {
  const savedMemo = localStorage.getItem('memo');
  if (savedMemo) {
    memoContent.value = savedMemo;
  }
});

// 저장 버튼 클릭 시 메모를 로컬 스토리지에 저장한다.
memoBtn.addEventListener('click', () => {
  localStorage.setItem('memo', memoContent.value);
  alert('저장 완료!');
});

// 초기화 버튼 클릭 시 메모 내용을 초기화하고 로컬 스토리지에서 삭제
clearBtn.addEventListener('click', () => {
    memoContent.value = '';
    localStorage.removeItem('memo', memoContent.value);
});