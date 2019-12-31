#include <oohg.ch>
#include "ook.ch"

Procedure ook_msvc_mk2()
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
   
   If !File(HG_ROOT+'\Source\'+'oohg.hbp')
       hbp_oohg()
   Endif
   If !File(HG_ROOT+'\Source\'+'miniprint.hbp')
       hbp_miniprint()
   Endif
   If !File(HG_ROOT+'\Source\'+'hbprinter.hbp')
       hbp_hbprinter()
   Endif
   If !File(HG_ROOT+'\Source\'+'bostaurus.hbp')
       hbp_bostaurus()
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
        Out := Out + 'set HG_VC=' + HG_VC  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set HG_HRB=' + HG_HRB   + cNewLi
        Out := Out + 'set HG_CCOMP=' + HG_CCOMP + cNewLi
        Out := Out + 'set LIB_GUI=' + LIB_GUI  + cNewLi
        Out := Out + 'set LIB_HRB=' + LIB_HRB  + cNewLi
        Out := Out + 'set BIN_HRB=' + BIN_HRB  + cNewLi
        Out := Out + cNewLi
        Out := Out + 'set PATH=%HG_CCOMP%\bin;%HG_HRB%\%BIN_HRB%' + cNewLi
        Out := Out + 'IF EXIST "%HG_VC%"\vcvarsall.bat CALL "%HG_VC%"\vcvarsall.bat' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'Echo ! Compilando ooHG...' + cNewLi
        Out := Out + 'hbmk2 oohg.hbp      %2 %3 %4 %5 %6 %7 %8 %9 >> '+NameMemo()+' 2>&1' +cNewLi
        Out := Out + cNewLi
        Out := Out + 'Echo ! Compilando Miniprint...' + cNewLi
        Out := Out + 'hbmk2 miniprint.hbp %2 %3 %4 %5 %6 %7 %8 %9 >> '+NameMemo()+' 2>&1' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'Echo ! Compilando Hbprinter...' + cNewLi
        Out := Out + 'hbmk2 hbprinter.hbp %2 %3 %4 %5 %6 %7 %8 %9 >> '+NameMemo()+' 2>&1' + cNewLi
        Out := Out + cNewLi
        Out := Out + 'Echo ! Compilando Bostaurus...' + cNewLi
        Out := Out + 'hbmk2 bostaurus.hbp %2 %3 %4 %5 %6 %7 %8 %9 >> '+NameMemo()+' 2>&1' + cNewLi
        Out := Out + cNewLi

        If !Empty(Main.Text_1.value) .and. !Empty(Main.Text_2.value) .and. !Empty(Main.Text_3.value)
            hb_Memowrit ( HG_ROOT+'\Source\'+NameMemo()+'.bat' , Out )
            If File(HG_ROOT+'\Source\'+NameMemo()+'.bat')
               MsgInfo("File: "+HG_ROOT+'\Source\'+NameMemo()+'.bat'+" Created","Success...")
            Endif
        Endif

Return
