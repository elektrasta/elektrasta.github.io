import 'dart:html';

void main() {
  window.onScroll.listen((_) {
    var projects = querySelector("#projects");
    var offsetTop = projects.offsetTop;
    var scrollTop = window.scrollY;

    if (scrollTop > offsetTop) {
      projects.classes.add("fixed");
    } else {
      projects.classes.remove("fixed");
    }
  });
}
