import Typed from "typed.js";

const initTyped = () => {
  const element = document.querySelector(".typed-js");
  if (element) {
    new Typed(".typed-js", {
      strings: [
        "Help Your Pet Stay Busy",
        "Solution To Unexpected Travel",
        "To Socialize Your Pet",
        "Have Access To Outdoor Play Areas",
        "To Release Some Energy",
        "And More . . .",
      ],
      typeSpeed: 70,
      loop: true,
      loopCount: Infinity,
      showCursor: false,
    });
  }
};

export { initTyped };
