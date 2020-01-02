#include <oohg.ch>
#include "ook.ch"

Procedure ook_mk2_hmg1()
   Local Out := ''

   DECLARE WINDOW Main

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

   If !File(HG_ROOT+'\BuildAllLib32.bat')

      If !File(HG_ROOT+'\hmg32.hbp')
          hbp_hmg32()
      Endif
      If !File(HG_ROOT+'\hmg32.hbc')
         hbc_hmg32()
      Endif
      If !File(HG_ROOT+'\hmg64.hbp')
         hbp_hmg64()
      Endif
      If !File(HG_ROOT+'\hmg64.hbc')
         hbc_hmg64()
      Endif
      If !File(HG_ROOT+'\BuildLib32.bat')
         ook_mk2_hmg2()
      Endif

        Out := Out + '@echo off'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour\bin;%HMGPATH%\mingw\bin;%PATH%'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'CALL BuildLib32.bat /nopause'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour\bin;%HMGPATH%\mingw\bin;%PATH%'+ cNewLi
        Out := Out + 'rem hbmk2 hmg.hbp'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + 'rem cd..\..'+ cNewLi
        Out := Out + 'cd source\crypt'+ cNewLi
        Out := Out + 'hbmk2 crypt.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\edit'+ cNewLi
        Out := Out + 'hbmk2 edit.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\editex'+ cNewLi
        Out := Out + 'hbmk2 editex.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\graph'+ cNewLi
        Out := Out + 'hbmk2 graph.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\hbvpdf'+ cNewLi
        Out := Out + 'hbmk2 hbvpdf.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\ini'+ cNewLi
        Out := Out + 'hbmk2 ini.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\report'+ cNewLi
        Out := Out + 'hbmk2 report.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd hfcl\source'+ cNewLi
        Out := Out + 'hbmk2 hfcl.hbp -i%hmgpath%\include -i%hmgpath%\hfcl\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\BuildAllLib32.bat' , Out )
            If File(HG_ROOT+'\BuildAllLib32.bat')
               MsgInfo("File: "+HG_ROOT+'\BuildAllLib32.bat'+" Created","Success...")
            Endif
        Endif
   Endif
Return


Procedure ook_mk2_hmg2()
   Local Out := ''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)


        Out := Out + '@echo off'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'rem SYNTAX:  BuilLib.bat  [/nopause]  [/ansi] | [/unicode]'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if  "%1" == "/nopause" ('+ cNewLi
        Out := Out + '    set nopause=1'+ cNewLi
        Out := Out + ') else ('+ cNewLi
        Out := Out + '    set nopause=0 )'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if "%1" == "/nopause" shift'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if "%1" == "/ansi"    goto OP1'+ cNewLi
        Out := Out + 'if "%1" == "/unicode" goto OP2'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':MENU'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. *********************************'+ cNewLi
        Out := Out + 'echo. *   HMG-Unicode Build Library   *'+ cNewLi
        Out := Out + 'echo. *********************************'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. Build HMG Library to support the character set:'+ cNewLi
        Out := Out + 'echo. -----------------------------------------------'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 1 - ANSI'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 2 - UNICODE'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 0 - Cancel'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'set /p option=Select an Option [0, 1, 2] (for default: UNICODE):'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto OP2'+ cNewLi
        Out := Out + 'if %option% == 1 goto OP1'+ cNewLi
        Out := Out + 'if %option% == 2 goto OP2'+ cNewLi
        Out := Out + 'if %option% == 0 exit'+ cNewLi
        Out := Out + 'goto MENU'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':OP1'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'title Build Library:         ANSI'+ cNewLi
        Out := Out + 'echo. Build Library:         ANSI'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'if not exist "INCLUDE\_ANSI.ch" ( goto ERROR1 )'+ cNewLi
        Out := Out + 'copy INCLUDE\_ANSI.ch  INCLUDE\SET_COMPILE_HMG_UNICODE.ch > nul'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto ERROR1'+ cNewLi
        Out := Out + 'echo.ANSI > hmglib.txt'+ cNewLi
        Out := Out + 'goto BUILDLIB'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':OP2'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'title Build Library:         UNICODE'+ cNewLi
        Out := Out + 'echo. Build Library:         UNICODE'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'if not exist "INCLUDE\_UNICODE.ch" ( goto ERROR2 )'+ cNewLi
        Out := Out + 'copy INCLUDE\_UNICODE.ch  INCLUDE\SET_COMPILE_HMG_UNICODE.ch > nul'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto ERROR2'+ cNewLi
        Out := Out + 'echo.UNICODE > hmglib.txt'+ cNewLi
        Out := Out + 'goto BUILDLIB'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':ERROR1'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. ERROR: file (INCLUDE\_ANSI.ch) not exist or failed copy'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi
        Out := Out + 'exit'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':ERROR2'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. ERROR: file (INCLUDE\_UNICODE.ch) not exist or failed copy'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi
        Out := Out + 'exit'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':BUILDLIB'+ cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour\bin;%HMGPATH%\mingw\bin;%PATH%'+ cNewLi
        Out := Out + 'hbmk2 hmg32.hbp'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if %nopause% == 0 pause'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\BuildLib32.bat' , Out )
            If File(HG_ROOT+'\BuildLib32.bat')
               MsgInfo("File: "+HG_ROOT+'\BuildLib32.bat'+" Created","Success...")
            Endif
        Endif

Return

Procedure ook_mk2_hmg3()
   Local Out := ''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

   If !File(HG_ROOT+'\BuildAllLib32.bat')

      If !File(HG_ROOT+'\hmg32.hbp')
         hbp_hmg32()
      Endif
      If !File(HG_ROOT+'\hmg32.hbc')
         hbc_hmg32()
      Endif
      If !File(HG_ROOT+'\hmg64.hbp')
         hbp_hmg64()
      Endif
      If !File(HG_ROOT+'\hmg64.hbc')
         hbc_hmg64()
      Endif
      If !File(HG_ROOT+'\_BuildLib64.bat')
         ook_mk2_hmg4()
      Endif

        Out := Out + '@echo off'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour-64\bin;%HMGPATH%\mingw-64\bin;%PATH%'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'CALL _BuildLib64.bat /nopause'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour-64\bin;%HMGPATH%\mingw-64\bin;%PATH%'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'rem cd..\..'+ cNewLi
        Out := Out + 'cd source\crypt'+ cNewLi
        Out := Out + 'hbmk2 crypt-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\edit'+ cNewLi
        Out := Out + 'hbmk2 edit-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\editex'+ cNewLi
        Out := Out + 'hbmk2 editex-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\graph'+ cNewLi
        Out := Out + 'hbmk2 graph-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\hbvpdf'+ cNewLi
        Out := Out + 'hbmk2 hbvpdf-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\ini'+ cNewLi
        Out := Out + 'hbmk2 ini-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd source\report'+ cNewLi
        Out := Out + 'hbmk2 report-64.hbp -i%hmgpath%\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + 'cd hfcl\source'+ cNewLi
        Out := Out + 'hbmk2 hfcl-64.hbp -i%hmgpath%\include -i%hmgpath%\hfcl\include'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'cd..\..'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\_BuildAllLib64.bat' , Out )
            If File(HG_ROOT+'\_BuildAllLib64.bat')
               MsgInfo("File: "+HG_ROOT+'\_BuildAllLib64.bat'+" Created","Success...")
            Endif
        Endif

   Endif     

Return



Procedure ook_mk2_hmg4()
   Local Out := ''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

        Out := Out + '@echo off'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'IF NOT EXIST LIB-64 ( MD LIB-64 )'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'rem SYNTAX:  _BuilLib64.bat  [/nopause]  [/ansi] | [/unicode]'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if  "%1" == "/nopause" ('+ cNewLi
        Out := Out + '    set nopause=1'+ cNewLi
        Out := Out + ') else ('+ cNewLi
        Out := Out + '    set nopause=0 )'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if "%1" == "/nopause" shift'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if "%1" == "/ansi"    goto OP1'+ cNewLi
        Out := Out + 'if "%1" == "/unicode" goto OP2'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':MENU'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'title Build Library in 64 bits'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. *******************************************'+ cNewLi
        Out := Out + 'echo. *   HMG-Unicode Build Library (64 bits)   *'+ cNewLi
        Out := Out + 'echo. *******************************************'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. Build HMG Library to support the character set:'+ cNewLi
        Out := Out + 'echo. -----------------------------------------------'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 1 - ANSI'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 2 - UNICODE'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. 0 - Cancel'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'set /p option=Select an Option [0, 1, 2] (for default: UNICODE):'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto OP2'+ cNewLi
        Out := Out + 'if %option% == 1 goto OP1'+ cNewLi
        Out := Out + 'if %option% == 2 goto OP2'+ cNewLi
        Out := Out + 'if %option% == 0 exit'+ cNewLi
        Out := Out + 'goto MENU'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':OP1'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'title Build Library:         ANSI (64 bits)'+ cNewLi
        Out := Out + 'echo. Build Library:         ANSI (64 bits)'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'if not exist INCLUDE\_ANSI.ch ( goto ERROR1 )'+ cNewLi
        Out := Out + 'copy INCLUDE\_ANSI.ch  INCLUDE\SET_COMPILE_HMG_UNICODE.ch > nul'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto ERROR1'+ cNewLi
        Out := Out + 'echo.ANSI > hmglib64.txt'+ cNewLi
        Out := Out + 'goto BUILDLIB'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':OP2'+ cNewLi
        Out := Out + 'cls'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'title Build Library:         UNICODE (64 bits)'+ cNewLi
        Out := Out + 'echo. Build Library:         UNICODE (64 bits)'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'if not exist "INCLUDE\_UNICODE.ch" ( goto ERROR2 )'+ cNewLi
        Out := Out + 'copy INCLUDE\_UNICODE.ch  INCLUDE\SET_COMPILE_HMG_UNICODE.ch > nul'+ cNewLi
        Out := Out + 'if %ERRORLEVEL% NEQ 0 goto ERROR2'+ cNewLi
        Out := Out + 'echo.UNICODE > hmglib64.txt'+ cNewLi
        Out := Out + 'goto BUILDLIB'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':ERROR1'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. ERROR: file (INCLUDE\_ANSI.ch) not exist or failed copy'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi
        Out := Out + 'exit'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':ERROR2'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'echo. ERROR: file (INCLUDE\_UNICODE.ch) not exist or failed copy'+ cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + 'pause'+ cNewLi
        Out := Out + 'exit'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + ':BUILDLIB'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET HMGPATH=%~dp0'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'SET PATH=%HMGPATH%\harbour-64\bin;%HMGPATH%\mingw-64\bin;%PATH%'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'hbmk2 hmg64.hbp'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'echo.'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'if %nopause% == 0 pause'+ cNewLi


        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\_BuildLib64.bat' , Out )
            If File(HG_ROOT+'\_BuildLib64.bat')
               MsgInfo("File: "+HG_ROOT+'\_BuildLib64.bat'+" Created","Success...")
            Endif
        Endif

Return
