# cmake invocation

```console
cmake --fresh -W Dev -G Ninja .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DGTIRB_ENABLE_TESTS=OFF -DCMAKE_POLICY_VERSION_MINIMUM=3.10 -DCMAKE_PROJECT_TOP_LEVEL_INCLUDES="cmake/provider.cmake" --graphviz=depsgraph.dot
```
