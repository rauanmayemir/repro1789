Reproduction case for #1789. The issue was that executables where not
relinked when the C stubs of libraries they depended on changed.

  $ echo '#include "message.h"\n#include <stdio.h>\n\nvoid echo_message() { printf("message1\\n"); }' > vendor/package-lib/lib/message.c
  $ esy
  $ esy x repro1789
  message1

  $ echo '#include "message.h"\n#include <stdio.h>\n\nvoid echo_message() { printf("message2\\n"); }' > vendor/package-lib/lib/message.c
  $ esy x repro1789
  message2
