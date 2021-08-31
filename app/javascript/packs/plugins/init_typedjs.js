import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: ['Love Making', 'Smellin eachother', 'Ear Biting', 'Woof Woof time', 'Food Sharing', 'Running Around', 'And More . . .'],
      typeSpeed: 100,
      loop: true,
      loopCount: Infinity,
      showCursor: false
    });
  }
};

export { initTyped };
