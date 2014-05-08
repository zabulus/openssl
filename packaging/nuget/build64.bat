REM This script assumes we are running
REM from the OpenSLL repo root.

CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64

perl Configure VC-WIN64A %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_win64a.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak

perl Configure debug-VC-WIN64A %1 %2 %3 %4 %5 %6 %7 %8 %9
CALL ms\do_win64a.bat

nmake -f ms\nt.mak
nmake -f ms\ntdll.mak
