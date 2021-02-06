#include "dynamic_objects.h"

// type geometry interface {
    // area() float64
    // perim() float64
// }


// type rect struct {
    // width, height float64
// }

// func (r rect) area() float64 {
    // return r.width * r.height
// }

// func (r rect) perim() float64 {
    // return 2*r.width + 2*r.height
// }


// type circle struct {
    // radius float64
// }

// func (c circle) area() float64 {
    // return math.Pi * c.radius * c.radius
// }

// func (c circle) perim() float64 {
    // return 2 * math.Pi * c.radius
// }

//

#define Type$Geometry(_) \
  _(area) \
  _(perim)
define_type(Geometry);

#define Geometry$area(_)
define_message(Geometry,area);

#define Geometry$perim(_)
define_message(Geometry,perim);

//

#define Type$Rect(_) \
  _(new)
define_type(Rect);

#define Rect$new(_) \
  _(double,width) \
  _(double,height)
define_message(Rect,new);

//

#define Type$Circle(_) \
  _(new)
define_type(Circle);

#define Circle$new(_) \
  _(double,radius)
define_message(Circle,new);

//

struct rect {
  double w;
  double h;
};
define_class(SimpleRect) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Rect)) { return true; }
  if (is_method(Rect,new)) {
    struct rect *r = allocate(struct rect);
    r->w = message_of(Rect,new)->width;
    r->h = message_of(Rect,new)->height;
    mutable(struct rect, me->_obj) = r;
    return true;
  }
  if (me->_obj != NULL) {
    double *ret = (double*)msg->_return;
    objptr(rect) r = (objptr(rect))me->_obj;
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

//

struct circle {
  double r;
};
define_class(SimpleCircle) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Circle)) { return true; }
  if (is_method(Circle,new)) {
    struct circle *c = allocate(struct circle);
    c->r = message_of(Circle,new)->radius;
    mutable(struct circle, me->_obj) = c;
    return true;
  }
  if (me->_obj != NULL) {
    double *ret = (double*)msg->_return;
    objptr(circle) c = (objptr(circle))me->_obj;
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

//

int main () {
  object $Class a = new(SimpleRect);
  object $Class b = new(SimpleCircle);
  double c = 0;
  send(a, new_message(Rect,new, .width=2.0, .height=3.0));
  send(b, new_message(Circle,new, .radius=3.0));
  send(a, new_message(Geometry,area, ._return=&c));
  printf("%g\n", c);
  send(b, new_message(Geometry,area, ._return=&c));
  printf("%g\n", c);
  send(a, new_message(Geometry,perim, ._return=&c));
  printf("%g\n", c);
  send(b, new_message(Geometry,perim, ._return=&c));
  printf("%g\n", c);
  return 0;
}
