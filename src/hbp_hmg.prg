#include <oohg.ch>
#include 'ook.ch'

DECLARE WINDOW Main

*---------------------------------------------------------------------*
Procedure hbp_hmg32
*---------------------------------------------------------------------*
   Local Out :=''
   
   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)


        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-olib/hmg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-Iinclude'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-D__HBIDE__'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-w2 -es2'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#-inc'+ cNewLi
        Out := Out + cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/debugger/dbgHB.prg'+ cNewLi
        Out := Out + 'source/debugger/dbgGUI.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/BosTaurus/h_BosTaurus.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/class/HMG_TString.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/h_UNICODE.prg'+ cNewLi
        Out := Out + 'source/h_UNICODE_STRING.prg'+ cNewLi
        Out := Out + 'source/h_EventCB.prg'+ cNewLi
        Out := Out + 'source/h_GridEx.prg'+ cNewLi
        Out := Out + 'source/h_TimePicker.prg'+ cNewLi
        Out := Out + 'source/h_HMG_HPDF.prg'+ cNewLi
        Out := Out + 'source/h_HMG_HPDF_UNICODE.prg'+ cNewLi
        Out := Out + 'source/h_HMG_Zebra.prg'+ cNewLi
        Out := Out + 'source/h_GraphBitmap.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/ErrorSys.prg'+ cNewLi
        Out := Out + 'source/h_browse.prg'+ cNewLi
        Out := Out + 'source/h_button.prg'+ cNewLi
        Out := Out + 'source/h_checkbox.prg'+ cNewLi
        Out := Out + 'source/h_combo.prg'+ cNewLi
        Out := Out + 'source/h_controlmisc.prg'+ cNewLi
        Out := Out + 'source/h_datepicker.prg'+ cNewLi
        Out := Out + 'source/h_dialogs.prg'+ cNewLi
        Out := Out + 'source/h_editbox.prg'+ cNewLi
        Out := Out + 'source/h_error.prg'+ cNewLi
        Out := Out + 'source/h_font.prg'+ cNewLi
        Out := Out + 'source/h_frame.prg'+ cNewLi
        Out := Out + 'source/h_grid.prg'+ cNewLi
        Out := Out + 'source/h_help.prg'+ cNewLi
        Out := Out + 'source/h_hotkey.prg'+ cNewLi
        Out := Out + 'source/h_image.prg'+ cNewLi
        Out := Out + 'source/h_init.prg'+ cNewLi
        Out := Out + 'source/h_ipaddress.prg'+ cNewLi
        Out := Out + 'source/h_label.prg'+ cNewLi
        Out := Out + 'source/h_listbox.prg'+ cNewLi
        Out := Out + 'source/h_media.prg'+ cNewLi
        Out := Out + 'source/h_menu.prg'+ cNewLi
        Out := Out + 'source/h_monthcal.prg'+ cNewLi
        Out := Out + 'source/h_msgbox.prg'+ cNewLi
        Out := Out + 'source/h_progressbar.prg'+ cNewLi
        Out := Out + 'source/h_radio.prg'+ cNewLi
        Out := Out + 'source/h_richeditbox.prg'+ cNewLi
        Out := Out + 'source/h_rptgen.prg'+ cNewLi
        Out := Out + 'source/h_slider.prg'+ cNewLi
        Out := Out + 'source/h_spinner.prg'+ cNewLi
        Out := Out + 'source/h_status.prg'+ cNewLi
        Out := Out + 'source/h_tab.prg'+ cNewLi
        Out := Out + 'source/h_textbox.prg'+ cNewLi
        Out := Out + 'source/h_timer.prg'+ cNewLi
        Out := Out + 'source/h_tole.prg'+ cNewLi
        Out := Out + 'source/h_toolbar.prg'+ cNewLi
        Out := Out + 'source/h_tree.prg'+ cNewLi
        Out := Out + 'source/h_winapimisc.prg'+ cNewLi
        Out := Out + 'source/h_windows.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/BosTaurus/c_BosTaurus.c'+ cNewLi
        Out := Out + 'source/c_InitCom.c'+ cNewLi
        Out := Out + 'source/c_UNICODE.c'+ cNewLi
        Out := Out + 'source/c_UNICODE_STRING.c'+ cNewLi
        Out := Out + 'source/c_EventCB.c'+ cNewLi
        Out := Out + 'source/c_GridEx.c'+ cNewLi
        Out := Out + 'source/c_TimePicker.c'+ cNewLi
        Out := Out + 'source/c_Thread.c'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/c_browse.c'+ cNewLi
        Out := Out + 'source/c_button.c'+ cNewLi
        Out := Out + 'source/c_checkbox.c'+ cNewLi
        Out := Out + 'source/c_combo.c'+ cNewLi
        Out := Out + 'source/c_controlmisc.c'+ cNewLi
        Out := Out + 'source/c_datepicker.c'+ cNewLi
        Out := Out + 'source/c_dialogs.c'+ cNewLi
        Out := Out + 'source/c_editbox.c'+ cNewLi
        Out := Out + 'source/c_font.c'+ cNewLi
        Out := Out + 'source/c_frame.c'+ cNewLi
        Out := Out + 'source/c_grid.c'+ cNewLi
        Out := Out + 'source/c_help.c'+ cNewLi
        Out := Out + 'source/c_hotkey.c'+ cNewLi
        Out := Out + 'source/c_image.c'+ cNewLi
        Out := Out + 'source/c_ipaddress.c'+ cNewLi
        Out := Out + 'source/c_label.c'+ cNewLi
        Out := Out + 'source/c_listbox.c'+ cNewLi
        Out := Out + 'source/c_media.c'+ cNewLi
        Out := Out + 'source/c_menu.c'+ cNewLi
        Out := Out + 'source/c_monthcal.c'+ cNewLi
        Out := Out + 'source/c_msgbox.c'+ cNewLi
        Out := Out + 'source/c_progressbar.c'+ cNewLi
        Out := Out + 'source/c_radio.c'+ cNewLi
        Out := Out + 'source/c_resource.c'+ cNewLi
        Out := Out + 'source/c_richeditbox.c'+ cNewLi
        Out := Out + 'source/c_slider.c'+ cNewLi
        Out := Out + 'source/c_spinner.c'+ cNewLi
        Out := Out + 'source/c_status.c'+ cNewLi
        Out := Out + 'source/c_tab.c'+ cNewLi
        Out := Out + 'source/c_textbox.c'+ cNewLi
        Out := Out + 'source/c_timer.c'+ cNewLi
        Out := Out + 'source/c_tole.c'+ cNewLi
        Out := Out + 'source/c_toolbar.c'+ cNewLi
        Out := Out + 'source/c_tree.c'+ cNewLi
        Out := Out + 'source/c_winapimisc.c'+ cNewLi
        Out := Out + 'source/c_windows.c'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\hmg32.hbp')
                 hb_Memowrit ( HG_ROOT+'\hmg32.hbp' , Out )
                 If File(HG_ROOT+'\hmg32.hbp')
                    MsgInfo("File: "+HG_ROOT+'\hmg32.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return

*---------------------------------------------------------------------*
Procedure hbp_hmg64
*---------------------------------------------------------------------*
   Local Out :=''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

        Out := Out + '-hblib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-olib-64/hmg-64'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-Iinclude'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-D__HBIDE__'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '-w2 -es2'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/debugger/dbgHB.prg'+ cNewLi
        Out := Out + 'source/debugger/dbgGUI.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/BosTaurus/h_BosTaurus.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/class/HMG_TString.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/h_UNICODE.prg'+ cNewLi
        Out := Out + 'source/h_UNICODE_STRING.prg'+ cNewLi
        Out := Out + 'source/h_EventCB.prg'+ cNewLi
        Out := Out + 'source/h_GridEx.prg'+ cNewLi
        Out := Out + 'source/h_TimePicker.prg'+ cNewLi
        Out := Out + 'source/h_HMG_HPDF.prg'+ cNewLi
        Out := Out + 'source/h_HMG_HPDF_UNICODE.prg'+ cNewLi
        Out := Out + 'source/h_HMG_Zebra.prg'+ cNewLi
        Out := Out + 'source/h_GraphBitmap.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/ErrorSys.prg'+ cNewLi
        Out := Out + 'source/h_browse.prg'+ cNewLi
        Out := Out + 'source/h_button.prg'+ cNewLi
        Out := Out + 'source/h_checkbox.prg'+ cNewLi
        Out := Out + 'source/h_combo.prg'+ cNewLi
        Out := Out + 'source/h_controlmisc.prg'+ cNewLi
        Out := Out + 'source/h_datepicker.prg'+ cNewLi
        Out := Out + 'source/h_dialogs.prg'+ cNewLi
        Out := Out + 'source/h_editbox.prg'+ cNewLi
        Out := Out + 'source/h_error.prg'+ cNewLi
        Out := Out + 'source/h_font.prg'+ cNewLi
        Out := Out + 'source/h_frame.prg'+ cNewLi
        Out := Out + 'source/h_grid.prg'+ cNewLi
        Out := Out + 'source/h_help.prg'+ cNewLi
        Out := Out + 'source/h_hotkey.prg'+ cNewLi
        Out := Out + 'source/h_image.prg'+ cNewLi
        Out := Out + 'source/h_init.prg'+ cNewLi
        Out := Out + 'source/h_ipaddress.prg'+ cNewLi
        Out := Out + 'source/h_label.prg'+ cNewLi
        Out := Out + 'source/h_listbox.prg'+ cNewLi
        Out := Out + 'source/h_media.prg'+ cNewLi
        Out := Out + 'source/h_menu.prg'+ cNewLi
        Out := Out + 'source/h_monthcal.prg'+ cNewLi
        Out := Out + 'source/h_msgbox.prg'+ cNewLi
        Out := Out + 'source/h_progressbar.prg'+ cNewLi
        Out := Out + 'source/h_radio.prg'+ cNewLi
        Out := Out + 'source/h_richeditbox.prg'+ cNewLi
        Out := Out + 'source/h_rptgen.prg'+ cNewLi
        Out := Out + 'source/h_slider.prg'+ cNewLi
        Out := Out + 'source/h_spinner.prg'+ cNewLi
        Out := Out + 'source/h_status.prg'+ cNewLi
        Out := Out + 'source/h_tab.prg'+ cNewLi
        Out := Out + 'source/h_textbox.prg'+ cNewLi
        Out := Out + 'source/h_timer.prg'+ cNewLi
        Out := Out + 'source/h_tole.prg'+ cNewLi
        Out := Out + 'source/h_toolbar.prg'+ cNewLi
        Out := Out + 'source/h_tree.prg'+ cNewLi
        Out := Out + 'source/h_winapimisc.prg'+ cNewLi
        Out := Out + 'source/h_windows.prg'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/BosTaurus/c_BosTaurus.c'+ cNewLi
        Out := Out + 'source/c_InitCom.c'+ cNewLi
        Out := Out + 'source/c_UNICODE.c'+ cNewLi
        Out := Out + 'source/c_UNICODE_STRING.c'+ cNewLi
        Out := Out + 'source/c_EventCB.c'+ cNewLi
        Out := Out + 'source/c_GridEx.c'+ cNewLi
        Out := Out + 'source/c_TimePicker.c'+ cNewLi
        Out := Out + 'source/c_Thread.c'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'source/c_browse.c'+ cNewLi
        Out := Out + 'source/c_button.c'+ cNewLi
        Out := Out + 'source/c_checkbox.c'+ cNewLi
        Out := Out + 'source/c_combo.c'+ cNewLi
        Out := Out + 'source/c_controlmisc.c'+ cNewLi
        Out := Out + 'source/c_datepicker.c'+ cNewLi
        Out := Out + 'source/c_dialogs.c'+ cNewLi
        Out := Out + 'source/c_editbox.c'+ cNewLi
        Out := Out + 'source/c_font.c'+ cNewLi
        Out := Out + 'source/c_frame.c'+ cNewLi
        Out := Out + 'source/c_grid.c'+ cNewLi
        Out := Out + 'source/c_help.c'+ cNewLi
        Out := Out + 'source/c_hotkey.c'+ cNewLi
        Out := Out + 'source/c_image.c'+ cNewLi
        Out := Out + 'source/c_ipaddress.c'+ cNewLi
        Out := Out + 'source/c_label.c'+ cNewLi
        Out := Out + 'source/c_listbox.c'+ cNewLi
        Out := Out + 'source/c_media.c'+ cNewLi
        Out := Out + 'source/c_menu.c'+ cNewLi
        Out := Out + 'source/c_monthcal.c'+ cNewLi
        Out := Out + 'source/c_msgbox.c'+ cNewLi
        Out := Out + 'source/c_progressbar.c'+ cNewLi
        Out := Out + 'source/c_radio.c'+ cNewLi
        Out := Out + 'source/c_resource.c'+ cNewLi
        Out := Out + 'source/c_richeditbox.c'+ cNewLi
        Out := Out + 'source/c_slider.c'+ cNewLi
        Out := Out + 'source/c_spinner.c'+ cNewLi
        Out := Out + 'source/c_status.c'+ cNewLi
        Out := Out + 'source/c_tab.c'+ cNewLi
        Out := Out + 'source/c_textbox.c'+ cNewLi
        Out := Out + 'source/c_timer.c'+ cNewLi
        Out := Out + 'source/c_tole.c'+ cNewLi
        Out := Out + 'source/c_toolbar.c'+ cNewLi
        Out := Out + 'source/c_tree.c'+ cNewLi
        Out := Out + 'source/c_winapimisc.c'+ cNewLi
        Out := Out + 'source/c_windows.c'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\hmg64.hbp')
                 hb_Memowrit ( HG_ROOT+'\hmg64.hbp' , Out )
                 If File(HG_ROOT+'\hmg64.hbp')
                    MsgInfo("File: "+HG_ROOT+'\hmg64.hbp'+" Created","Success...")
                 Endif
              Endif
        Endif

Return


*---------------------------------------------------------------------*
Procedure hbc_hmg32
*---------------------------------------------------------------------*
   Local Out :=''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

        Out := Out + '# paths'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'incpaths=/.'+ cNewLi
        Out := Out + 'incpaths=include'+ cNewLi
        Out := Out + 'libpaths=lib'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# main hmg libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hmg'+ cNewLi
        Out := Out + 'libs=crypt'+ cNewLi
        Out := Out + 'libs=edit'+ cNewLi
        Out := Out + 'libs=editex'+ cNewLi
        Out := Out + 'libs=graph'+ cNewLi
        Out := Out + 'libs=ini'+ cNewLi
        Out := Out + 'libs=report'+ cNewLi
        Out := Out + 'libs=hfcl'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# system libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=msvfw32'+ cNewLi
        Out := Out + 'libs=vfw32'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour contrib libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hbmysql'+ cNewLi
        Out := Out + 'libs=mysql'+ cNewLi
        Out := Out + 'libs=hbfimage'+ cNewLi
        Out := Out + 'libs=hbpgsql'+ cNewLi
        Out := Out + 'libs=sddmy'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hbvpdf'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hbct'+ cNewLi
        Out := Out + 'libs=hbwin'+ cNewLi
        Out := Out + 'libs=hbmzip'+ cNewLi
        Out := Out + 'libs=minizip'+ cNewLi
        Out := Out + 'libs=hbmemio'+ cNewLi
        Out := Out + 'libs=hbmisc'+ cNewLi
        Out := Out + 'libs=hbtip'+ cNewLi
        Out := Out + 'libs=sqlite3'+ cNewLi
        Out := Out + 'libs=hbsqlit3'+ cNewLi
        Out := Out + 'libs=sddodbc'+ cNewLi
        Out := Out + 'libs=rddsql'+ cNewLi
        Out := Out + 'libs=hbodbc'+ cNewLi
        Out := Out + 'libs=odbc32'+ cNewLi
        Out := Out + 'libs=hbhpdf'+ cNewLi
        Out := Out + 'libs=hbnetio'+ cNewLi
        Out := Out + 'libs=xhb'+ cNewLi
        Out := Out + 'libs=png'+ cNewLi
        Out := Out + 'libs=libhpdf'+ cNewLi
        Out := Out + 'libs=hbzebra'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# link compiled resources'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'sources=${hb_curdir}_temp.o'+ cNewLi
        Out := Out + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\hmg32.hbc')
                 hb_Memowrit ( HG_ROOT+'\hmg32.hbc' , Out )
                 If File(HG_ROOT+'\hmg32.hbc')
                    MsgInfo("File: "+HG_ROOT+'\hmg32.hbc'+" Created","Success...")
                 Endif
              Endif
        Endif

Return


*---------------------------------------------------------------------*
Procedure hbc_hmg64
*---------------------------------------------------------------------*
   Local Out :=''

   HG_HRB   := If(Empty(Main.Text_1.value),,Main.Text_1.value)
   HG_MINGW := If(Empty(Main.Text_2.value),,Main.Text_2.value)
   HG_ROOT  := If(Empty(Main.Text_3.value),,Main.Text_3.value)

        Out := Out + '# paths'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'incpaths=/.'+ cNewLi
        Out := Out + 'incpaths=include'+ cNewLi
        Out := Out + 'libpaths=lib-64'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# main hmg libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hmg-64'+ cNewLi
        Out := Out + 'libs=crypt-64'+ cNewLi
        Out := Out + 'libs=edit-64'+ cNewLi
        Out := Out + 'libs=editex-64'+ cNewLi
        Out := Out + 'libs=graph-64'+ cNewLi
        Out := Out + 'libs=ini-64'+ cNewLi
        Out := Out + 'libs=report-64'+ cNewLi
        Out := Out + 'libs=hfcl-64'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# system libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=msvfw32'+ cNewLi
        Out := Out + 'libs=vfw32'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# harbour contrib libs'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '#libs=hbmysql'+ cNewLi
        Out := Out + '#libs=mysql'+ cNewLi
        Out := Out + '#libs=hbfimage'+ cNewLi
        Out := Out + '#libs=hbpgsql'+ cNewLi
        Out := Out + '#libs=sddmy'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hbvpdf-64'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'libs=hbct'+ cNewLi
        Out := Out + 'libs=hbwin'+ cNewLi
        Out := Out + 'libs=hbmzip'+ cNewLi
        Out := Out + 'libs=minizip'+ cNewLi
        Out := Out + 'libs=hbmemio'+ cNewLi
        Out := Out + 'libs=hbmisc'+ cNewLi
        Out := Out + 'libs=hbtip'+ cNewLi
        Out := Out + 'libs=sqlite3'+ cNewLi
        Out := Out + 'libs=hbsqlit3'+ cNewLi
        Out := Out + 'libs=sddodbc'+ cNewLi
        Out := Out + 'libs=rddsql'+ cNewLi
        Out := Out + 'libs=hbodbc'+ cNewLi
        Out := Out + 'libs=odbc32'+ cNewLi
        Out := Out + 'libs=hbhpdf'+ cNewLi
        Out := Out + 'libs=hbnetio'+ cNewLi
        Out := Out + 'libs=xhb'+ cNewLi
        Out := Out + 'libs=png'+ cNewLi
        Out := Out + 'libs=libhpdf'+ cNewLi
        Out := Out + 'libs=hbzebra'+ cNewLi
        Out := Out + cNewLi
        Out := Out + '# link compiled resources'+ cNewLi
        Out := Out + cNewLi
        Out := Out + 'sources=${hb_curdir}_temp.o'+ cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
              If !File(HG_ROOT+'\hmg64.hbc')
                 hb_Memowrit ( HG_ROOT+'\hmg64.hbc' , Out )
                 If File(HG_ROOT+'\hmg64.hbc')
                    MsgInfo("File: "+HG_ROOT+'\hmg64.hbc'+" Created","Success...")
                 Endif
              Endif
        Endif

Return

