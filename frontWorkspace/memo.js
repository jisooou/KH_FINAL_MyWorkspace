const memoBtn = document.querySelector('.saveBtn');
const memoContent = document.querySelector('.memo-content');

// 페이지 로드 시 로컬 스토리지에서 메모를 불러옴
document.addEventListener('DOMContentLoaded', () => {
  const savedMemo = localStorage.getItem('memo');
  if (savedMemo) {
    memoContent.value = savedMemo;
  }
});

// 저장 버튼 클릭 시 메모를 로컬 스토리지에 저장
memoBtn.addEventListener('click', () => {
  localStorage.setItem('memo', memoContent.value);
  alert('Memo saved!');
});
