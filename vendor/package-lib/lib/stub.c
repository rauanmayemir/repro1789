#include <caml/alloc.h>
#include <caml/memory.h>

#include "message.h"

CAMLprim value test_message() {
  CAMLparam0();
  echo_message();
  CAMLreturn(Val_unit);
}
