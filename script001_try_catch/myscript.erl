#!/usr/bin/env escript

%
% Runs as a regular script (erlang has to be installed on the machine)
%

main([Arg]) ->
  try
    case Arg of
      "test" ->
        Fun = fun(A) -> A ++ A end,
        io:format("Here goes test~n");
      "throw" ->
        Fun = fun(_A) -> throw(crap) end,
        io:format("Here goes a throw~n");
      _ ->
        Fun = fun(A) -> A end,
        io:format("I only process 'test'~n")
    end,
    io:format("About to run Fun (~w)~n", [Fun]),
    F = Fun(Arg),
    io:format("Input ~w => output ~w\n", [Arg, F])
  catch
    _:_ ->
      io:format("Here goes catch\n", [])
  after
    io:format("Here goes after\n")
  end;
  
main(_) ->
    usage().
  
    
usage() ->
    io:format("usage: myscript.erl [some text string]~n~n"),
    io:format("You can try these or something else:~n"),
    io:format("            \"test\"  - regular test~n"),
    io:format("            \"throw\" - triggering throw~n~n"),
    halt(1).

