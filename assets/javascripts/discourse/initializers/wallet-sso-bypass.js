export default {
  name: "wallet-sso-bypass",
  initialize() {
    document.addEventListener("click", (ev) => {
      const el = ev.target.closest && ev.target.closest(".custom-sso-btn");
      if (!el) return;
      // Force a full navigation (works even if Turbo intercepts)
      window.location.assign(el.href);
      ev.preventDefault();
    }, true); // capture phase to catch Turbo early
  }
};
