#include <ruby.h>

static VALUE hallo_welt_hello(VALUE self) {
  printf("Hallo Welt!");
  return Qnil;
}

void Init_hallo_welt(void) {
  VALUE cHalloWelt;

  cHalloWelt = rb_const_get(rb_cObject, rb_intern("HalloWelt"));
  rb_define_method(cHalloWelt, "hello", hallo_welt_hello, 0);
}
