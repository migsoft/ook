#include <oohg.ch>
#include "ook.ch"

Procedure ook_msvc_bat()
   Local Out := ''

   DECLARE WINDOW Main

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_VC    := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)
   HG_ROOT1 := GetSub(HG_VC)
   HG_ROOT2 := GetSub(HG_HRB)

   HG_CCOMP := HG_VC
   LIB_GUI  := W_G_Compiler()
   LIB_HRB  := W_H_Compiler()
   BIN_HRB  := "bin"

   If !File(HG_ROOT+'\Source\'+'common_make.bat')
       Commom_Batch()
   Endif

   FErase(HG_ROOT+'\Source\'+NameMemo()+'.bat')

        Out := Out + '@echo off'+ cNewLi
        Out := Out + 'rem ---------------------------------------------------------------' + cNewLi
        Out := Out + 'rem Copyright 2019 Miguel Angel Ju�rez Apaza <migsoft@oohg.org>    ' + cNewLi
        Out := Out + 'rem Batch Generated by OOK Tool to build OOHG Library              ' + cNewLi
        Out := Out + 'rem ---------------------------------------------------------------' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HG_VC='+ HG_CCOMP + cNewLi
        Out := Out + 'SET HG_ROOT='+ HG_ROOT + cNewLi
        Out := Out + 'SET HG_HRB='+ HG_HRB + cNewLi
        Out := Out + 'set HG_ROOT1=' + HG_ROOT1 + cNewLi
        Out := Out + 'set HG_ROOT2=' + HG_ROOT2 + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set HG_HRB=' + HG_HRB   + cNewLi
        Out := Out + 'set HG_CCOMP=' + HG_CCOMP + cNewLi
        Out := Out + 'set LIB_GUI=' + LIB_GUI  + cNewLi
        Out := Out + 'set LIB_HRB=' + LIB_HRB  + cNewLi
        Out := Out + 'set BIN_HRB=' + BIN_HRB  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET _PATH=%PATH%' + cNewLi
        Out := Out + 'SET PATH="%HG_VC%\bin";%PATH%' + cNewLi
        Out := Out + 'IF EXIST "%HG_VC%"\vcvarsall.bat CALL "%HG_VC%"\vcvarsall.bat' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'if not exist %HG_ROOT%\%LIB_GUI%\nul md %HG_ROOT%\%LIB_GUI% > nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\oohg.lib del %hg_root%\%LIB_GUI%\oohg.lib' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\hbprinter.lib del %hg_root%\%LIB_GUI%\hbprinter.lib' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\miniprint.lib del %hg_root%\%LIB_GUI%\miniprint.lib' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'call common_make "%hg_hrb%\%LIB_HRB%\tip.lib"' + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT1' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET OOHG_X_FLAGS= /O2 /c /W3 /nologo /I"%hg_vc%\include" /I"%hg_vc%\include\Win" /I%hg_hrb%\include /I%hg_root%\include /D__WIN32__ /D_CRT_SECURE_NO_WARNINGS' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'for %%a in (%HG_FILES1_PRG%) do if not errorlevel 1 cl %OOHG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + 'for %%a in (%HG_FILES2_PRG%) do if not errorlevel 1 cl %OOHG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + 'for %%a in (%HG_FILES_C%)    do if not errorlevel 1 cl %OOHG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + 'if exist winprint.c  cl %OOHG_X_FLAGS% winprint.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + 'if exist miniprint.c cl %OOHG_X_FLAGS% miniprint.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + 'if exist bostaurus.c cl %OOHG_X_FLAGS% bostaurus.c >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'ECHO /out:%hg_root%\%LIB_GUI%\oohg.lib >%hg_root%\%LIB_GUI%\oohg.def' + cNewLi
        Out := Out + 'for %%a in (%HG_FILES1_PRG%) do ECHO %%a.obj >>%hg_root%\%LIB_GUI%\oohg.def' + cNewLi
        Out := Out + 'for %%a in (%HG_FILES2_PRG%) do ECHO %%a.obj >>%hg_root%\%LIB_GUI%\oohg.def' + cNewLi
        Out := Out + 'for %%a in (%HG_FILES_C%)    do ECHO %%a.obj >>%hg_root%\%LIB_GUI%\oohg.def' + cNewLi
        Out := Out + 'lib @%hg_root%\%LIB_GUI%\oohg.def >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + 'if exist winprint.obj  lib /out:%hg_root%\%LIB_GUI%\hbprinter.lib winprint.obj >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + 'if exist miniprint.obj lib /out:%hg_root%\%LIB_GUI%\miniprint.lib miniprint.obj >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + 'if exist bostaurus.obj lib /out:%hg_root%\%LIB_GUI%\bostaurus.lib bostaurus.obj >> '+ NameMemo() + cNewLi
        Out := Out + 'if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT3' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\oohg.def del %hg_root%\%LIB_GUI%\oohg.def' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\oohg.bak del %hg_root%\%LIB_GUI%\oohg.bak' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\hbprinter.bak del %hg_root%\%LIB_GUI%\hbprinter.bak' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\miniprint.bak del %hg_root%\%LIB_GUI%\miniprint.bak' + cNewLi
        Out := Out + 'IF EXIST %hg_root%\%LIB_GUI%\bostaurus.bak del %hg_root%\%LIB_GUI%\bostaurus.bak' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT2' + cNewLi
        Out := Out + 'del *.obj' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT1' + cNewLi
        Out := Out + 'del h_*.c' + cNewLi
        Out := Out + 'if exist winprint.c  del winprint.c' + cNewLi
        Out := Out + 'if exist miniprint.c del miniprint.c' + cNewLi
        Out := Out + 'if exist bostaurus.c del bostaurus.c' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET OOHG_X_FLAGS=' + cNewLi
        Out := Out + 'SET HG_FILES1_PRG=' + cNewLi
        Out := Out + 'SET HG_FILES2_PRG=' + cNewLi
        Out := Out + 'SET HG_FILES_C=' + cNewLi
        Out := Out + 'SET PATH=%_PATH%' + cNewLi
        Out := Out + 'SET _PATH=' + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\Source\'+NameMemo()+'.bat' , Out )
            If File(HG_ROOT+'\Source\'+NameMemo()+'.bat')
               MsgInfo("File: "+HG_ROOT+'\Source\'+NameMemo()+'.bat'+" Created","Success...")
            Endif
        Endif

Return
