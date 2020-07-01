const solarBackgroundTheme = () => {
  const button = document.querySelector("#clickme");
  const moon = document.querySelector('.moon');
  const clouds = document.querySelector('.clouds');
  const twinkling = document.querySelector('.twinkling');
  const theme = document.querySelector('.stars');

  button.addEventListener('click', (event) => {
    moon.classList.remove('active');
    clouds.classList.remove('active');
    twinkling.classList.remove('active');
    theme.classList.remove('active');
  });
};

export { solarBackgroundTheme };

const lunarBackgroundTheme = () => {
  const button = document.querySelector("#activate");
  const moon = document.querySelector('.moon');
  const clouds = document.querySelector('.clouds');
  const twinkling = document.querySelector('.twinkling');
  const theme = document.querySelector('.stars');

  button.addEventListener('click', (event) => {
    moon.classList.add('active');
    clouds.classList.add('active');
    twinkling.classList.add('active');
    theme.classList.add('active');
  });
};

export { lunarBackgroundTheme };