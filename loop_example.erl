-module(loop_example).
-export([start/0, loop/1, upgrade/1]).

start() ->
  spawn_link(?MODULE, loop, [0]).

loop(State) ->
  receive
    {increment, From} ->
      NewState = State + 1,
      From ! NewState,
      loop(NewState);
    upgrade ->
      NewState = ?MODULE:upgrade(State),
      ?MODULE:loop(NewState)
    after 5000 ->
      loop(State)
  end.

upgrade(State) -> State.
