 * Copyright 2019 Miguel Angel Juárez Apaza <migsoft@oohg.org>
 * OOHG (Object Oriented Harbour GUI) Project
 * https://migsoft.ml - https://oohg.github.io

#include <oohg.ch>
#include 'ook.ch'

*---------------------------------------------------------------------*
FUNCTION Main
*---------------------------------------------------------------------*

   LOAD WINDOW Main
   Main.Center
   Main.Activate

RETURN( NIL )

Function NameMemo()
   Local cname := ''

   Do Case

      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // hbmk2 - Mingw - Harbour - x32 - oohg
           cname := 'hbmk2_mingw_hb_x32'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // hbmk2 - Borland - Harbour - x32
           cname := 'hbmk2_bcc_hb_x32'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // hbmk2 - Pelles - Harbour - x32
           cname := 'hbmk2_pocc_hb_x32'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // hbmk2 - msvc - Harbour - x32
           cname := 'hbmk2_msvc_hb_x32'

      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // hbmk2 - Mingw - Harbour - x64
           cname := 'hbmk2_mingw_hb_x64'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // hbmk2 - Borland - Harbour - x64
           cname := 'hbmk2_bcc_hb_x64'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // hbmk2 - Pelles - Harbour - x64
           cname := 'hbmk2_pocc_hb_x64'
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // hbmk2 - msvc - Harbour - x64
           cname := 'hbmk2_msvc_hb_x64'

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1 // batch - Mingw - Harbour - x32
           cname := 'bat_mingw_hb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1 // batch - Borland - Harbour - x32
           cname := 'bat_bcc_hb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - Pelles - Harbour - x32
           cname := 'bat_pocc_hb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - msvc - Harbour - x32
           cname := 'bat_msvc_hb_x32'

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1 // batch - Mingw - Harbour - x64
           cname := 'bat_mingw_hb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1 // batch - Borland - Harbour - x64
           cname := 'bat_bcc_hb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - Pelles - Harbour - x64
           cname := 'bat_pocc_hb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - msvc - Harbour - x64
           cname := 'bat_msvc_hb_x64'

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - Mingw - xHarbour - x32
           cname := 'bat_mingw_xhb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - Borland - xHarbour - x32
           cname := 'bat_bcc_xhb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - Pelles - xHarbour - x32
           cname := 'bat_pocc_xhb_x32'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_3.value == 1  // batch - msvc - xHarbour - x32
           cname := 'bat_msvc_xhb_x32'

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - Mingw - xHarbour - x64
           cname := 'bat_mingw_xhb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - Borland - xHarbour - x64
           cname := 'bat_bcc_xhb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - Pelles - xHarbour - x64
           cname := 'bat_pocc_xhb_x64'
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 2 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_3.value == 1  // batch - msvc - xHarbour - x64
           cname := 'bat_msvc_xhb_x64'

   EndCase

Return( cname )

*---------------------------------------------------------------------*
Procedure Disable_Hbmk2()
*---------------------------------------------------------------------*

  If Main.Combo_1.value == 2  // xharbour
     Main.Combo_Mode.value := 2
  Endif

Return

*---------------------------------------------------------------------*
Procedure Enable_Hbmk2()
*---------------------------------------------------------------------*

  If Main.Combo_Mode.value == 1  // harbour
     Main.Combo_1.value := 1
  Endif

Return

*---------------------------------------------------------------------*
Procedure ook_Go()
*---------------------------------------------------------------------*
   Do Case
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // hbmk2 - Mingw - Harbour
           ook_mingw_mk2()
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // hbmk2 - Borland - Harbour
           ook_bcc_mk2()
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // hbmk2 - Pelles - Harbour
           ook_pocc_mk2()
      Case Main.Combo_Mode.value == 1 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // hbmk2 - msvc - Harbour
           ook_msvc_mk2()

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // batch - Mingw - Harbour
           ook_mingw_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // batch - Borland - Harbour
           ook_bcc_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // batch - Pelles - Harbour
           ook_pocc_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 1 .and. Main.Combo_3.value == 1   // batch - msvc - Harbour
           ook_msvc_bat()

      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 1 .and. Main.Combo_1.value == 2 .and. Main.Combo_3.value == 1   // batch - Mingw - xHarbour
           ook_xmingw_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 2 .and. Main.Combo_1.value == 2 .and. Main.Combo_3.value == 1   // batch - Borland - xHarbour
           ook_xbcc_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 3 .and. Main.Combo_1.value == 2 .and. Main.Combo_3.value == 1   // batch - Pelles - xHarbour
           ook_xpocc_bat()
      Case Main.Combo_Mode.value == 2 .and. Main.Combo_2.value == 4 .and. Main.Combo_1.value == 2 .and. Main.Combo_3.value == 1   // batch - msvc - xHarbour
           ook_xmsvc_bat()

      Case Main.Combo_3.value == 2 .and. Main.Combo_Bits.value == 1 .and. Main.Combo_2.value == 1  // batch - Mingw - Harbour - x32
           ook_mk2_hmg1()
      Case Main.Combo_3.value == 2 .and. Main.Combo_Bits.value == 2 .and. Main.Combo_2.value == 1  // batch - Mingw - Harbour - x64
           ook_mk2_hmg3()
   EndCase

Return

*---------------------------------------------------------------------*
Procedure Commom_Batch()
*---------------------------------------------------------------------*
    Local Out :=''

        Out := Out + '@echo off'+ cNewLi
        Out := Out + 'rem ---------------------------------------------------------------' + cNewLi
        Out := Out + 'rem Copyright 2019 Miguel Angel Juárez Apaza <migsoft@oohg.org>    ' + cNewLi
        Out := Out + 'rem Batch Generated by OOK Tool to build OOHG Library              ' + cNewLi
        Out := Out + 'rem ---------------------------------------------------------------' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':MAIN' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if "%1"         == "" goto INFO' + cNewLi
        Out := Out + '   if "%HG_ROOT%"  == "" goto INFO' + cNewLi
        Out := Out + '   if "%HG_HRB%"   == "" goto INFO' + cNewLi
        Out := Out + '   if "%BIN_HRB%"  == "" goto INFO' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   rem *** File list ***'+ cNewLi
        Out := Out + '   set HG_FILES1_PRG=h_error h_windows h_form h_ipaddress h_monthcal h_help h_status h_tree h_toolbar h_init h_media h_winapimisc h_slider h_button h_checkbox h_combo h_controlmisc h_datepicker h_editbox h_dialogs h_grid h_image h_label h_listbox h_menu h_msgbox h_frame h_progressbar h_radio h_spinner h_tab h_textbox h_application h_notify' + cNewLi
        Out := Out + '   set HG_FILES2_PRG=h_graph h_richeditbox h_edit h_edit_ex h_scrsaver h_browse h_crypt h_zip h_comm h_print h_scroll h_splitbox h_progressmeter h_scrollbutton h_xbrowse h_internal h_textarray h_hotkeybox h_activex h_pdf h_hotkey h_hyperlink h_tooltip h_picture h_dll h_checklist h_timer h_cursor h_ini h_report h_registry h_anigif' + cNewLi
        Out := Out + '   set HG_FILES_C=c_media c_controlmisc c_resource c_cursor c_font c_dialogs c_windows c_image c_msgbox c_winapimisc c_scrsaver c_graph c_activex c_gdiplus' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   rem *** Check for Harbour/xHarbour ***' + cNewLi
        Out := Out + '   if exist %1 goto XHARBOUR_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':HARBOUR_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   rem This define is needed to handle GT_GUI in Harbour builds' + cNewLi
        Out := Out + '   set HG_X_FLAGS=-i"%HG_HRB%\include;%HG_ROOT%\include" -n1 -w3 -gc0 -es2 -d_OOHG_CONSOLEMODE_ %2' + cNewLi
        Out := Out + '   goto PRG_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':XHARBOUR_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   set HG_X_FLAGS=-i"%HG_HRB%\include;%HG_ROOT%\include" -n1 -w3 -gc0 -es2 %2' + cNewLi
        Out := Out + '   goto PRG_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':PRG_COMPILE' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Compiling prg files ...' + cNewLi
        Out := Out + '   for %%a in ( %HG_FILES1_PRG% %HG_FILES2_PRG% ) do (' + cNewLi
        Out := Out + '      %HG_HRB%\%BIN_HRB%\harbour %%a %HG_X_FLAGS% %~3 >> common_build.log 2>&1' + cNewLi
        Out := Out + '     if errorlevel 1 (' + cNewLi
        Out := Out + '         set HG_ERRORAT=%%a' + cNewLi
        Out := Out + '         goto ERROR ) )' + cNewLi
        Out := Out + '   if not exist winprint.prg echo ! winprint.prg is missing !!!' + cNewLi
        Out := Out + '   if not exist winprint.prg goto ERROR' + cNewLi
        Out := Out + '   if exist winprint.prg  %HG_HRB%\%BIN_HRB%\harbour winprint  %HG_X_FLAGS% %~3 >> common_build.log 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto ERROR' + cNewLi
        Out := Out + '   if not exist miniprint.prg echo ! miniprint.prg is missing !!!' + cNewLi
        Out := Out + '   if not exist miniprint.prg goto ERROR' + cNewLi
        Out := Out + '   if exist miniprint.prg  %HG_HRB%\%BIN_HRB%\harbour miniprint  %HG_X_FLAGS% %~3 >> common_build.log 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto ERROR' + cNewLi
        Out := Out + '   if not exist bostaurus.prg echo ! bostaurus.prg is missing !!!' + cNewLi
        Out := Out + '   if not exist bostaurus.prg goto ERROR' + cNewLi
        Out := Out + '   if exist bostaurus.prg %HG_HRB%\%BIN_HRB%\harbour bostaurus %HG_X_FLAGS% %~3 >> common_build.log 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto ERROR' + cNewLi
        Out := Out + '   goto END' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':INFO' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! This file must be called from MAKELIB.BAT !!!' + cNewLi
        Out := Out + '   echo.' + cNewLi
        Out := Out + '   goto END' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':ERROR' + cNewLi
        Out := Out + '   if not .%3.==.. echo ! Error compiling %HG_ERRORAT%.prg !!!' + cNewLi
        Out := Out + '   if not .%3.==.. echo.' + cNewLi
        Out := Out + '   set HG_ERRORAT=' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':END' + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\Source\'+'common_make.bat' , Out )
            If File(HG_ROOT+'\Source\'+'common_make.bat')
               MsgInfo("File: "+HG_ROOT+'\Source\'+'common_make.bat'+" Created","Success...")
            Endif
        Endif

 Return

*---------------------------------------------------------------------*
Procedure CPUArch()
*---------------------------------------------------------------------*
    If !IsOS64()
       main.check_64.value := .F.
    Endif
Return

*---------------------------------------------------------------------*
Function IsOS64()
*---------------------------------------------------------------------*
    Local Win64 := GetENV("ProgramFiles(x86)")
Return( iif( Empty(Win64), .F. , .T. ) )

*---------------------------------------------------------------------*
Function W_G_compiler()
*---------------------------------------------------------------------*
   Do Case
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 1
           If Main.Combo_Ver.value == 4
              If Main.Combo_Bits.value == 2
                  cLib := "lib\hb\clang64"
              Else
                  cLib := "lib\hb\clang"
              Endif
           Else
              If Main.Combo_Bits.value == 2
                  cLib := "lib\hb\mingw64"
              Else
                  cLib := "lib\hb\mingw"
              Endif
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 2
           If Main.Combo_Bits.value == 2
              cLib := "lib\hb\bcc64"
           Else
              cLib := "lib\hb\bcc"
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 3
           If Main.Combo_Bits.value == 2
              cLib := "lib\hb\pocc64"
           Else
              cLib := "lib\hb\pocc"
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 4
           If Main.Combo_Bits.value == 2
              cLib := "lib\hb\msvc64"
           Else
              cLib := "lib\hb\msvc"
           Endif
      Case Main.Combo_1.value == 2 .and. Main.Combo_2.value == 1
           If Main.Combo_Bits.value == 2
              cLib := "lib\xhb\mingw64"
           Else
              cLib := "lib\xhb\mingw"
           Endif
      Case Main.Combo_1.value == 2 .and. Main.Combo_2.value == 2
           If Main.Combo_Bits.value == 2
              cLib := "lib\xhb\bcc64"
           Else
              cLib := "lib\xhb\bcc"
           Endif
      Case Main.Combo_1.value == 2 .and. Main.Combo_2.value == 3
           If Main.Combo_Bits.value == 2
              cLib := "lib\xhb\pocc64"
           Else
              cLib := "lib\xhb\pocc"
           Endif
      Case Main.Combo_1.value == 2 .and. Main.Combo_2.value == 4
           If Main.Combo_Bits.value == 2
              cLib := "lib\xhb\msvc64"
           Else
              cLib := "lib\xhb\msvc"
           Endif
   EndCase
Return( cLib )

*---------------------------------------------------------------------*
Function W_H_compiler()
*---------------------------------------------------------------------*
   Do Case
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 1
           If Main.Combo_Bits.value == 2
              cLib := "lib\win\mingw64"
           Else
              cLib := "lib\win\mingw"
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 2
           If Main.Combo_Bits.value == 2
              cLib := "lib\win\bcc64"
           Else
              cLib := "lib\win\bcc"
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 3
           If Main.Combo_Bits.value == 2
              cLib := "lib\win\pocc64"
           Else
              cLib := "lib\win\pocc"
           Endif
      Case Main.Combo_1.value == 1 .and. Main.Combo_2.value == 4
           If Main.Combo_Bits.value == 2
              cLib := "lib\win\msvc64"
           Else
              cLib := "lib\win\msvc"
           Endif
      Case Main.Combo_1.value == 2
           cLib := "lib"
   EndCase
Return( cLib )

*---------------------------------------------------------------------*
FUNCTION GetPath(cFileName)  // Ruta y nombre completo del archivo
*---------------------------------------------------------------------*
  LOCAL cTrim  := ALLTRIM(cFileName)
  LOCAL nColon := AT(':', cTrim)
  LOCAL cDrive
  LOCAL cPath

  IF EMPTY(nColon)
    cDrive := Upper(DISKNAME())
    IF LEFT(cTrim, 1) == '\'
      cPath := cDrive + ':' + cTrim
    ELSE
      cPath := cDrive + ':\' + CURDIR(cDrive) + '\' + cTrim
    ENDIF

  ELSE
    IF SUBSTR(cTrim, nColon + 1, 1) == '\'
      cPath := cTrim
    ELSE
      cDrive := LEFT(cTrim, nColon - 1)
      cPath  := cDrive + ':\' + CURDIR(cDrive) + '\' + ;
        SUBSTR(cTrim, nColon + 1)
    ENDIF
  ENDIF
RETURN( cPath )

*---------------------------------------------------------------------*
FUNCTION GetSub(cFileName, lGetDefault) // Folder donde se encuentra
*---------------------------------------------------------------------*
  LOCAL cTrim  := ;
    IF(EMPTY(lGetDefault), ALLTRIM(cFileName), GetPath(cFileName))
  LOCAL nSlash := MAX(RAT('\', cTrim), AT(':', cTrim))
  LOCAL cSub   := LEFT(cTrim, nSlash - 1)

RETURN cSub

*---------------------------------------------------------------------*
FUNCTION GetName(cFileName)  // Nombre y extensión del archivo
*---------------------------------------------------------------------*
  LOCAL cTrim  := ALLTRIM(cFileName)
  LOCAL nSlash := MAX(RAT('\', cTrim), AT(':', cTrim))
  LOCAL cName  := IF(EMPTY(nSlash), cTrim, SUBSTR(cTrim, nSlash + 1))
RETURN( cName )

*---------------------------------------------------------------------*
FUNCTION GetExt(cFileName)    //Extensión del archivo  ".exe"
*---------------------------------------------------------------------*
  LOCAL cTrim  := ALLTRIM(cFileName)
  LOCAL nDot   := RAT('.', cTrim)
  LOCAL nSlash := MAX(RAT('\', cTrim), AT(':', cTrim))
  LOCAL cExt   := IF(nDot <= nSlash .OR. nDot == nSlash + 1, ;
    '', SUBSTR(cTrim, nDot))
RETURN( cExt )

*---------------------------------------------------------------------*
FUNCTION DelExt(cFileName)  //Ruta y nombre de archivo sin extensión
*---------------------------------------------------------------------*
  LOCAL cTrim  := ALLTRIM(cFileName)
  LOCAL nDot   := RAT('.', cTrim)
  LOCAL nSlash := MAX(RAT('\', cTrim), AT(':', cTrim))
  LOCAL cBase  := IF(nDot <= nSlash .OR. nDot == nSlash + 1, ;
                  cTrim, LEFT(cTrim, nDot - 1))
RETURN( cBase )
