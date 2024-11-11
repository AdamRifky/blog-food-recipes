const USERID = {
  name: null,
  message: null,
  date: null,
};

const userComment = document.querySelector(".usercomment");
const publishBtn = document.querySelector("#publish");
const comments = document.querySelector(".comments");
const userName = document.querySelector(".user");
const nameError = document.getElementById("nameError");
const commentError = document.getElementById("commentError");

function validateNameAndComment() {
  let isValid = true;

  if (!userName.value) {
    nameError.style.display = "block";
    isValid = false;
  } else {
    nameError.style.display = "none";
  }

  if (!userComment.value) {
    commentError.style.display = "block";
    isValid = false;
  } else {
    commentError.style.display = "none";
  }

  return isValid;
}

publishBtn.addEventListener("click", () => {
  if (validateNameAndComment()) {
    addPost();
  }
});

function addPost() {
  USERID.name = userName.value;
  USERID.message = userComment.value;
  USERID.date = new Date().toLocaleString();

  let published = `
<div class="parents flex py-5">
      <img src="image/user.png" alt="foto user" class="w-10 h-10 object-cover" />
      <div class="pl-4">
        <div class="flex flex-col">
          <h2 class="text-base font-bold">${USERID.name}</h2>
          <p class="text-gray-600 text-xs">${USERID.date}</p>
        </div>
        <p class="pt-2 text-gray-700 mb-3">${USERID.message}</p>
      </div>
</div>
`;

  comments.innerHTML += published;
  userComment.value = "";
  userName.value = "";

  let commentsNum = document.querySelectorAll(".parents").length;
  document.getElementById("comment").textContent = commentsNum;
}
