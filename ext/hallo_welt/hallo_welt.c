#include <ruby.h>

static VALUE hallo_welt_hello(VALUE self) {
  VALUE string = rb_str_new2("Hello World!");
  return rb_funcall(self, rb_intern("print"), 1, string);
}

static VALUE hallo_welt_print(VALUE self, VALUE obj) {
  VALUE printable = rb_funcall(obj, rb_intern("to_s"), 0);
  switch (TYPE(printable)) {
    case T_STRING:
      printf("%s\n", RSTRING_PTR(printable));
      break;
    default:
      rb_raise(rb_eTypeError, "Could not obtain a valid String!");
      break;
  }
  return Qnil;
}

void Init_hallo_welt(void) {
  VALUE cHalloWelt;

  cHalloWelt = rb_const_get(rb_cObject, rb_intern("HalloWelt"));
  rb_define_method(cHalloWelt, "hello", hallo_welt_hello, 0);
  rb_define_method(cHalloWelt, "print", hallo_welt_print, 1);
}
