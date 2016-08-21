#!/usr/bin/env escript

%
% Runs as a regular script (erlang has to be installed on the machine)
%

main([Arg]) ->
  case Arg of
    "test" ->
      io:format("Here I am~n");
    _ ->
      io:format("I only process 'test'~n")
  end;
main(_) ->
    io:format("something else~n").

