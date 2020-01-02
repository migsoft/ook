#include <oohg.ch>
#include 'ook.ch'

*---------------------------------------------------------------------*
Procedure hbp_oohg
*---------------------------------------------------------------------*
   Local Out :=''

   DECLARE WINDOW Main

        Out := Out + '#'+ cNewLi
        Out := Out + '# $Id: oohg.hbp $'+ cNewLi
        Out := Out + '#'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# build a static library'+ cNewLi
        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# compilation is incremental (hidden .hmk folder is created)'+ cNewLi
        Out := Out + '# to make a full compilation add -rebuild flag to command line'+ cNewLi
        Out := Out + '-inc'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# name of output file'+ cNewLi
        Out := Out + '# do not use absolute or relative fixed paths'+ cNewLi
        Out := Out + '# path depends on Harbour/xHarbour and C compiler'+ cNewLi
        Out := Out + '-o${HG_ROOT}\${LIB_GUI}\${hb_name}'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# generate list of functions'+ cNewLi
        Out := Out + '# the file name must be unique'+ cNewLi
        Out := Out + '-hbx=..\include\${hb_name}_dyns.hbx'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# path to headers files (.ch)'+ cNewLi
        Out := Out + '-i..\include'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour compiler flags'+ cNewLi
        Out := Out + '# this define is needed to handle GT_GUI in Harbour builds'+ cNewLi
        Out := Out + '-n -q0 -w3 -es2 -D_OOHG_CONSOLEMODE_'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# c compiler flags             TODO: Check others'+ cNewLi
        Out := Out + '#-cflag=-Wno-unused'+ cNewLi
        Out := Out + '# uncomment the following to check for more warnings'+ cNewLi
        Out := Out + '#-cflag=-fdiagnostics-show-option'+ cNewLi
        Out := Out + '#-cflag=-pedantic'+ cNewLi
        Out := Out + '#-cflag=-Wall'+ cNewLi
        Out := Out + '#-cflag=-Wcast-align'+ cNewLi
        Out := Out + '#-cflag=-Wcast-qual'+ cNewLi
        Out := Out + '#-cflag=-Wconversion'+ cNewLi
        Out := Out + '#-cflag=-Wdisabled-optimization'+ cNewLi
        Out := Out + '#-cflag=-Wextra'+ cNewLi
        Out := Out + '#-cflag=-Wformat=2'+ cNewLi
        Out := Out + '#-cflag=-Winit-self'+ cNewLi
        Out := Out + '#-cflag=-Wlogical-op'+ cNewLi
        Out := Out + '#-cflag=-Wmissing-include-dirs'+ cNewLi
        Out := Out + '#-cflag=-Wno-variadic-macros'+ cNewLi
        Out := Out + '#-cflag=-Wshadow'+ cNewLi
        Out := Out + '#-cflag=-Wundef'+ cNewLi
        Out := Out + '#-cflag=-Wint-to-pointer-cast'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#alerts on exit'+ cNewLi
        Out := Out + '-beep'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# uncomment the following line to build .ppo files'+ cNewLi
        Out := Out + '#-p.\ppo\'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# files to compile'+ cNewLi
        Out := Out + 'c_activex.c'+ cNewLi
        Out := Out + 'c_controlmisc.c'+ cNewLi
        Out := Out + 'c_cursor.c'+ cNewLi
        Out := Out + 'c_dialogs.c'+ cNewLi
        Out := Out + 'c_font.c'+ cNewLi
        Out := Out + 'c_gdiplus.c'+ cNewLi
        Out := Out + 'c_graph.c'+ cNewLi
        Out := Out + 'c_image.c'+ cNewLi
        Out := Out + 'c_media.c'+ cNewLi
        Out := Out + 'c_msgbox.c'+ cNewLi
        Out := Out + 'c_resource.c'+ cNewLi
        Out := Out + 'c_scrsaver.c'+ cNewLi
        Out := Out + 'c_winapimisc.c'+ cNewLi
        Out := Out + 'c_windows.c'+ cNewLi
        Out := Out + 'h_activex.prg'+ cNewLi
        Out := Out + 'h_anigif.prg'+ cNewLi
        Out := Out + 'h_application.prg'+ cNewLi
        Out := Out + 'h_browse.prg'+ cNewLi
        Out := Out + 'h_button.prg'+ cNewLi
        Out := Out + 'h_checkbox.prg'+ cNewLi
        Out := Out + 'h_checklist.prg'+ cNewLi
        Out := Out + 'h_combo.prg'+ cNewLi
        Out := Out + 'h_comm.prg'+ cNewLi
        Out := Out + 'h_controlmisc.prg'+ cNewLi
        Out := Out + 'h_crypt.prg'+ cNewLi
        Out := Out + 'h_cursor.prg'+ cNewLi
        Out := Out + 'h_datepicker.prg'+ cNewLi
        Out := Out + 'h_dialogs.prg'+ cNewLi
        Out := Out + 'h_dll.prg'+ cNewLi
        Out := Out + 'h_edit.prg'+ cNewLi
        Out := Out + 'h_edit_ex.prg'+ cNewLi
        Out := Out + 'h_editbox.prg'+ cNewLi
        Out := Out + 'h_error.prg'+ cNewLi
        Out := Out + 'h_form.prg'+ cNewLi
        Out := Out + 'h_frame.prg'+ cNewLi
        Out := Out + 'h_graph.prg'+ cNewLi
        Out := Out + 'h_grid.prg'+ cNewLi
        Out := Out + 'h_help.prg'+ cNewLi
        Out := Out + 'h_hotkey.prg'+ cNewLi
        Out := Out + 'h_hotkeybox.prg'+ cNewLi
        Out := Out + 'h_hyperlink.prg'+ cNewLi
        Out := Out + 'h_image.prg'+ cNewLi
        Out := Out + 'h_ini.prg'+ cNewLi
        Out := Out + 'h_init.prg'+ cNewLi
        Out := Out + 'h_internal.prg'+ cNewLi
        Out := Out + 'h_ipaddress.prg'+ cNewLi
        Out := Out + 'h_label.prg'+ cNewLi
        Out := Out + 'h_listbox.prg'+ cNewLi
        Out := Out + 'h_media.prg'+ cNewLi
        Out := Out + 'h_menu.prg'+ cNewLi
        Out := Out + 'h_monthcal.prg'+ cNewLi
        Out := Out + 'h_msgbox.prg'+ cNewLi
        Out := Out + 'h_notify.prg'+ cNewLi
        Out := Out + 'h_pdf.prg'+ cNewLi
        Out := Out + 'h_picture.prg'+ cNewLi
        Out := Out + 'h_print.prg'+ cNewLi
        Out := Out + 'h_progressbar.prg'+ cNewLi
        Out := Out + 'h_progressmeter.prg'+ cNewLi
        Out := Out + 'h_radio.prg'+ cNewLi
        Out := Out + 'h_registry.prg'+ cNewLi
        Out := Out + 'h_report.prg'+ cNewLi
        Out := Out + 'h_richeditbox.prg'+ cNewLi
        Out := Out + 'h_scroll.prg'+ cNewLi
        Out := Out + 'h_scrollbutton.prg'+ cNewLi
        Out := Out + 'h_scrsaver.prg'+ cNewLi
        Out := Out + 'h_slider.prg'+ cNewLi
        Out := Out + 'h_spinner.prg'+ cNewLi
        Out := Out + 'h_splitbox.prg'+ cNewLi
        Out := Out + 'h_status.prg'+ cNewLi
        Out := Out + 'h_tab.prg'+ cNewLi
        Out := Out + 'h_textarray.prg'+ cNewLi
        Out := Out + 'h_textbox.prg'+ cNewLi
        Out := Out + 'h_timer.prg'+ cNewLi
        Out := Out + 'h_toolbar.prg'+ cNewLi
        Out := Out + 'h_tooltip.prg'+ cNewLi
        Out := Out + 'h_tree.prg'+ cNewLi
        Out := Out + 'h_winapimisc.prg'+ cNewLi
        Out := Out + 'h_windows.prg'+ cNewLi
        Out := Out + 'h_xbrowse.prg'+ cNewLi
        Out := Out + 'h_zip.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# EOF'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\Source\oohg.hbp')
                 hb_Memowrit ( HG_ROOT+'\Source\oohg.hbp' , Out )
                 If File(HG_ROOT+'\Source\oohg.hbp')
                    MsgInfo("File: "+HG_ROOT+'\Source\oohg.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return


*---------------------------------------------------------------------*
Procedure hbp_miniprint
*---------------------------------------------------------------------*
    Local Out :=''

        Out := Out + '#'+ cNewLi
        Out := Out + '# $Id: miniprint.hbp $'+ cNewLi
        Out := Out + '#'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# build a static library'+ cNewLi
        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# compilation is incremental (hidden .hmk folder is created)'+ cNewLi
        Out := Out + '# to make a full compilation add -rebuild flag to command line'+ cNewLi
        Out := Out + '-inc'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# name of output file'+ cNewLi
        Out := Out + '# do not use absolute or relative fixed paths'+ cNewLi
        Out := Out + '# path depends on Harbour/xHarbour and C compiler'+ cNewLi
        Out := Out + '-o${HG_ROOT}\${LIB_GUI}\${hb_name}'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# generate list of functions'+ cNewLi
        Out := Out + '# the file name must be unique'+ cNewLi
        Out := Out + '-hbx=..\include\${hb_name}_dyns.hbx'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# path to headers files (.ch)'+ cNewLi
        Out := Out + '-i..\include'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour compiler flags'+ cNewLi
        Out := Out + '# this define is needed to handle GT_GUI in Harbour builds'+ cNewLi
        Out := Out + '-n -q0 -w3 -es2 -D_OOHG_CONSOLEMODE_'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#alerts on exit'+ cNewLi
        Out := Out + '-beep'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# uncomment the following line to build .ppo files'+ cNewLi
        Out := Out + '#-p.\ppo\'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# files to compile'+ cNewLi
        Out := Out + 'miniprint.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# EOF'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\Source\miniprint.hbp')
                 hb_Memowrit ( HG_ROOT+'\Source\miniprint.hbp' , Out )
                 If File(HG_ROOT+'\Source\miniprint.hbp')
                    MsgInfo("File: "+HG_ROOT+'\Source\miniprint.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return

*---------------------------------------------------------------------*
Procedure hbp_hbprinter
*---------------------------------------------------------------------*
    Local Out :=''

        Out := Out + '#'+ cNewLi
        Out := Out + '# $Id: hbprinter.hbp $'+ cNewLi
        Out := Out + '#'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# build a static library'+ cNewLi
        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# compilation is incremental (hidden .hmk folder is created)'+ cNewLi
        Out := Out + '# to make a full compilation add -rebuild flag to command line'+ cNewLi
        Out := Out + '-inc'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# name of output file'+ cNewLi
        Out := Out + '# do not use absolute or relative fixed paths'+ cNewLi
        Out := Out + '# path depends on Harbour/xHarbour and C compiler'+ cNewLi
        Out := Out + '-o${HG_ROOT}\${LIB_GUI}\${hb_name}'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# generate list of functions'+ cNewLi
        Out := Out + '# the file name must be unique'+ cNewLi
        Out := Out + '-hbx=..\include\${hb_name}_dyns.hbx'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# path to headers files (.ch)'+ cNewLi
        Out := Out + '-i..\include'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour compiler flags'+ cNewLi
        Out := Out + '# this define is needed to handle GT_GUI in Harbour builds'+ cNewLi
        Out := Out + '-n -q0 -w3 -es2 -D_OOHG_CONSOLEMODE_'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#alerts on exit'+ cNewLi
        Out := Out + '-beep'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# uncomment the following line to build .ppo files'+ cNewLi
        Out := Out + '#-p.\ppo\'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# files to compile'+ cNewLi
        Out := Out + 'winprint.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# EOF'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\Source\hbprinter.hbp')
                 hb_Memowrit ( HG_ROOT+'\Source\hbprinter.hbp' , Out )
                 If File(HG_ROOT+'\Source\hbprinter.hbp')
                    MsgInfo("File: "+HG_ROOT+'\Source\hbprinter.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return

*---------------------------------------------------------------------*
Procedure hbp_bostaurus
*---------------------------------------------------------------------*
    Local Out :=''

        Out := Out + '#'+ cNewLi
        Out := Out + '# $Id: bostaurus.hbp $'+ cNewLi
        Out := Out + '#'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# build a static library'+ cNewLi
        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# compilation is incremental (hidden .hmk folder is created)'+ cNewLi
        Out := Out + '# to make a full compilation add -rebuild flag to command line'+ cNewLi
        Out := Out + '-inc'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# name of output file'+ cNewLi
        Out := Out + '# do not use absolute or relative fixed paths'+ cNewLi
        Out := Out + '# path depends on Harbour/xHarbour and C compiler'+ cNewLi
        Out := Out + '-o${HG_ROOT}\${LIB_GUI}\${hb_name}'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# generate list of functions'+ cNewLi
        Out := Out + '# the file name must be unique'+ cNewLi
        Out := Out + '-hbx=..\include\${hb_name}_dyns.hbx'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# path to headers files (.ch)'+ cNewLi
        Out := Out + '-i..\include'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour compiler flags'+ cNewLi
        Out := Out + '# this define is needed to handle GT_GUI in Harbour builds'+ cNewLi
        Out := Out + '-n -q0 -w3 -es2 -D_OOHG_CONSOLEMODE_'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# c compiler flags             TODO: Check others'+ cNewLi
        Out := Out + '-cflag=-Wno-unused'+ cNewLi
        Out := Out + '# uncomment the following to check for more warnings'+ cNewLi
        Out := Out + '#-cflag=-fdiagnostics-show-option'+ cNewLi
        Out := Out + '#-cflag=-pedantic'+ cNewLi
        Out := Out + '#-cflag=-Wall'+ cNewLi
        Out := Out + '#-cflag=-Wcast-align'+ cNewLi
        Out := Out + '#-cflag=-Wcast-qual'+ cNewLi
        Out := Out + '#-cflag=-Wconversion'+ cNewLi
        Out := Out + '#-cflag=-Wdisabled-optimization'+ cNewLi
        Out := Out + '#-cflag=-Wextra'+ cNewLi
        Out := Out + '#-cflag=-Wformat=2'+ cNewLi
        Out := Out + '#-cflag=-Winit-self'+ cNewLi
        Out := Out + '#-cflag=-Wlogical-op'+ cNewLi
        Out := Out + '#-cflag=-Wmissing-include-dirs'+ cNewLi
        Out := Out + '#-cflag=-Wno-variadic-macros'+ cNewLi
        Out := Out + '#-cflag=-Wshadow'+ cNewLi
        Out := Out + '#-cflag=-Wundef'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#alerts on exit'+ cNewLi
        Out := Out + '-beep'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# uncomment the following line to build .ppo files'+ cNewLi
        Out := Out + '#-p.\ppo\'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# files to compile'+ cNewLi
        Out := Out + 'bostaurus.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# EOF'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\Source\bostaurus.hbp')
                 hb_Memowrit ( HG_ROOT+'\Source\bostaurus.hbp' , Out )
                 If File(HG_ROOT+'\Source\bostaurus.hbp')
                    MsgInfo("File: "+HG_ROOT+'\Source\bostaurus.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return
