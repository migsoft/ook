
#define cNewLi         Hb_OSNewLine()
#define cBackS         Hb_OsPathSeparator()

#define cHbVer         Version()      //Harbour
#define cCComp         Hb_Compiler()  //C Compiler
#define cOsSys         Os()           //OS System
#define cGuiVer        oohgVersion()  //GUI


#ifndef __XHARBOUR__
   #xcommand TRY                => bError := errorBlock( {|oError| break( oError ) } ) ;;
                                   BEGIN SEQUENCE
   #xcommand CATCH [<!oError!>] => errorBlock( bError ) ;;
                                   RECOVER [USING <oError>] <-oError-> ;;
                                   errorBlock( bError )

   #xtranslate MemoWrit(<a>,<b>,<c>) => hb_MemoWrit(<a>,<b>)
   #xtranslate CurDrive() => Hb_Curdrive()
#else
   #xtranslate hb_MemoWrit(<a>,<b>) => Memowrit(<a>,<b>,.N.)
   #xtranslate Hb_CurDrive() => Curdrive()
#endif


