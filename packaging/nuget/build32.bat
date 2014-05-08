REM This script assumes we are running
REM from the OpenSLL repo root.

CALL "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86

perl Configure VC-WIN32 %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_ms.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak

perl Configure debug-VC-WIN32 %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_ms.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak
