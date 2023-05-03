// Manages toggling the VFX of the buttons
(function () {
  "use strict";

  let handheld;

  let fxButtons = document.querySelector("#fx");
  let flutterTarget = document.querySelector("#flutter_target");

  let attribution = document.createElement("span");
  attribution.className = "imageAttribution";
  attribution.innerHTML = "Photo by <a href='https://unsplash.com/photos/x9WGMWwp1NM' rel='noopener noreferrer' target='_blank'>Nathana Rebouças</a> on Unsplash";

  // (Re)moves the flutterTarget inside a div#handheld.
  function handleHandHeld(fx) {
    resetRotation();
    if (!handheld) {
      handheld = document.createElement("div");
      handheld.id = "handheld";
      handheld.classList.add("hidden");
      // Inject before the flutterTarget
      flutterTarget.parentNode.insertBefore(handheld, flutterTarget);
      handheld.append(flutterTarget);
      handheld.append(attribution);
      window.setTimeout(function () {
        handheld.classList.remove("hidden");
      }, 100);
      // Disable all effects on the flutter container
      flutterTarget.className = "";
      setOtherFxEnabled(false);
    } else {
      handheld.classList.add("hidden");
      window.setTimeout(function () {
        handheld.parentNode.insertBefore(flutterTarget, handheld);
        handheld.remove();
        handheld = null;
      }, 210);
      setOtherFxEnabled(true);
    }
    window.requestAnimationFrame(function () {
      // Let the browser flush the DOM...
      flutterTarget.classList.toggle(fx);
    });
  }

  // Sets a rotation style on the flutterTarget (in degrees).
  function handleRotation(degrees) {
    flutterTarget.style.transform = `perspective(1000px) rotateY(${degrees}deg)`;
  }

  // Removes the inline style from the flutterTarget.
  function resetRotation() {
    flutterTarget.style = null;
  }

  // Enables/disables the buttons that are not compatible with the "handheld" mode.
  function setOtherFxEnabled(enabled) {
    fxButtons.querySelectorAll('input').forEach((btn) => {
      if (btn.dataset.fx != 'handheld') {
        btn.classList.toggle('disabled', !enabled);
      }
    });
  }

  // Handles clicks on the buttons inside #fx.
  fxButtons.addEventListener("click", (event) => {
    let fx = event.target.dataset.fx;
    if (fx === "handheld") {
      handleHandHeld(fx);
      return;
    }
    flutterTarget.classList.toggle(fx);
  });

  fxButtons.addEventListener("input", (event) => {
    if (event.target.id === "rotation") {
      flutterTarget.classList.toggle("spin", false);
      handleRotation(event.target.value);
    }
  })

})();
