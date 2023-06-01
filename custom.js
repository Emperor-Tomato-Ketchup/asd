    
        var navbarToggle = document.getElementById("navbar-toggle");
        var navbarCollapse = document.getElementById("navbar-collapse");
        var navToggleIcon = document.querySelector('.nav-toggle-icon');
        var isCollapsed = true;
        navbarToggle.addEventListener("click", function () {
          if (isCollapsed) {
            navbarCollapse.classList.add("collapse");
            navToggleIcon.classList.add("animate");
          } else {
            navbarCollapse.classList.remove("collapse");
            navToggleIcon.classList.remove("animate");
          }
          isCollapsed = !isCollapsed;
        });
        var navMenuItems = navbarCollapse.getElementsByTagName("a");
        for (var i = 0; i < navMenuItems.length; i++) {
          navMenuItems[i].addEventListener("click", function () {
            navbarCollapse.classList.add("collapse");
            navToggleIcon.classList.remove("animate");
            isCollapsed = true;
          });
        }
      document.addEventListener('DOMContentLoaded', function() {
      var navToggle = document.querySelector('.nav-toggle');
      var navToggleIcon = document.querySelector('.nav-toggle-icon');
    
      navToggle.addEventListener('click', function() {
        navToggleIcon.classList.toggle('animate');
      });
    });
  const sun = "https://www.uplooder.net/img/image/55/7aa9993fc291bc170abea048589896cf/sun.svg";
  const moon = "https://www.uplooder.net/img/image/2/addf703a24a12d030968858e0879b11e/moon.svg";
  var theme;
  const root = document.querySelector(":root");
  const container = document.getElementsByClassName("theme-container")[0];
  const themeIcon = document.getElementById("theme-icon");
  container.addEventListener("click", setTheme);
  function getInitialTheme() {
    if (root.classList.contains("dark-mode")) {
      return "dark";
    }
    return "light";
  }
  function setTheme() {
    if (theme === "light") {
      setDark();
      theme = "dark";
    } else {
      setLight();
      theme = "light";
    }
  }
  function setLight() {
    root.classList.remove("dark-mode");
    container.classList.remove("shadow-dark");
    setTimeout(() => {
      container.classList.add("shadow-light");
      themeIcon.classList.remove("change");
    }, 0);
    themeIcon.classList.add("change");
    themeIcon.src = sun;
  }
  function setDark() {
    root.classList.add("dark-mode");
    container.classList.remove("shadow-light");
    setTimeout(() => {
      container.classList.add("shadow-dark");
      themeIcon.classList.remove("change");
    }, 0);
    themeIcon.classList.add("change");
    themeIcon.src = moon;
  }
  theme = getInitialTheme();
  setTheme();
