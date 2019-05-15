(cd step_01 && ../rebuild.sh ubuntu:trusty test_step01)
(cd step_02 && ../rebuild.sh test_step01 test_step02)
(cd step_03 && ../rebuild.sh test_step02 test_step03)
(cd step_04 && ../rebuild.sh test_step03 dev_env)

