% EduProlog module 17 — a tiny explainable expert system

fact(robot_a, battery_low).
fact(robot_a, at_dock).
fact(robot_b, obstacle_reported).
fact(robot_b, sensor_uncertain).
fact(robot_c, battery_low).
fact(robot_c, obstacle_reported).

recommend(recharge, Robot, because(battery_low)) :-
    fact(Robot, battery_low).

recommend(dock_and_recharge, Robot,
          because(battery_low, not_at_dock)) :-
    fact(Robot, battery_low),
    \+ fact(Robot, at_dock).

recommend(check_sensor, Robot,
          because(obstacle_reported, sensor_uncertain)) :-
    fact(Robot, obstacle_reported),
    fact(Robot, sensor_uncertain).

recommend(inspect_path, Robot,
          because(obstacle_reported)) :-
    fact(Robot, obstacle_reported).
