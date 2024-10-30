%%%-------------------------------------------------------------------
%% @doc cowboy_file_upload_verification public API
%% @end
%%%-------------------------------------------------------------------

-module(cowboy_file_upload_verification_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    cowboy_file_upload_verification_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
