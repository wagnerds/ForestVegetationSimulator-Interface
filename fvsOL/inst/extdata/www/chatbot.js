// Client side of the fvsOL local help assistant (see R/chatbot.R).
// The assistant is a panel docked to the right edge of the window; when it is
// open the page body gets the class "fvschat-docked", which narrows the page
// so nothing is covered. No network requests are made other than the normal
// Shiny connection.
(function () {
  function el(id) { return document.getElementById(id); }

  window.fvsChatScroll = function (id) {
    setTimeout(function () {
      var log = el(id + "-log");
      if (log) log.scrollTop = log.scrollHeight;
    }, 60);
  };

  window.fvsChatToggle = function (id) {
    var p = el(id + "-panel");
    if (!p) return;
    var open = p.style.display === "none";
    p.style.display = open ? "flex" : "none";
    document.body.classList.toggle("fvschat-docked", open);
    var tg = el(id + "-toggle");
    if (tg) tg.style.display = open ? "none" : "";
    // let Shiny re-render plots/maps at the new page width
    setTimeout(function () { window.dispatchEvent(new Event("resize")); }, 50);
    if (open) {
      if (window.Shiny) Shiny.setInputValue(id + "-opened", true);
      var t = el(id + "-q");
      if (t) t.focus();
      fvsChatScroll(id);
    }
  };

  window.fvsChatSend = function (id) {
    var t = el(id + "-q");
    if (!t) return;
    var q = t.value.trim();
    if (!q || !window.Shiny) return;
    t.value = "";
    var pend = el(id + "-pending");
    if (pend) {
      pend.innerHTML = "";
      var u = document.createElement("div");
      u.className = "fvschat-msg user";
      u.textContent = q;
      var b = document.createElement("div");
      b.className = "fvschat-msg bot pending";
      b.textContent = "Searching the documentation…";
      pend.appendChild(u);
      pend.appendChild(b);
    }
    fvsChatScroll(id);
    Shiny.setInputValue(id + "-ask", { q: q, n: Date.now() }, { priority: "event" });
  };

  window.fvsChatClear = function (id) {
    var pend = el(id + "-pending");
    if (pend) pend.innerHTML = "";
    if (window.Shiny) Shiny.setInputValue(id + "-clear", Date.now(), { priority: "event" });
  };

  document.addEventListener("keydown", function (e) {
    var t = e.target;
    if (t && t.classList && t.classList.contains("fvschat-q") &&
        e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      fvsChatSend(t.getAttribute("data-chat-id"));
    }
  });

  function register() {
    Shiny.addCustomMessageHandler("fvsChatDone", function (id) {
      setTimeout(function () {
        var pend = el(id + "-pending");
        if (pend) pend.innerHTML = "";
        fvsChatScroll(id);
      }, 30);
    });
  }
  if (window.Shiny && Shiny.addCustomMessageHandler) register();
  else document.addEventListener("DOMContentLoaded", register);
})();
