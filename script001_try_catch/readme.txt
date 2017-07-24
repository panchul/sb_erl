
Run it as a simple script:


﻿$ ./myscript.erl test
Here goes test
About to run Fun (#Fun<erl_eval.6.50752066>)
Input [116,101,115,116] => output [116,101,115,116,116,101,115,116]
Here goes after


﻿$ ./myscript.erl throw
Here goes a throw
About to run Fun (#Fun<erl_eval.6.50752066>)
Here goes catch
Here goes after

﻿$ ./myscript.erl test2
I only process 'test'
About to run Fun (#Fun<erl_eval.6.50752066>)
Input [116,101,115,116,50] => output [116,101,115,116,50]
Here goes after


