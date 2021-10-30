@mkdir build
@cd build
@rem Full command: cmake . -G "Visual Studio 16 2019" -A x64
@cmake ..
@rem Release ver: cmake --build . --config Release
@cmake --build .
@cd ..
build\Debug\app.exe