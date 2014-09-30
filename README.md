CoverErr
========

Example of cover error.

## To Reproduce

```elixir
mix coveralls
```

To fix the error, comment out the final line of `culprit\0` in
`lib/cover_err.ex` and rerun.

## The Error

```
** (exit) an exception was raised:
    ** (FunctionClauseError) no function clause matching in :lists.last/1
        (stdlib) lists.erl:226: :lists.last([])
        cover.erl:1700: :cover.fix_clauses/3
        cover.erl:1688: :cover.fix_expr/3
        cover.erl:1669: :cover.fix_last_expr/3
        cover.erl:1591: :cover.munge_body/4
        cover.erl:1546: :cover.munge_clauses/4
        cover.erl:1525: :cover.munge/4
        cover.erl:1441: :cover.transform_2/5
    cover.erl:511: :cover.call/1
    cover.erl:318: :cover.compile_beams/2
    lib/excoveralls.ex:21: ExCoveralls.start/2
    (mix) lib/mix/tasks/test.ex:158: Mix.Tasks.Test.run/1
    (mix) lib/mix/cli.ex:55: Mix.CLI.run_task/2
    (elixir) src/elixir_lexical.erl:17: :elixir_lexical.run/3
```
