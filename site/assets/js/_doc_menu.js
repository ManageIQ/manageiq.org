// Menu

// Open all down to active link
miq.open_active = () => $("li.active").parents("li").each((i, elem) => $(elem).addClass("menu-open"));

$(document).ready(function() {
  if ($(".menu-parent").length > 0) {
    miq.open_active();

    $(document).on("click", ".menu-parent > a", function(e) {
      $(this).parent("li.menu-parent").toggleClass("menu-open");
      e.preventDefault();
    });
  }
});
