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
struct rect {
  long w;
  long h;
};

define_handler(Rect) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Rect)) { return true; }
  if (is_method(Rect,new)) {
    struct rect *r = allocate(struct rect);
    r->w = message_of(Rect,new)->width;
    r->h = message_of(Rect,new)->height;
    mutable(struct rect,me->_obj) = r;
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
int main () {
  object $Class a = new(Rect);
  send(a, new_message(Rect,new, .width=2, .height=3));
  double b = 0;
  send(a, new_message(Geometry,area, ._return=&b));
  printf("%g\n", b);
  return 0;
}
