//@+leo-ver=5-thin
//@+node:caminhante.20210513092443.1: * @file 0002.c
//@@language c
//@@tabwidth -2
//@+others
//@+node:caminhante.20210513084915.1: ** /includes
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "cclasses.h"
//@+node:caminhante.20200718232148.1: ** /project
//@+at
// type geometry interface {
//     area() float64
//     perim() float64
// }
// ----
// type rect struct {
//     width, height float64
// }
// func (r rect) area() float64 {
//     return r.width * r.height
// }
// func (r rect) perim() float64 {
//     return 2*r.width + 2*r.height
// }
// ----
// type circle struct {
//     radius float64
// }
// func (c circle) area() float64 {
//     return math.Pi * c.radius * c.radius
// }
// func (c circle) perim() float64 {
//     return 2 * math.Pi * c.radius
// }
//@@c
//@+others
//@+node:knoppix.20191220133429.1: *3* Interfaces
//@+others
//@+node:caminhante.20210513094117.1: *4* Geometry
#define Type$Geometry(_) \
  _(area) \
  _(perim)
define_type(Geometry);
define_property(Geometry,area);
define_property(Geometry,perim);
//@+node:caminhante.20210513094125.1: *4* Rect
#define Type$Rect(_) \
  _(new)
define_type(Rect);
#define Rect$new(_) \
  _(double,width) \
  _(double,height)
define_message(Rect,new);
//@+node:caminhante.20210513094133.1: *4* Circle
#define Type$Circle(_) \
  _(new)
define_type(Circle);
#define Circle$new(_) \
  _(double,radius)
define_message(Circle,new);
//@-others
//@+node:knoppix.20191220133433.1: *3* Implementations
//@+others
//@+node:caminhante.20210206110212.1: *4* Rect
struct rect {
  double w;
  double h;
};
define_class(SimpleRect) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Rect)) { return true; }
  if (is_method(Rect,new)) {
    struct rect *r = allocate(1,struct rect);
    r->w = cast_msg(Rect,new)->width;
    r->h = cast_msg(Rect,new)->height;
    mutate_obj(r);
    return true;
  }
  if (me && me->_obj != NULL) {
    double *ret = mutretptr(double);
    objptr(rect) r = cast_obj(rect);
    if (is_method(Geometry,area)) {
      *ret = r->w * r->h;
      return true;
    }
    if (is_method(Geometry,perim)) {
      *ret = r->w*2 + r->h*2;
      return true;
    }
  }
  return false;
}
//@+node:caminhante.20210206110222.1: *4* Circle
struct circle {
  double r;
};
define_class(SimpleCircle) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Circle)) { return true; }
  if (is_method(Circle,new)) {
    struct circle *c = allocate(1,struct circle);
    c->r = cast_msg(Circle,new)->radius;
    mutate_obj(c);
    return true;
  }
  if (me && me->_obj != NULL) {
    double *ret = mutretptr(double);
    objptr(circle) c = cast_obj(circle);
    if (is_method(Geometry,area)) {
      *ret = 3.14 * c->r * c->r;
      return true;
    }
    if (is_method(Geometry,perim)) {
      *ret = 2.0 * 3.14 * c->r;
      return true;
    }
  }
  return false;
}
//@-others
//@-others
//@+node:caminhante.20210513092746.1: ** void tap_assert (bool expr, size_t test_num, char *msg)
void tap_assert (bool expr, size_t test_num, char *msg) {
  printf("%s %ld %s\n", (expr ? "ok" : "not ok"), test_num, msg);
}
//@+node:caminhante.20210513092538.1: ** int main (argc, argv)
int main (int argc, char** argv) {
  size_t tests = 0;
  object $Class a = new(SimpleRect);
  object $Class b = new(SimpleCircle);
  double c = 0;
  // send_msg(OBJ,TYPE,METHOD,ARGS...)
  tap_assert( send_msg(a, Rect,new, .width=2.0, .height=3.0), ++tests, "a = new Rect(width=2.0, height=3.0)");
  tap_assert( send_msg(b, Circle,new, .radius=3.0), ++tests, "b = new Circle(radius=3.0)");
  // send_type_query(OBJ,TYPE)
  tap_assert( send_type_query(a,Geometry), ++tests, "does a implements Geometry");
  tap_assert( send_type_query(a,Rect), ++tests, "does a implements Rect");
  tap_assert( ! send_type_query(a,Circle), ++tests, "does a NOT implements Circle");
  tap_assert( send_type_query(b,Geometry), ++tests, "does b implements Geometry");
  tap_assert( ! send_type_query(b,Rect), ++tests, "does b NOT implements Rect");
  tap_assert( send_type_query(b,Circle), ++tests, "does b implements Circle");
  // implements(CLASS,TYPE)
  tap_assert( implements(SimpleRect,Geometry), ++tests, "does SimpleRect implements Geometry");
  tap_assert( implements(SimpleRect,Rect), ++tests, "does SimpleRect implements Rect");
  tap_assert( ! implements(SimpleRect,Circle), ++tests, "does SimpleRect NOT implements Circle");
  tap_assert( implements(SimpleCircle,Geometry), ++tests, "does SimpleCircle implements Geometry");
  tap_assert( ! implements(SimpleCircle,Rect), ++tests, "does SimpleCircle NOT implements Rect");
  tap_assert( implements(SimpleCircle,Circle), ++tests, "does SimpleCircle implements Circle");
  // send_msg_ret(OBJ,TYPE,METHOD,VAR,ARGS...)
  tap_assert( send_msg_ret(a, Geometry,area, c), ++tests, "double c = a.area()");
  tap_assert( c <= 6.0, ++tests, "c <= 6.0");
  tap_assert( send_msg_ret(b, Geometry,area, c), ++tests, "double c = b.area()");
  tap_assert( c <= 28.26, ++tests, "c <= 28.26");
  tap_assert( send_msg_ret(a, Geometry,perim, c), ++tests, "double c = a.perim()");
  tap_assert( c <= 10.0, ++tests, "c <= 10.0");
  tap_assert( send_msg_ret(b, Geometry,perim, c), ++tests, "double c = b.perim()");
  tap_assert( c <= 18.84, ++tests, "c <= 18.84");
  printf("1..%ld\n",tests);
  return 0;
}
//@-others
//@-leo
