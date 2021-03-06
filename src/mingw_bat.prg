#include <oohg.ch>
#include "ook.ch"

Procedure ook_mingw_bat()
   Local Out := ''

   DECLARE WINDOW Main

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)
   HG_ROOT1 := GetSub(HG_MINGW)
   HG_ROOT2 := GetSub(HG_HRB)

   HG_CCOMP := HG_MINGW
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
        Out := Out + 'set HG_MINGW=' + HG_MINGW  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set HG_HRB=' + HG_HRB   + cNewLi
        Out := Out + 'set HG_CCOMP=' + HG_CCOMP + cNewLi
        Out := Out + 'set LIB_GUI=' + LIB_GUI  + cNewLi
        Out := Out + 'set LIB_HRB=' + LIB_HRB  + cNewLi
        Out := Out + 'set BIN_HRB=' + BIN_HRB  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set PATH=%HG_CCOMP%\bin;%HG_HRB%\%BIN_HRB%' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':CLEAN_LIBS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if not exist %HG_ROOT%\%LIB_GUI%\nul md %HG_ROOT%\%LIB_GUI% >nul' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\liboohg.a      del %HG_ROOT%\%LIB_GUI%\liboohg.a' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\libhbprinter.a del %HG_ROOT%\%LIB_GUI%\libhbprinter.a' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\libminiprint.a del %HG_ROOT%\%LIB_GUI%\libminiprint.a' + cNewLi
        Out := Out + '   if exist %HG_ROOT%\%LIB_GUI%\libbostaurus.a del %HG_ROOT%\%LIB_GUI%\libbostaurus.a' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':COMPILE_PRGS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   call common_make "%HG_HRB%\%LIB_HRB%\libtip.a" ' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT1' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':MORE_SETS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   set "HG_PATH=%PATH%" ' + cNewLi
        Out := Out + '   set "PATH=%HG_MINGW%\bin" ' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':COMPILE_C' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Compiling C files ...' + cNewLi
        Out := Out + '   set HG_X_FLAGS=-W -Wall -O3 -c -I%HG_HRB%\include -I%HG_MINGW%\include -I%HG_ROOT%\include -L%HG_HRB%\%LIB_HRB% -L%HG_MINGW%\lib' + cNewLi
        Out := Out + '   for %%a in (%HG_FILES1_PRG%) do if not errorlevel 1 gcc %HG_X_FLAGS% %%a.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in (%HG_FILES2_PRG%) do if not errorlevel 1 gcc %HG_X_FLAGS% %%a.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   for %%a in (%HG_FILES_C%)    do if not errorlevel 1 gcc %HG_X_FLAGS% %%a.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if exist winprint.c  gcc %HG_X_FLAGS% winprint.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if exist miniprint.c gcc %HG_X_FLAGS% miniprint.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + '   if exist bostaurus.c gcc %HG_X_FLAGS% bostaurus.c 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 1 goto EXIT2' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':BUILD_LIBS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Building libraries ...' + cNewLi
        Out := Out + '   %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\liboohg.a h_scrsaver.o h_edit.o h_edit_ex.o h_error.o h_ipaddress.o h_monthcal.o h_help.o h_status.o h_tree.o h_toolbar.o h_init.o h_media.o c_media.o c_resource.o h_cursor.o c_cursor.o h_ini.o h_report.o c_font.o h_hyperlink.o c_scrsaver.o h_hotkey.o h_graph.o c_graph.o h_richeditbox.o h_browse.o h_scroll.o h_zip.o h_progressmeter.o h_comm.o h_print.o h_splitbox.o h_scrollbutton.o h_pdf.o h_tooltip.o h_application.o h_notify.o' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + '   %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\liboohg.a h_windows.o h_form.o c_windows.o h_crypt.o h_winapimisc.o h_slider.o c_controlmisc.o c_dialogs.o c_image.o c_msgbox.o c_winapimisc.o h_button.o h_checkbox.o h_combo.o h_controlmisc.o h_datepicker.o h_editbox.o h_dialogs.o h_grid.o h_image.o h_label.o h_listbox.o h_menu.o h_msgbox.o h_frame.o h_progressbar.o h_radio.o h_spinner.o h_tab.o h_textbox.o h_timer.o h_registry.o h_internal.o h_dll.o h_checklist.o' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + '   %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\liboohg.a h_xbrowse.o h_activex.o c_activex.o h_textarray.o h_picture.o h_hotkeybox.o c_gdiplus.o h_anigif.o' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + '   if exist winprint.o  %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\libhbprinter.a winprint.o 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + '   if exist miniprint.o %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\libminiprint.a miniprint.o 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + '   if exist bostaurus.o %HG_MINGW%\bin\ar rc %HG_ROOT%\%LIB_GUI%\libbostaurus.a bostaurus.o 1>'+NameMemo()+' 2>&1' + cNewLi
        Out := Out + '   if errorlevel 2 goto EXIT3' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':SUCCESS' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   echo ! Build finished !!!' + cNewLi
        Out := Out + '   echo ! Look for new libs at %HG_ROOT%\%LIB_GUI%' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT2' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   set "PATH=%HG_PATH%" ' + cNewLi
        Out := Out + '   set HG_PATH=' + cNewLi
        Out := Out + '   for %%a in (*.o) do del %%a' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':EXIT1' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   for %%a in (h_*.c) do del %%a' + cNewLi
        Out := Out + '   if exist winprint.c  del winprint.c' + cNewLi
        Out := Out + '   if exist miniprint.c del miniprint.c' + cNewLi
        Out := Out + '   if exist bostaurus.c del bostaurus.c' + cNewLi
        Out := Out + cNewLi
        Out := Out + '   set HG_X_FLAGS=' + cNewLi
        Out := Out + '   set HG_FILES1_PRG=' + cNewLi
        Out := Out + '   set HG_FILES2_PRG=' + cNewLi
        Out := Out + '   set HG_FILES_C=' + cNewLi
        Out := Out + '   goto END' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':INFO' + cNewLi
        Out := Out + cNewLi
        Out := Out + ':END' + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\Source\'+NameMemo()+'.bat' , Out )
            If File(HG_ROOT+'\Source\'+NameMemo()+'.bat')
               MsgInfo("File: "+HG_ROOT+'\Source\'+NameMemo()+'.bat'+" Created","Success...")
            Endif
        Endif

Return
