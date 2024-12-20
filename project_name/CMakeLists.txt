add_executable(project_name main.cpp)
target_compile_features(project_name PRIVATE cxx_std_17)
target_compile_options(project_name PUBLIC /FC /Zi /W4 /WX /external:anglebrackets /external:W0)
