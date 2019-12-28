#include <oohg.ch>
#include "ook.ch"

Procedure ook_xbcc_bat()
   Local Out := ''

   DECLARE WINDOW Main

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_BCC   := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)
   HG_ROOT1 := GetSub(HG_BCC)
   HG_ROOT2 := GetSub(HG_HRB)

   HG_CCOMP := HG_BCC
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
        Out := Out + 'set HG_ROOT=' + HG_ROOT  + cNewLi
        Out := Out + 'set HG_ROOT1=' + HG_ROOT1 + cNewLi
        Out := Out + 'set HG_ROOT2=' + HG_ROOT2 + cNewLi
        Out := Out + 'set HG_BCC=' + HG_BCC  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set HG_HRB=' + HG_HRB   + cNewLi
        Out := Out + 'set HG_CCOMP=' + HG_CCOMP + cNewLi
        Out := Out + 'set LIB_GUI=' + LIB_GUI  + cNewLi
        Out := Out + 'set LIB_HRB=' + LIB_HRB  + cNewLi
        Out := Out + 'set BIN_HRB=' + BIN_HRB  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set PATH=%HG_CCOMP%\bin;%HG_HRB%\%BIN_HRB%' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':MAKELIB_BCC' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if "%HG_ROOT%" == "" goto INFO' + cNewLi
        Out := Out + '   if "%HG_HRB%"  == "" goto INFO' + cNewLi
        Out := Out + '   if "%HG_BCC%"  == "" goto INFO' + cNewLi
        Out := Out + '   if "%LIB_GUI%" == "" goto INFO' + cNewLi
        Out := Out + '   if "%LIB_HRB%" == "" goto INFO' + cNewLi
        Out := Out + '   if "%BIN_HRB%" == "" goto INFO' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':CLEAN_LIBS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if not exist %HG_ROOT%\%LIB_GUI%\nul md %HG_ROOT%\%LIB_GUI% > nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\oohg.lib      del %HG_ROOT%\%LIB_GUI%\oohg.lib      > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\hbprinter.lib del %HG_ROOT%\%LIB_GUI%\hbprinter.lib > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\miniprint.lib del %HG_ROOT%\%LIB_GUI%\miniprint.lib > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\bostaurus.lib del %HG_ROOT%\%LIB_GUI%\bostaurus.lib > nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':COMPILE_PRGS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if exist resul.txt del resul.txt' + cNewLi
        Out := Out + '   call common_make "%HG_HRB%\%LIB_HRB%\tip.lib" -q0 ">> ' + NameMemo()+  ' 2>&1"' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT1' + cNewLi
        Out := Out + '   echo. >> ' + NameMemo() + cNewLi
        Out := Out + cNewLi
        Out := Out + ':COMPILE_C' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Compiling C files ...' + cNewLi
        Out := Out + '   set HG_X_FLAGS=-c -O2 -tW -tWM -d -a8 -OS -5 -6 -w -I%HG_HRB%\include;%HG_BCC%\include;%HG_ROOT%\include; -L%HG_HRB%\%LIB_HRB%;%HG_BCC%\lib;' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES1_PRG% ) do if not errorlevel 1 %HG_BCC%\bin\bcc32 %HG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES2_PRG% ) do if not errorlevel 1 %HG_BCC%\bin\bcc32 %HG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES_C% )    do if not errorlevel 1 %HG_BCC%\bin\bcc32 %HG_X_FLAGS% %%a.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if not exist winprint.c echo winprint.c is missing! >> '+ NameMemo() + cNewLi
        Out := Out + '   if exist winprint.c  %HG_BCC%\bin\bcc32 %HG_X_FLAGS% winprint.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if not exist miniprint.c echo miniprint.c is missing! >> '+ NameMemo() + cNewLi
        Out := Out + '   if exist miniprint.c %HG_BCC%\bin\bcc32 %HG_X_FLAGS% miniprint.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if not exist bostaurus.c echo bostaurus.c is missing! >> resul.txt' + cNewLi
        Out := Out + '   if exist bostaurus.c %HG_BCC%\bin\bcc32 %HG_X_FLAGS% bostaurus.c >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   echo. >> '+ NameMemo() + cNewLi
        Out := Out + cNewLi
        Out := Out + ':BUILD_LIBS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Building libraries ...' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES1_PRG% ) do if not errorlevel 2 %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\oohg +%%a.obj /P128 >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES2_PRG% ) do if not errorlevel 2 %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\oohg +%%a.obj /P128 >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES_C% )    do if not errorlevel 2 %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\oohg +%%a.obj /P128 >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   if not exist winprint.obj echo winprint.obj is missing! >> '+ NameMemo() + cNewLi
        Out := Out + '   if not exist winprint.obj goto EXIT2' + cNewLi
        Out := Out + '   if exist winprint.obj  %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\hbprinter +winprint.obj >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   if not exist miniprint.obj echo miniprint.obj is missing! >> '+ NameMemo() + cNewLi
        Out := Out + '   if not exist miniprint.obj goto EXIT2' + cNewLi
        Out := Out + '   if exist miniprint.obj %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\miniprint +miniprint.obj >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   if not exist bostaurus.obj echo bostaurus.obj is missing! >> '+ NameMemo() + cNewLi
        Out := Out + '   if not exist bostaurus.obj goto EXIT2' + cNewLi
        Out := Out + '   if exist bostaurus.obj %HG_BCC%\bin\tlib %HG_ROOT%\%LIB_GUI%\bostaurus +bostaurus.obj >> '+ NameMemo() + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT2' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\oohg.bak      del %HG_ROOT%\%LIB_GUI%\oohg.bak      > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\hbprinter.bak del %HG_ROOT%\%LIB_GUI%\hbprinter.bak > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\miniprint.bak del %HG_ROOT%\%LIB_GUI%\miniprint.bak > nul' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\bostaurus.bak del %HG_ROOT%\%LIB_GUI%\bostaurus.bak > nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':SUCCESS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Build finished !!!' + cNewLi
        Out := Out + '   echo ! Look for new libs at %HG_ROOT%\%LIB_GUI%' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT2' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   rem *** Cleanup ***' + cNewLi
        Out := Out + '   del /q *.obj > nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT1' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   rem *** Cleanup ***' + cNewLi
        Out := Out + '   del /q h_*.c > nul' + cNewLi
        Out := Out + '   if exist winprint.c  del winprint.c  > nul' + cNewLi
        Out := Out + '   if exist miniprint.c del miniprint.c > nul' + cNewLi
        Out := Out + '   if exist bostaurus.c del bostaurus.c > nul' + cNewLi
        Out := Out + '   SET HG_X_FLAGS=' + cNewLi
        Out := Out + '   SET HG_FILES1_PRG=' + cNewLi
        Out := Out + '   SET HG_FILES2_PRG=' + cNewLi
        Out := Out + '   SET HG_FILES_C=' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':SHOW_RESULT' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if not exist '+ NameMemo()+' goto END' + cNewLi
        Out := Out + '   goto END' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':INFO' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! This file must be called from MAKELIB.BAT !!!' + cNewLi
        Out := Out + '   echo.' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':END' + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\Source\'+NameMemo()+'.bat' , Out )
            If File(HG_ROOT+'\Source\'+NameMemo()+'.bat')
               MsgInfo("File: "+HG_ROOT+'\Source\'+NameMemo()+'.bat'+" Created","Success...")
            Endif
        Endif

Return
