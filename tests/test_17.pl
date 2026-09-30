:- begin_tests(module17).
:- consult('../examples/17_expert.pl').

test(recharge) :-
    recommend(recharge, robot_a, because(battery_low)).

test(no_dock_recommendation_when_docked, [fail]) :-
    recommend(dock_and_recharge, robot_a, _).

test(dock_when_away) :-
    recommend(dock_and_recharge, robot_c,
              because(battery_low, not_at_dock)).

test(sensor_check) :-
    recommend(check_sensor, robot_b,
              because(obstacle_reported, sensor_uncertain)).

test(multiple_recommendations) :-
    setof(Action, Why^recommend(Action, robot_b, Why), Actions),
    assertion(Actions == [check_sensor,inspect_path]).

test(explanation_is_data) :-
    recommend(inspect_path, robot_c, Why),
    assertion(Why == because(obstacle_reported)).

:- end_tests(module17).
