#!/usr/bin/env escript

-import(lists,[ map/2 ]).
-import(props,[ set/2 ]).

main(_) ->
   
   P1 = props:set("baz", 5),    %% {[{<<"baz">>,5}]}
%   P2 = props:set("bar", P1),   %% {[{<<"bar">>,{[{<<"baz">>,5}]}}]}
%   P3 = props:set("foo", P2),   %% {[{<<"foo">>,{[{<<"bar">>,{[{<<"baz">>,5}]}}]}}]}
%   Res1 = props:get("foo.bar.baz", P3), %% 5
%   P4 = props:set("foo.bar.qux", 10, P3), %% {[{<<"foo">>, {[{<<"bar">>,{[{<<"baz">>,5},{<<"qux">>,10}]}}]}}]}

	P1,   
   io:format("Open it up and look inside~n")

.

