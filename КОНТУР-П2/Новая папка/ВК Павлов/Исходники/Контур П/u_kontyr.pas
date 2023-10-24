unit u_kontyr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, XPMan, StdCtrls, jpeg, Buttons, ToolWin,
  ActnMan, ActnCtrls, ActnMenus, MPlayer, Masks, Registry;

type
  Tkontyr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    GroupBox1: TGroupBox;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label55: TLabel;
    IOtklActivSet1: TImage;
    IOtklSet1: TImage;
    IVklSet1: TImage;
    IVklActivSet1: TImage;
    Image22: TImage;
    Image23: TImage;
    Label56: TLabel;
    IOtkl1: TImage;
    IOtklActiv1: TImage;
    IVkl1: TImage;
    IVklActiv1: TImage;
    Label57: TLabel;
    Label58: TLabel;
    IOtkl2: TImage;
    IOtklActiv2: TImage;
    IVkl2: TImage;
    IVklActiv2: TImage;
    Label59: TLabel;
    Label60: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    IKnopkaOtkl1: TImage;
    IKnopkaOtklActiv1: TImage;
    IKnopkaVkl1: TImage;
    IKnopkaVklActiv1: TImage;
    Panel3: TPanel;
    Label5: TLabel;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label15: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Image21: TImage;
    I1: TImage;
    Ia1: TImage;
    I2: TImage;
    Ia2: TImage;
    I3: TImage;
    Ia3: TImage;
    I0: TImage;
    Ia0: TImage;
    Ip1: TImage;
    Ipa1: TImage;
    Ic1: TImage;
    Ica1: TImage;
    I4: TImage;
    Ia4: TImage;
    I5: TImage;
    Ia5: TImage;
    I6: TImage;
    Ia6: TImage;
    I7: TImage;
    Ia7: TImage;
    I8: TImage;
    Ia8: TImage;
    I9: TImage;
    Ia9: TImage;
    Iinf1: TImage;
    Iinfa1: TImage;
    Ic2: TImage;
    Ica2: TImage;
    Iycc1: TImage;
    Iycca1: TImage;
    Label61: TLabel;
    GroupBox2: TGroupBox;
    Label54: TLabel;
    Ik0: TImage;
    Ika0: TImage;
    GroupBox3: TGroupBox;
    Ik1: TImage;
    Ika1: TImage;
    Ik2: TImage;
    Ika2: TImage;
    Ik3: TImage;
    Ika3: TImage;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit1: TEdit;
    Edit9: TEdit;
    GroupBox4: TGroupBox;
    Ip2: TImage;
    Ip3: TImage;
    Ip4: TImage;
    Ipa2: TImage;
    Ipa3: TImage;
    Ipa4: TImage;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Itymbotkl1: TImage;
    Label65: TLabel;
    Label66: TLabel;
    Itymbotkla1: TImage;
    Itymbvkl1: TImage;
    Itymbvkla1: TImage;
    Ip5: TImage;
    Ip6: TImage;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Ipa5: TImage;
    Ipa6: TImage;
    Ip7: TImage;
    Ipa7: TImage;
    Label70: TLabel;
    Label71: TLabel;
    IKnopkaOtkl2: TImage;
    Label72: TLabel;
    IKnopkaOtklActiv2: TImage;
    IKnopkaVkl2: TImage;
    IKnopkaVklActiv2: TImage;
    Label73: TLabel;
    IKnopkaOtkl3: TImage;
    Label74: TLabel;
    IKnopkaOtkl4: TImage;
    Label75: TLabel;
    IKnopkaOtkl5: TImage;
    Label76: TLabel;
    IKnopkaOtklActiv3: TImage;
    IKnopkaOtklActiv4: TImage;
    IKnopkaOtklActiv5: TImage;
    IKnopkaVkl3: TImage;
    IKnopkaVkl4: TImage;
    IKnopkaVkl5: TImage;
    IKnopkaVklActiv3: TImage;
    IKnopkaVklActiv4: TImage;
    IKnopkaVklActiv5: TImage;
    Edit10: TEdit;
    Edit11: TEdit;
    Label77: TLabel;
    Edit12: TEdit;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Itymbotkl2: TImage;
    Itymbotkla2: TImage;
    Itymbvkl2: TImage;
    Itymbvkla2: TImage;
    IKnopkaOtkl6: TImage;
    IKnopkaOtklActiv6: TImage;
    IKnopkaVkl6: TImage;
    IKnopkaVklActiv6: TImage;
    IKnopkaOtkl8: TImage;
    IKnopkaOtkl7: TImage;
    IKnopkaOtklActiv8: TImage;
    IKnopkaOtklActiv7: TImage;
    IKnopkaOtkl9: TImage;
    Label85: TLabel;
    IKnopkaOtklActiv9: TImage;
    IKnopkaVkl9: TImage;
    IKnopkaVklActiv9: TImage;
    Iv0: TImage;
    Iv6: TImage;
    Label86: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Rper3: TRadioButton;
    Rper4: TRadioButton;
    Rper5: TRadioButton;
    Rper6: TRadioButton;
    Rper7: TRadioButton;
    Rper8: TRadioButton;
    Rper1: TRadioButton;
    Rper2: TRadioButton;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Rper9: TRadioButton;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Timer1: TTimer;
    Rper0: TRadioButton;
    Iper1: TImage;
    Iper2: TImage;
    Iper3: TImage;
    Iper4: TImage;
    Iper5: TImage;
    Iper6: TImage;
    Iper7: TImage;
    Iper8: TImage;
    Iper9: TImage;
    Iper0: TImage;
    per0: TImage;
    per9: TImage;
    per8: TImage;
    per7: TImage;
    per6: TImage;
    per5: TImage;
    per4: TImage;
    per3: TImage;
    per2: TImage;
    per1: TImage;
    Iv4: TImage;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Ikavkl1: TImage;
    Ikavklactiv1: TImage;
    Ikavkl2: TImage;
    Ikavklactiv2: TImage;
    Ikavkl3: TImage;
    Ikavklactiv3: TImage;
    Ikavkl0: TImage;
    Ikavklactiv0: TImage;
    Image17: TImage;
    Timer5: TTimer;
    Timer6: TTimer;
    about: TEdit;
    Timer7: TTimer;
    MediaPlayer1: TMediaPlayer;
    Timer8: TTimer;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Timer9: TTimer;
    Label106: TLabel;
    Memo9: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Timer10: TTimer;
    Label107: TLabel;
    Timer11: TTimer;
    Timer12: TTimer;
    Timer13: TTimer;
    Timer14: TTimer;
    Timer15: TTimer;
    Timer16: TTimer;
    Timer17: TTimer;
    Memo12: TMemo;
    Memo13: TMemo;
    Timer22: TTimer;
    XPManifest1: TXPManifest;
    Label108: TLabel;
    Label109: TLabel;
    BitBtn1: TBitBtn;
    Memo14: TMemo;
    Timer18: TTimer;
    Button1: TButton;
    procedure N2Click(Sender: TObject);
    procedure IOtklSet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label48MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label55MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IVklSet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IOtklActivSet1Click(Sender: TObject);
    procedure IVklActivSet1Click(Sender: TObject);
    procedure IOtkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IOtklActiv1Click(Sender: TObject);
    procedure IVkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IVklActiv1Click(Sender: TObject);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure IOtkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IOtklActiv2Click(Sender: TObject);
    procedure IVkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IVklActiv2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtklActiv1Click(Sender: TObject);
    procedure IKnopkaVkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVklActiv1Click(Sender: TObject);
    procedure I1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I0MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ic1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure I9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Iinf1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ic2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ik1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ik2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ik3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ik0MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Iycc1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbotkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbotkla1Click(Sender: TObject);
    procedure Itymbvkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbvkla1Click(Sender: TObject);
    procedure Ip5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ip7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtklActiv2Click(Sender: TObject);
    procedure IKnopkaVkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVklActiv2Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtklActiv3Click(Sender: TObject);
    procedure IKnopkaOtklActiv4Click(Sender: TObject);
    procedure IKnopkaOtklActiv5Click(Sender: TObject);
    procedure IKnopkaVkl3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVkl4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVkl5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVklActiv3Click(Sender: TObject);
    procedure IKnopkaVklActiv4Click(Sender: TObject);
    procedure IKnopkaVklActiv5Click(Sender: TObject);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbotkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbotkla2Click(Sender: TObject);
    procedure Itymbvkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Itymbvkla2Click(Sender: TObject);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtkl8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtklActiv6Click(Sender: TObject);
    procedure IKnopkaVkl6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVklActiv6Click(Sender: TObject);
    procedure IKnopkaVklActiv7Click(Sender: TObject);
    procedure IKnopkaVklActiv8Click(Sender: TObject);
    procedure IKnopkaOtkl9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaOtklActiv9Click(Sender: TObject);
    procedure IKnopkaVkl9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IKnopkaVklActiv9Click(Sender: TObject);
    procedure Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Ica2Click(Sender: TObject);
    procedure Ia0Click(Sender: TObject);
    procedure Ia1Click(Sender: TObject);
    procedure Ia2Click(Sender: TObject);
    procedure Ia3Click(Sender: TObject);
    procedure Ia4Click(Sender: TObject);
    procedure Ia5Click(Sender: TObject);
    procedure Ia6Click(Sender: TObject);
    procedure Ia7Click(Sender: TObject);
    procedure Ia8Click(Sender: TObject);
    procedure Ia9Click(Sender: TObject);
    procedure Ica1Click(Sender: TObject);
    procedure Iper0ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper9ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper8ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper7ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Iper1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);

    procedure load();
    procedure Iper0Click(Sender: TObject);
    procedure Iper1Click(Sender: TObject);
    procedure Iper2Click(Sender: TObject);
    procedure Iper3Click(Sender: TObject);
    procedure Iper4Click(Sender: TObject);
    procedure Iper5Click(Sender: TObject);
    procedure Iper6Click(Sender: TObject);
    procedure Iper7Click(Sender: TObject);
    procedure Iper8Click(Sender: TObject);
    procedure Iper9Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Ikavkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ika1DblClick(Sender: TObject);
    procedure Ikavklactiv1DblClick(Sender: TObject);
    procedure Ika2DblClick(Sender: TObject);
    procedure Ikavkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ikavklactiv2DblClick(Sender: TObject);
    procedure Ika3DblClick(Sender: TObject);
    procedure Ikavkl3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ikavklactiv3DblClick(Sender: TObject);
    procedure Ika0DblClick(Sender: TObject);
    procedure Ikavkl0MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Ikavklactiv0DblClick(Sender: TObject);
    procedure Iinfa1Click(Sender: TObject);
    procedure Ipa3Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Ipa2Click(Sender: TObject);
    procedure aboutKeyPress(Sender: TObject; var Key: Char);
    procedure per1Click(Sender: TObject);
    procedure per0Click(Sender: TObject);
    procedure per2Click(Sender: TObject);
    procedure per3Click(Sender: TObject);
    procedure per4Click(Sender: TObject);
    procedure per5Click(Sender: TObject);
    procedure per6Click(Sender: TObject);
    procedure per7Click(Sender: TObject);
    procedure per8Click(Sender: TObject);
    procedure per9Click(Sender: TObject);
    procedure per0ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per9ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per8ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per7ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure per1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Rper0Click(Sender: TObject);
    procedure Rper1Click(Sender: TObject);
    procedure Rper2Click(Sender: TObject);
    procedure Rper3Click(Sender: TObject);
    procedure Rper4Click(Sender: TObject);
    procedure Rper5Click(Sender: TObject);
    procedure Rper6Click(Sender: TObject);
    procedure Rper7Click(Sender: TObject);
    procedure Rper8Click(Sender: TObject);
    procedure Rper9Click(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Ipa7Click(Sender: TObject);
    procedure Ipa5Click(Sender: TObject);
    procedure Ipa1Click(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Ipa6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Ipa6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Ipa2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Ipa2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
    procedure Timer15Timer(Sender: TObject);
    procedure Timer16Timer(Sender: TObject);
    procedure Timer17Timer(Sender: TObject);
    procedure IKnopkaOtklActiv5MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv5MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv6MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv6MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv8MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv8MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure IKnopkaOtklActiv8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer18Timer(Sender: TObject);
    procedure IKnopkaOtklActiv7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kontyr: Tkontyr;
  tymb1, tymb2, tymb3, tymb4,
  knopka1, knopka2, knopka3, knopka4,
  knopka5, knopka6, knopka7, knopka8, knopka9,
  knopkak0, knopkak1, knopkak2, knopkak3, adress, kontrol :string;
  total, tot1, tot2, tot3, n: integer;
  k01,k02,k03,
  k11,k12,k13,
  k21,k22,k23,
  k31,k32,k33,
  g11,g12,g13,
  g21,g22,g23,
  g31,g32,g33,
  g41,g42,g43,
  g51,g52,g53,
  g61,g62,g63,
  g71,g72,g73,
  g81,g82,g83,koresp, adr : string;
  i,j,a, b:integer;
  ref, work, read, rez, information_send: boolean;
  mas1, mas2, mas3, mas4,
  mass_group, mass_name1, mass_name2, mass_name3 : array[1..10] of string;
  prin_inf: boolean;
  rezim_1: boolean;
  reg: TRegIniFile;
  s: string;
  index: integer;
  File_load: tstringlist;
  yslovie, yslovie_2, first: boolean;
implementation

uses u_menu_2, u_auto, u_menu_1, u_info, Unit3;


{$R *.dfm}

procedure Tkontyr.N2Click(Sender: TObject);
begin
  Close;
end;

procedure Tkontyr.IOtklSet1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IOtklSet1.Hide;
  IOtklActivSet1.Show;                      
end;

procedure Tkontyr.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if shape29.Brush.Color=clLime then
    begin
    IVklSet1.Show;
    IOtklActivSet1.Hide;
    IOtklSet1.Hide;
    IVklActivSet1.Hide;
    end
    else
    begin
    IOtklSet1.Show;
    IVklActivSet1.Hide;
    IOtklActivSet1.Hide;
    IVklSet1.Hide;
    end;
end;

procedure Tkontyr.Label48MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if shape29.Brush.Color=clLime then
    begin
    IVklSet1.Show;
    IOtklActivSet1.Hide;
    end
    else
    begin
    IOtklSet1.Show;
    IVklActivSet1.Hide;
    end;
end;

procedure Tkontyr.Label55MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if shape29.Brush.Color=clLime then
    begin
    IVklSet1.Show;
    IOtklActivSet1.Hide;
    end
    else
    begin
    IOtklSet1.Show;
    IVklActivSet1.Hide;
    end;
end;

procedure Tkontyr.IVklSet1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IVklSet1.Hide;
  IVklActivSet1.Show;
end;


procedure Code(var text: string; password: string;
  decode: boolean);
var
  i, PasswordLength: integer;
  sign: shortint;
begin
  PasswordLength := length(password);
  if PasswordLength = 0 then Exit;
  if decode
    then sign := -1
    else sign := 1;
  for i := 1 to Length(text) do
    text[i] := chr(ord(text[i]) + sign *
      ord(password[i mod PasswordLength + 1]));
end;

procedure Tkontyr.IOtklActivSet1Click(Sender: TObject);
var n:integer;
  F1:textfile;
  inf: string;
  F3: TStringList;
  ser: boolean;
begin
  first:=true;
  total:=0;
  IVklSet1.Show;
  IOtklActivSet1.Hide;
  Shape29.Brush.Color:=clLime;
  Timer3.Enabled:=true;
  Timer18.Enabled:=true;
  if (radioButton1.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton3.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton4.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton5.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton6.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton7.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton8.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton9.Checked=true) then
     begin
     Iv6.Show;
     Iv0.Hide;
     end;
  if (radioButton10.Checked=true) then begin
    Iv6.Show;
    Iv0.Hide;
    end;
    randomize;
    k01:=IntToStr(random(9));
    k02:=IntToStr(random(9));
    k03:=IntToStr(random(9));
    Memo14.Lines.Add('Адрес: '+k01+k02+k03);
    Memo14.Lines.Add('Фамилия И.О. : '+info.inf_name.Caption);
    Memo14.Lines.Add('Курс : '+info.inf_kours.Caption);
    Memo14.Lines.Add('Взвод : '+info.inf_vzvod.Caption);
    Memo14.Lines.Add('Пароль : '+auto.inf_password.Caption);
    Memo14.Lines.Add('Дата последнего выхода : '+info.inf_data.Caption);
    Memo14.Lines.Add('Дата создания пользователя : '+info.inf_data_first.Caption);
    Memo14.Lines.Add('Уровень доступа : '+info.inf_level.Caption);

    s := Memo14.Text;
    code(s, 'pavlov', false);
    Memo14.Text := s;

    CreateDir('info\');
    inf:='info\'+info.inf_name.caption+'.txt';
    AssignFile(F1,inf);
    Rewrite(F1);
    for n:=0 to memo14.Lines.Count-1 do writeln(F1,Memo14.Lines[n]);
    CloseFile(F1);

    inf:='Users.txt';
    F3:= tstringlist.Create;
    if fileexists(inf) then f3.LoadFromFile(inf);

    ser:=false;
    for i:=0 to f3.Count-1 do begin
      if f3.Strings[i]=info.inf_name.caption then ser:=true;
    end;

    if (not ser) then begin
    f3.Add(info.inf_name.Caption);
    f3.SaveToFile(inf);
    end;
    f3.Free;
    memo12.Lines.Add('На блоке КП7 тумблер СЕТЬ в положение ВКЛ');
end;


procedure Tkontyr.IVklActivSet1Click(Sender: TObject);
var f3: tStringlist;
  inf: string;
begin
  timer13.Enabled:=false;
  timer14.Enabled:=false;
  shape11.Brush.Color:=clWhite;
  shape12.Brush.Color:=clWhite;
  shape13.Brush.Color:=clWhite;
  shape14.Brush.Color:=clWhite;
  shape15.Brush.Color:=clWhite;
  shape16.Brush.Color:=clWhite;
  shape17.Brush.Color:=clWhite;
  shape18.Brush.Color:=clWhite;
  shape19.Brush.Color:=clWhite;
  yslovie:=false;
  yslovie_2:=false;
  first:=false;
  index:=1;
  Timer18.Enabled:=false;
  memo14.Clear;
  deletefile('info\'+info.inf_name.caption+'.txt');
  deletefile('admin\'+info.inf_name.caption+'.txt');
  memo12.Lines.Text:='';
  information_send:=false;
  prin_inf:=false;
  n:=0;
  a:=0;
  work:=true;
  timer8.Enabled:=false;
  total:=0;
  tot1:=0;
  tot2:=0;
  tot3:=0;
  Timer7.Enabled:=true;
  Shape23.Brush.Color:=clWhite;
  IOtklSet1.Show;
  IVklActivSet1.Hide;
  Shape29.Brush.Color:=clWhite;
  Shape5.Brush.Color:=clWhite;
  Shape20.Brush.Color:=clWhite;
  Shape25.Brush.Color:=clWhite;
  Shape6.Brush.Color:=clWhite;
  Shape4.Brush.Color:=clWhite;
  Shape10.Brush.Color:=clWhite;
  Shape1.Brush.Color:=clWhite;
  Edit10.Text:='';
  Edit11.Text:='';
  Edit12.Text:='';
  Timer3.Enabled:=false;
  Timer4.Enabled:=false;
  timer1.Enabled:=true;
  Edit3.Text:='';
  Iv6.Hide;
  Iv0.Show;

    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';

  shape11.Brush.Color:=clWhite;
  shape12.Brush.Color:=clWhite;
  shape13.Brush.Color:=clWhite;
  shape14.Brush.Color:=clWhite;
  shape15.Brush.Color:=clWhite;
  shape16.Brush.Color:=clWhite;
  shape17.Brush.Color:=clWhite;
  shape18.Brush.Color:=clWhite;
  shape19.Brush.Color:=clWhite;

  Shape2.Brush.Color:=clWhite;
  Shape3.Brush.Color:=clWhite;

  inf:='Users.txt';
  F3:= tstringlist.Create;
  if fileexists(inf) then
    f3.LoadFromFile(inf);
  for i:=0 to f3.Count-1 do begin
    if f3.Strings[i]=info.inf_name.caption then
    f3.Delete(i);
  end;
  f3.SaveToFile(inf);
  F3.Free;
end;

procedure Tkontyr.IOtkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IOtkl1.Hide;
  IOtklActiv1.Show;
end;

procedure Tkontyr.IOtklActiv1Click(Sender: TObject);
begin
  tymb1:='vkl';
  IVkl1.Show;
  IOtklActiv1.Hide;
end;

procedure Tkontyr.IVkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IVklActiv1.Show;
  IVkl1.Hide;
end;

procedure Tkontyr.IVklActiv1Click(Sender: TObject);
begin
  tymb1:='otkl';
  IOtkl1.Show;
  IVklActiv1.Hide;
end;

procedure Tkontyr.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (SpeedButton1.Visible=false) then begin
  if Knopka1='vkl' then
  begin
  IKnopkaVklActiv1.Hide;
  IKnopkaVkl1.Show;
  end;
  if Knopka1='otkl' then
  begin
  IKnopkaOtkl1.Show;
  IKnopkaOtklActiv1.Hide;
  end;
// 1-ый тублер на 6 панели
  if tymb1='vkl' then
  begin
  IVklActiv1.Hide;
  IVkl1.Show;
  end;
  if tymb1='otkl' then
  begin
  IOtkl1.Show;
  IOtklActiv1.Hide;
  end;
// 2-ый тублер на 6 панели
  if tymb2='vkl' then
  begin
  IVklActiv2.Hide;
  Ivkl2.Show;
  end;
  if tymb2='otkl' then
  begin
  IOtkl2.Show;
  IOtklActiv2.Hide;
  end;
  end;
end;

procedure Tkontyr.FormCreate(Sender: TObject);
begin
  index:=1;
  yslovie:=false;
  yslovie_2:=false;
  first:=false;
  information_send:=false;
  File_load:= tstringlist.Create;
  n:=0;  a:=-1;  b:=0;
  work:=true;
  read:=false;
  ref:=false;
  prin_inf:=false;
  about.Font.Color:=$00F0F0F0;
  tymb1:='otkl';
  tymb2:='otkl';
  tymb3:='otkl';
  tymb4:='otkl';
  knopka1:='otkl';
  knopka2:='otkl';
  knopka3:='otkl';
  knopka4:='otkl';
  knopka5:='otkl';
  knopka6:='otkl';
  knopka7:='otkl';
  knopka8:='otkl';
  knopka9:='otkl';
  knopkak0:='otkl';
  knopkak1:='otkl';
  knopkak2:='otkl';
  knopkak3:='otkl';
  rezim_1:=false;
  k11:='-';
  k12:='-';
  k13:='-';
  k21:='-';
  k22:='-';
  k23:='-';
  k31:='-';
  k32:='-';
  k33:='-';
  total:=0;
  randomize;
  adr:=IntToStr(random(9))+IntToStr(random(9))+IntToStr(random(9));
end;

procedure Tkontyr.IOtkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IOtkl2.Hide;
  IOtklActiv2.Show;
end;

procedure Tkontyr.IOtklActiv2Click(Sender: TObject);
begin
  tymb2:='vkl';
  IOtklActiv2.Hide;
  IVkl2.Show;
end;

procedure Tkontyr.IVkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  IVklActiv2.Show;
  IVkl2.Hide;
end;

procedure Tkontyr.IVklActiv2Click(Sender: TObject);
begin
  tymb2:='otkl';
  IVklActiv2.Hide;
  IOtkl2.Show;
end;

procedure Tkontyr.SpeedButton1Click(Sender: TObject);
begin
  SpeedButton1.Hide;
  SpeedButton2.Show;
end;

procedure Tkontyr.SpeedButton2Click(Sender: TObject);
begin
  SpeedButton2.Hide;
  SpeedButton1.Show;
end;

procedure Tkontyr.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  // 1-ый тублер на 6 панели
  if tymb1='vkl' then
  begin
  IVklActiv1.Hide;
  IVkl1.Show;
  end;
  if tymb1='otkl' then
  begin
  IOtkl1.Show;
  IOtklActiv1.Hide;
  end;
// 2-ый тублер на 6 панели
  if tymb2='vkl' then
  begin
  IVklActiv2.Hide;
  Ivkl2.Show;
  end;
  if tymb2='otkl' then
  begin
  IOtkl2.Show;
  IOtklActiv2.Hide;
  end;
end;

procedure Tkontyr.IKnopkaOtkl1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl1.Hide;
  IKnopkaOtklActiv1.Show;
end;

procedure Tkontyr.IKnopkaOtklActiv1Click(Sender: TObject);
begin
  Knopka1:='vkl';
  IKnopkaVkl1.Show;
  IKnopkaOtklActiv1.Hide;
end;

procedure Tkontyr.IKnopkaVkl1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv1.Show;
  IKnopkaVkl1.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv1Click(Sender: TObject);
begin
  Knopka1:='otkl';
  IKnopkaOtkl1.Show;
  IKnopkaVklActiv1.Hide;
end;

procedure Tkontyr.I1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia1.Show;
  I1.Hide;
end;

procedure Tkontyr.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  I1.Show;
  Ia1.Hide;
  I2.Show;
  Ia2.Hide;
  I3.Show;
  Ia3.Hide;
  I0.Show;
  Ia0.Hide;
  Ip1.Show;
  Ipa1.Hide;
  Ic1.Show;
  Ica1.Hide;
  I4.Show;
  Ia4.Hide;
  I5.Show;
  Ia5.Hide;
  I6.Show;
  Ia6.Hide;
  I7.Show;
  Ia7.Hide;
  I8.Show;
  Ia8.Hide;
  I9.Show;
  Ia9.Hide;
  Iinf1.Show;
  Iinfa1.Hide;
  Ic2.Show;
  Ica2.Hide;
  Iycc1.Show;
  Iycca1.Hide;
  Ipa5.Hide;
  Ip5.Show;
  Ipa6.Hide;
  Ip6.Show;
  Ipa7.Hide;
  Ip7.Show;
end;

procedure Tkontyr.I2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia2.Show;
  I2.Hide;
end;

procedure Tkontyr.I3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia3.Show;
  I3.Hide;
end;

procedure Tkontyr.I0MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia0.Show;
  I0.Hide;
end;

procedure Tkontyr.Ip1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa1.Show;
  Ip1.Hide;
end;

procedure Tkontyr.Ic1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ica1.Show;
  Ic1.Hide;
end;

procedure Tkontyr.I4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia4.Show;
  I4.Hide;
end;

procedure Tkontyr.I5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia5.Show;
  I5.Hide;
end;

procedure Tkontyr.I6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia6.Show;
  I6.Hide;
end;

procedure Tkontyr.I7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia7.Show;
  I7.Hide;
end;

procedure Tkontyr.I8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia8.Show;
  I8.Hide;
end;

procedure Tkontyr.I9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ia9.Show;
  I9.Hide;
end;

procedure Tkontyr.Iinf1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Iinfa1.Show;
  Iinf1.Hide;
end;

procedure Tkontyr.Ic2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ica2.Show;
  Ic2.Hide;
end;

procedure Tkontyr.Ik1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ika1.Show;
  Ik1.Hide;
end;

procedure Tkontyr.GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ik1.Show;
  Ika1.Hide;
  Ik2.Show;
  Ika2.Hide;
  Ik3.Show;
  Ika3.Hide;
  Ip2.Show;
  Ipa2.Hide;
  Ip3.Show;
  Ipa3.Hide;
  Ip4.Show;
  Ipa4.Hide;
  if tymb3='vkl' then
  begin
  ItymbVklA1.Hide;
  ItymbVkl1.Show;
  end;
  if tymb3='otkl' then
  begin
  ItymbOtkl1.Show;
  ItymbOtklA1.Hide;
  end;

  if Knopkak1='vkl' then
  begin
  IKaVklActiv1.Hide;
  IKaVkl1.Show;
  end;
  if Knopkak1='otkl' then
  begin
  IK1.Show;
  IKa1.Hide;
  end;

  if Knopkak2='vkl' then
  begin
  IKaVklActiv2.Hide;
  IKaVkl2.Show;
  end;
  if Knopkak2='otkl' then
  begin
  IK2.Show;
  IKa2.Hide;
  end;

  if Knopkak3='vkl' then
  begin
  IKaVklActiv3.Hide;
  IKaVkl3.Show;
  end;
  if Knopkak3='otkl' then
  begin
  IK3.Show;
  IKa3.Hide;
  end;
end;

procedure Tkontyr.Ik2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ika2.Show;
  Ik2.Hide;
end;

procedure Tkontyr.Ik3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ika3.Show;
  Ik3.Hide;
end;

procedure Tkontyr.Ik0MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ika0.Show;
  Ik0.Hide;
end;

procedure Tkontyr.GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ik0.Show;
  Ika0.Hide;

  if Knopkak0='vkl' then
  begin
  IKaVklActiv0.Hide;
  IKaVkl0.Show;
  end;
  if Knopkak0='otkl' then
  begin
  IK0.Show;
  IKa0.Hide;
  end;
end;

procedure Tkontyr.Iycc1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Iycca1.Show;
  Iycc1.Hide;
end;

procedure Tkontyr.Ip2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa2.Show;
  Ip2.Hide;
end;

procedure Tkontyr.Ip3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa3.Show;
  Ip3.Hide;
end;

procedure Tkontyr.Ip4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa4.Show;
  Ip4.Hide;
end;

procedure Tkontyr.Itymbotkl1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ItymbOtkl1.Hide;
  ItymbOtklA1.Show;
end;

procedure Tkontyr.Itymbotkla1Click(Sender: TObject);
begin
  tymb3:='vkl';
  ItymbVkl1.Show;
  ItymbOtklA1.Hide;
  Edit9.Text:='#';
  Edit1.Text:='#';
  Edit8.Text:='#';
  Edit2.Text:='#';
  Edit7.Text:='#';
  Edit3.Text:='#';
  Edit4.Text:='#';
  Edit5.Text:='#';
  Edit6.Text:='#';
  memo12.Lines.Add('На блоке КП5 тумблер ПЕРЕДАЧА установите в положение МТК');
end;

procedure Tkontyr.Itymbvkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ItymbVklA1.Show;
  ItymbVkl1.Hide;
end;

procedure Tkontyr.Itymbvkla1Click(Sender: TObject);
begin
  tymb3:='otkl';
  ItymbOtkl1.Show;
  ItymbVklA1.Hide;
  memo12.Lines.Add('На блоке КП5 тумблер ПЕРЕДАЧА установите в положение ПУ');
end;

procedure Tkontyr.Ip5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa5.Show;
  Ip5.Hide;
end;

procedure Tkontyr.Ip6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ipa6.Show;
  Ip6.Hide;
end;

procedure Tkontyr.Ip7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ip7.Hide;
  Ipa7.Show;
end;

procedure Tkontyr.IKnopkaOtkl2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl2.Hide;
  IKnopkaOtklActiv2.Show;
end;

procedure Tkontyr.IKnopkaOtklActiv2Click(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
    Knopka2:='vkl';
    IKnopkaVkl2.Show;
    IKnopkaOtklActiv2.Hide;
    Shape6.Brush.Color:=clRed;
    memo12.Lines.Add('На блоке КП4 нажмите кнопку КОНТРОЛЬ');
  end;
end;

procedure Tkontyr.IKnopkaVkl2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv2.Show;
  IKnopkaVkl2.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv2Click(Sender: TObject);
begin
  Knopka2:='otkl';
  IKnopkaOtkl2.Show;
  IKnopkaVklActiv2.Hide;
  Shape6.Brush.Color:=clWhite;
end;

procedure Tkontyr.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Knopka2='vkl' then
  begin
  IKnopkaVklActiv2.Hide;
  IKnopkaVkl2.Show;
  end;
  if Knopka2='otkl' then
  begin
  IKnopkaOtkl2.Show;
  IKnopkaOtklActiv2.Hide;
  end;
end;

procedure Tkontyr.IKnopkaOtkl3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl3.Hide;
  IKnopkaOtklActiv3.Show;
end;

procedure Tkontyr.IKnopkaOtkl4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl4.Hide;
  IKnopkaOtklActiv4.Show;
end;

procedure Tkontyr.IKnopkaOtkl5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl5.Hide;
  IKnopkaOtklActiv5.Show;
end;

procedure Tkontyr.IKnopkaOtklActiv3Click(Sender: TObject);
begin
  Knopka3:='vkl';
  IKnopkaVkl3.Show;
  IKnopkaOtklActiv3.Hide;
end;

procedure Tkontyr.IKnopkaOtklActiv4Click(Sender: TObject);
begin
  Knopka4:='vkl';
  IKnopkaVkl4.Show;
  IKnopkaOtklActiv4.Hide;
end;

procedure Tkontyr.IKnopkaOtklActiv5Click(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
    shape10.Brush.Color:=clLime;
    shape4.Brush.Color:=clLime;
    timer17.Enabled:=true;
    timer8.Enabled:=true;
    Edit10.Text:='';
    Edit11.Text:='';
    memo12.Lines.Add('На блоке КПЗ нажмите кнопку КОНТРОЛЬ КАНАЛ 12');
    yslovie:=false;
    deletefile('admin\'+info.inf_name.caption+'.txt');
  end;
end;

procedure Tkontyr.IKnopkaVkl3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv3.Show;
  IKnopkaVkl3.Hide;
end;

procedure Tkontyr.IKnopkaVkl4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv4.Show;
  IKnopkaVkl4.Hide;
end;

procedure Tkontyr.IKnopkaVkl5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv5.Show;
  IKnopkaVkl5.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv3Click(Sender: TObject);
begin
  Knopka3:='otkl';
  IKnopkaOtkl3.Show;
  IKnopkaVklActiv3.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv4Click(Sender: TObject);
begin
  Knopka4:='otkl';
  IKnopkaOtkl4.Show;
  IKnopkaVklActiv4.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv5Click(Sender: TObject);
begin
  Knopka5:='otkl';
  IKnopkaOtkl5.Show;
  IKnopkaVklActiv5.Hide;
  a:=-1;
end;

procedure Tkontyr.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Knopka3='vkl' then
  begin
  IKnopkaVklActiv3.Hide;
  IKnopkaVkl3.Show;
  end;
  if Knopka3='otkl' then
  begin
  IKnopkaOtkl3.Show;
  IKnopkaOtklActiv3.Hide;
  end;
  if Knopka4='vkl' then
  begin
  IKnopkaVklActiv4.Hide;
  IKnopkaVkl4.Show;
  end;
  if Knopka4='otkl' then
  begin
  IKnopkaOtkl4.Show;
  IKnopkaOtklActiv4.Hide;
  end;
  if Knopka5='vkl' then
  begin
  IKnopkaVklActiv5.Hide;
  IKnopkaVkl5.Show;
  end;
  if Knopka5='otkl' then
  begin
  IKnopkaOtkl5.Show;
  IKnopkaOtklActiv5.Hide;
  end;
end;

procedure Tkontyr.Itymbotkl2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ItymbOtkl2.Hide;
  ItymbOtklA2.Show;
end;

procedure Tkontyr.Itymbotkla2Click(Sender: TObject);
begin
  tymb4:='vkl';
  ItymbVkl2.Show;
  ItymbOtklA2.Hide;
end;

procedure Tkontyr.Itymbvkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ItymbVklA2.Show;
  ItymbVkl2.Hide;
end;

procedure Tkontyr.Itymbvkla2Click(Sender: TObject);
begin
  tymb4:='otkl';
  ItymbOtkl2.Show;
  ItymbVklA2.Hide;
  memo12.Lines.Add('На блоке КП2 Тумблер КОНТРОЛЬ 1 - КОНТРОЛЬ 2 на блоке КП2 установите в положение КОНТРОЛЬ 1');
end;

procedure Tkontyr.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if tymb4='vkl' then
  begin
  ItymbVklA2.Hide;
  ItymbVkl2.Show;
  end;
  if tymb4='otkl' then
  begin
  ItymbOtkl2.Show;
  ItymbOtklA2.Hide;
  end;
  if Knopka6='vkl' then
  begin
  IKnopkaVklActiv6.Hide;
  IKnopkaVkl6.Show;
  end;
  if Knopka6='otkl' then
  begin
  IKnopkaOtkl6.Show;
  IKnopkaOtklActiv6.Hide;
  end;
  if Knopka7='vkl' then
  begin
  end;
  if Knopka7='otkl' then
  begin
  IKnopkaOtkl7.Show;
  IKnopkaOtklActiv7.Hide;
  end;
  if Knopka8='vkl' then
  begin
  end;
  if Knopka8='otkl' then
  begin
  IKnopkaOtkl8.Show;
  IKnopkaOtklActiv8.Hide;
  end;
end;

procedure Tkontyr.IKnopkaOtkl6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl6.Hide;
  IKnopkaOtklActiv6.Show;
end;

procedure Tkontyr.IKnopkaOtkl7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl7.Hide;
  IKnopkaOtklActiv7.Show;
end;

procedure Tkontyr.IKnopkaOtkl8MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl8.Hide;
  IKnopkaOtklActiv8.Show;
end;

procedure Tkontyr.IKnopkaOtklActiv6Click(Sender: TObject);
begin
  if Edit12.Text='004' then begin
    Edit10.Text:='';
    Edit11.Text:='';
    Edit12.Text:='000';
  end;
  memo12.Lines.Add('На блоке КП2 Нажмите кнопку НАЧ. ИНФОРМ');
end;

procedure Tkontyr.IKnopkaVkl6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv6.Show;
  IKnopkaVkl6.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv6Click(Sender: TObject);
begin
  Knopka6:='otkl';
  IKnopkaOtkl6.Show;
  IKnopkaVklActiv6.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv7Click(Sender: TObject);
begin
  Knopka7:='otkl';
  IKnopkaOtkl7.Show;
end;

procedure Tkontyr.IKnopkaVklActiv8Click(Sender: TObject);
begin
  Knopka8:='otkl';
  IKnopkaOtkl8.Show;
end;

procedure Tkontyr.IKnopkaOtkl9MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaOtkl9.Hide;
  IKnopkaOtklActiv9.Show;
end;

procedure Tkontyr.IKnopkaOtklActiv9Click(Sender: TObject);
begin
  Knopka9:='vkl';
  IKnopkaVkl9.Show;
  IKnopkaOtklActiv9.Hide;
  if (shape29.Brush.Color=cllime) then begin
    shape6.Brush.Color:=clRed;
  end;
end;

procedure Tkontyr.IKnopkaVkl9MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  IKnopkaVklActiv9.Show;
  IKnopkaVkl9.Hide;
end;

procedure Tkontyr.IKnopkaVklActiv9Click(Sender: TObject);
begin
  Knopka9:='otkl';
  IKnopkaOtkl9.Show;
  IKnopkaVklActiv9.Hide;
  shape6.Brush.Color:=clwhite;
  shape3.Brush.Color:=cllime;
  timer15.Enabled:=true;
  timer8.Enabled:=true;
end;

procedure Tkontyr.Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Knopka9='vkl' then
  begin
  IKnopkaVklActiv9.Hide;
  IKnopkaVkl9.Show;
  end;
  if Knopka9='otkl' then
  begin
  IKnopkaOtkl9.Show;
  IKnopkaOtklActiv9.Hide;
  end;
end;

procedure Tkontyr.Timer1Timer(Sender: TObject);
begin
  if shape29.Brush.Color= clLime then
  begin
  edit3.Text:='0';
  timer1.Enabled:=false;
  end;
end;

procedure Tkontyr.RadioButton3Click(Sender: TObject);
begin
  if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper1.Hide;
  Iper0.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper2.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton4Click(Sender: TObject);
begin
   if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper2.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper3.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton5Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper3.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper4.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton6Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper4.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper5.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton7Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper5.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper6.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton8Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper6.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper7.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.RadioButton9Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper7.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper9.Hide;
  Iper8.Show;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton10.Enabled:=true;
end;

procedure Tkontyr.RadioButton10Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper8.Hide;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Show;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=true;
  RadioButton10.Enabled:=true;
end;

procedure Tkontyr.RadioButton1Click(Sender: TObject);
begin
if Shape29.Brush.Color=clLime then
  begin
  Iv6.Show;
  Iv0.Hide;
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
  Iper9.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper0.Show;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=false;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=true;
end;

procedure Tkontyr.RadioButton2Click(Sender: TObject);
var adres: string;
begin
  if Shape29.Brush.Color=clLime then
  begin
  Iv0.Show;
  Iv6.Hide;
  end;
  Iper0.Hide;
  Iper2.Hide;
  Iper3.Hide;
  Iper4.Hide;
  Iper5.Hide;
  Iper6.Hide;
  Iper7.Hide;
  Iper8.Hide;
  Iper9.Hide;
  Iper1.Show;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  memo12.Lines.Add('На блоке КП7 изменяя переключатель КОНТРОЛЬ, от +9В до +9В резерв, убедитесь, что стрелка вольтметра находится в закрашенном секторе');

  if (memo13.Text=memo12.Text) and (strtoint(menu_1.inf_level.Caption)<1) then begin
    adres:='system\Контур_П\'+auto.kours.Text+'_курс\'+auto.vzvod.Text+'_взвод';
    reg:=TRegIniFile.Create(adres);
    reg.WriteInteger(auto.name.text,'Уровень доступа',1);
    showmessage('получен новый уровень доступа "1"');
    kontyr.Caption:='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9';
  end;
  if (memo13.Text=memo12.Text) then begin
    memo13.Lines.LoadFromFile('шаблоны\2. Проверка прохождения информации по каналам 9.txt');
    kontyr.Caption:='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9';
  end;
end;

procedure Tkontyr.Ica2Click(Sender: TObject);
var adres: string;
begin
  work:=true;
  prin_inf:=false;
    timer8.Enabled:=false;
    shape4.Brush.Color:=clWhite;
    shape10.Brush.Color:=clWhite;
    Edit12.Text:='';
  if shape29.Brush.Color=clLime then begin
    timer8.Enabled:=false;
    shape11.Brush.Color:=clWhite;
    shape12.Brush.Color:=clWhite;
    shape13.Brush.Color:=clWhite;
    shape14.Brush.Color:=clWhite;
    shape15.Brush.Color:=clWhite;
    shape16.Brush.Color:=clWhite;
    shape17.Brush.Color:=clWhite;
    shape18.Brush.Color:=clWhite;
    shape19.Brush.Color:=clWhite;
    Timer7.Enabled:=true;
    Shape23.Brush.Color:=clWhite;
    total:=0;
    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit3.Text:='0';
    Shape5.Brush.Color:=clWhite;
    Shape20.Brush.Color:=clWhite;

    k11:='';
    k12:='';
    k13:='';
    k21:='';
    k22:='';
    k23:='';
    //k31:='-';
    //k32:='-';
    //k33:='-';
    memo1.Clear;
    memo2.Clear;
    memo3.Clear;
    memo4.Clear;
    memo12.Lines.Add('На блоке КП5 нажмите кнопку С ОБЩИЙ');

    if (memo13.Text=memo12.Text) and (strtoint(menu_1.inf_level.Caption)<3) then begin
    adres:='system\Контур_П\'+auto.kours.Text+'_курс\'+auto.vzvod.Text+'_взвод';
    reg:=TRegIniFile.Create(adres);
    reg.WriteInteger(auto.name.text,'Уровень доступа',3);
    reg.Free;
    showmessage('получен новый уровень доступа "3"');
    menu_2.Label2.Enabled:=true;
    menu_2.Label3.Enabled:=true;
    menu_2.Label6.Enabled:=true;
    kontyr.Close;
    if (memo13.Text=memo12.Text) then kontyr.Close;
  end;
  end;
end;

procedure Tkontyr.Ia0Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='0';
    end
  else Edit7.Text:='0';
  end;
  
           
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='0';
    end
  else Edit6.Text:='0';
  end;
end;

procedure Tkontyr.Ia1Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='1';
    end
  else Edit7.Text:='1';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='1';
    end
  else Edit6.Text:='1';
  end;
end;

procedure Tkontyr.Ia2Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='2';
    end
  else Edit7.Text:='2';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='2';
    end
  else Edit6.Text:='2';
  end;
end;

procedure Tkontyr.Ia3Click(Sender: TObject);
begin
 if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='3';
    end
  else Edit7.Text:='3';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='3';
    end
  else Edit6.Text:='3';
  end;
end;

procedure Tkontyr.Ia4Click(Sender: TObject);
begin
 if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='4';
    end
  else Edit7.Text:='4';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='4';
    end
  else Edit6.Text:='4';
  end;
end;

procedure Tkontyr.Ia5Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='5';
    end
  else Edit7.Text:='5';
  end;

  if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='5';
    end
  else Edit6.Text:='5';
  end;
end;

procedure Tkontyr.Ia6Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='6';
    end
  else Edit7.Text:='6';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='6';
    end
  else Edit6.Text:='6';
  end;
end;

procedure Tkontyr.Ia7Click(Sender: TObject);
begin
 if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='7';
    end
  else Edit7.Text:='7';
  end;
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='7';
    end
  else Edit6.Text:='7';
  end;
end;

procedure Tkontyr.Ia8Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='8';
    end
  else Edit7.Text:='8';
  end;   
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='8';
    end
  else Edit6.Text:='8';
  end;
end;

procedure Tkontyr.Ia9Click(Sender: TObject);
begin
if (Shape29.Brush.Color=clLime) and (rez=true) then
  begin
  if (length(Edit2.Text)<>0) or (length(Edit7.Text)<>0) then
    begin
    Edit8.Text:=Edit2.Text;
    Edit2.Text:=Edit7.Text;
    Edit7.Text:='9';
    end
  else Edit7.Text:='9';
  end; 
if (Shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (Edit3.Text<>'0') and (rez=false) then
  begin
  if (length(Edit5.Text)<>0) or (length(Edit6.Text)<>0) then
    begin
    Edit4.Text:=Edit5.Text;
    Edit5.Text:=Edit6.Text;
    Edit6.Text:='9';
    end
  else Edit6.Text:='9';
  end;
end;

procedure Tkontyr.Ica1Click(Sender: TObject);
begin
  if Edit3.Text<>'0' then
  begin
  Edit4.Text:='0';
  Edit5.Text:='0';
  Edit6.Text:='0';
  end
  else
  begin
  Edit7.Text:='-';
  Edit2.Text:='-';
  Edit8.Text:='-';
  end;
end;

procedure Tkontyr.Iper0ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper0.Hide;
  Iper9.Show;
  RadioButton10.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton2.Checked:=false;

  RadioButton1.Enabled:=true;
  RadioButton10.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
end;

procedure Tkontyr.Iper9ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper9.Hide;
  Iper8.Show;
  RadioButton9.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton10.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper8ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper8.Hide;
  Iper7.Show;
  RadioButton8.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper7ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper7.Hide;
  Iper6.Show;
  RadioButton7.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper6ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper6.Hide;
  Iper5.Show;
  RadioButton6.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper5.Hide;
  Iper4.Show;
  RadioButton5.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper4ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper4.Hide;
  Iper3.Show;
  RadioButton4.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper3.Hide;
  Iper2.Show;
  RadioButton3.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper2.Hide;
  Iper1.Show;
  RadioButton2.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
end;

procedure Tkontyr.Iper1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Iper1.Hide;
  Iper0.Show;
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton10.Enabled:=true;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton3.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper0Click(Sender: TObject);
var adres: string;
begin
  Iper0.Hide;
  Iper1.Show;
  RadioButton2.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;

  if (memo13.Text=memo12.Text) and (strtoint(menu_1.inf_level.Caption)<1) then begin
    adres:='system\Контур_П\'+auto.kours.Text+'_курс\'+auto.vzvod.Text+'_взвод';
    reg:=TRegIniFile.Create(adres);
    reg.WriteInteger(auto.name.text,'Уровень доступа',1);
    reg.Free;
    showmessage('получен новый уровень доступа "1"');
    kontyr.Caption:='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9';
    menu_2.Label2.Enabled:=true;
    menu_2.Label3.Enabled:=true;
  end;
  if (memo13.Text=memo12.Text) then begin
    memo13.Lines.LoadFromFile('шаблоны\2. Проверка работоспособности.txt');
    kontyr.Caption:='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9';
  end;

end;

procedure Tkontyr.Iper1Click(Sender: TObject);
begin
  Iper1.Hide;
  Iper2.Show;
  RadioButton3.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper2Click(Sender: TObject);
begin
  Iper2.Hide;
  Iper3.Show;
  RadioButton4.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper3Click(Sender: TObject);
begin
  Iper3.Hide;
  Iper4.Show;
  RadioButton5.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton4.Enabled:=true;
  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper4Click(Sender: TObject);
begin
  Iper4.Hide;
  Iper5.Show;
  RadioButton6.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton5.Enabled:=true;
  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper5Click(Sender: TObject);
begin
  Iper5.Hide;
  Iper6.Show;
  RadioButton7.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton6.Enabled:=true;
  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper6Click(Sender: TObject);
begin
  Iper6.Hide;
  Iper7.Show;
  RadioButton8.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton7.Enabled:=true;
  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  RadioButton10.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper7Click(Sender: TObject);
begin
  Iper7.Hide;
  Iper8.Show;
  RadioButton9.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton2.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton8.Enabled:=true;
  RadioButton9.Enabled:=true;
  RadioButton10.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton1.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper8Click(Sender: TObject);
begin
  Iper8.Hide;
  Iper9.Show;
  RadioButton10.Checked:=true;
  RadioButton1.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton2.Checked:=false;

  RadioButton9.Enabled:=true;
  RadioButton10.Enabled:=true;
  RadioButton1.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton2.Enabled:=false;
  RadioButton3.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Iper9Click(Sender: TObject);
begin
  Iper9.Hide;
  Iper0.Show;
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
  RadioButton3.Checked:=false;
  RadioButton4.Checked:=false;
  RadioButton5.Checked:=false;
  RadioButton6.Checked:=false;
  RadioButton7.Checked:=false;
  RadioButton8.Checked:=false;
  RadioButton9.Checked:=false;
  RadioButton10.Checked:=false;

  RadioButton10.Enabled:=true;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton4.Enabled:=false;
  RadioButton5.Enabled:=false;
  RadioButton6.Enabled:=false;
  RadioButton7.Enabled:=false;
  RadioButton8.Enabled:=false;
  RadioButton9.Enabled:=false;
  RadioButton3.Enabled:=false;
  if Shape29.Brush.Color=clLime then begin
  Iv6.Hide;
  Iv4.Show;
  timer2.Enabled:=true;
  end;
end;

procedure Tkontyr.Timer2Timer(Sender: TObject);
begin
  if Shape29.Brush.Color=clLime then begin
  Iv4.Hide;
  Iv6.Show;
  Timer2.Enabled:=false;
  end;
end;

procedure Tkontyr.Timer3Timer(Sender: TObject);
begin
  Shape25.Brush.Color:=clLime;
  Timer3.Enabled:=false;
  Timer4.Enabled:=true;
end;

procedure Tkontyr.Timer4Timer(Sender: TObject);
begin
  Shape25.Brush.Color:=clWhite;
  Timer4.Enabled:=false;
  Timer3.Enabled:=true;
end;

procedure Tkontyr.Ikavkl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ikavkl1.Hide;
  IkavklActiv1.Show;
end;

procedure Tkontyr.Ika1DblClick(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
  tot1:=tot1+1;
  knopkak1:='vkl';
  IkaVkl1.Show;
  Ika1.Hide;
  rez:=true;
  Shape1.Brush.Color:=clRed;
  Shape5.Brush.Color:=clRed;
  Shape20.Brush.Color:=clRed;

  Edit8.Text:=k11;
  Edit2.Text:=k12;
  Edit7.Text:=k13;
  if tot1=1 then timer8.Enabled:=true;
  end;
end;

procedure Tkontyr.Ikavklactiv1DblClick(Sender: TObject);
begin
  knopkak1:='otkl';
  Ik1.Show;
  IkaVklActiv1.Hide;
  k11:=Edit8.Text;
    k12:=Edit2.Text;
    k13:=Edit7.Text;
    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
    shape1.Brush.Color:=clWhite;
    rez:=false;  
end;

procedure Tkontyr.Ika2DblClick(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
  tot2:=tot2+1;
  knopkak2:='vkl';
  IkaVkl2.Show;
  Ika2.Hide;
  rez:=true;
  Shape1.Brush.Color:=clRed;
  Shape5.Brush.Color:=clRed;
  Shape20.Brush.Color:=clRed;

  Edit8.Text:=k21;
  Edit2.Text:=k22;
  Edit7.Text:=k23;
  if tot2=1 then timer8.Enabled:=true;
  end;
end;

procedure Tkontyr.Ikavkl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ikavkl2.Hide;
  IkavklActiv2.Show;
end;

procedure Tkontyr.Ikavklactiv2DblClick(Sender: TObject);
begin
  knopkak2:='otkl';
  Ik2.Show;
  IkaVklActiv2.Hide;
  k21:=Edit8.Text;
    k22:=Edit2.Text;
    k23:=Edit7.Text;
    rez:=false;
        shape1.Brush.Color:=clWhite;
    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
end;

procedure Tkontyr.Ika3DblClick(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
    tot3:=tot3+1;
    knopkak3:='vkl';
    IkaVkl3.Show;
    Ika3.Hide;
    Edit8.Text:=k01;
    Edit2.Text:=k02;
    Edit7.Text:=k03;
    rez:=true;
    Shape1.Brush.Color:=clRed;
    Shape5.Brush.Color:=clRed;
    Shape20.Brush.Color:=clRed;
    if tot3=1 then timer8.Enabled:=true;
    end;
end;

procedure Tkontyr.Ikavkl3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ikavkl3.Hide;
  IkavklActiv3.Show;
end;

procedure Tkontyr.Ikavklactiv3DblClick(Sender: TObject);
var n:integer;
  F1:textfile;
  inf: string;
  F3: TStringList;
  ser: boolean;
begin
  koresp:=edit8.Text+edit2.Text+edit7.Text;
  if koresp='' then koresp:='000';
  knopkak3:='otkl';
  Ik3.Show;
  IkaVklActiv3.Hide;
  rez:=false;
  k01:=Edit8.Text;
    k02:=Edit2.Text;
    k03:=Edit7.Text;

  if ((Edit8.Text<>'-') or (Edit2.Text<>'-') or (Edit7.Text<>'-')) then
    CreateDir('сеть\'+koresp);
    timer9.Enabled:=true;  // запускаем поиск файлов в каталоге (адресс)
    label106.Caption:='адресс задан';
    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
    Memo12.Lines.Add('На блоке КП5 нажмите кнопку ПОДПИСЬ 3 двойным кликом мыши, нажатием кнопок 0-9 наберите трехзначную комбинацию');
    Memo14.Clear;
    Memo14.Lines.Add('Адрес: '+k01+k02+k03);
    Memo14.Lines.Add('Фамилия И.О. : '+info.inf_name.Caption);
    Memo14.Lines.Add('Курс : '+info.inf_kours.Caption);
    Memo14.Lines.Add('Взвод : '+info.inf_vzvod.Caption);
    Memo14.Lines.Add('Пароль : '+auto.inf_password.Caption);
    Memo14.Lines.Add('Дата последнего выхода : '+info.inf_data.Caption);
    Memo14.Lines.Add('Дата создания пользователя : '+info.inf_data_first.Caption);
    Memo14.Lines.Add('Уровень доступа : '+info.inf_level.Caption);

    s := Memo14.Text;
    code(s, 'pavlov', false);
    Memo14.Text := s;

    CreateDir('info\');
    inf:='info\'+info.inf_name.caption+'.txt';
    AssignFile(F1,inf);
    Rewrite(F1);
    for n:=0 to memo14.Lines.Count-1 do writeln(F1,Memo14.Lines[n]);
    CloseFile(F1);

  inf:='Users.txt';
  F3:= tstringlist.Create;
  if fileexists(inf) then
    f3.LoadFromFile(inf);

  ser:=false;
  for i:=0 to f3.Count-1 do begin
    if f3.Strings[i]=info.inf_name.caption then
    ser:=true;
  end;

  if (not ser) then begin
  f3.Add(info.inf_name.Caption);
  f3.SaveToFile(inf);
  end;
  F3.Free;
end;

procedure Tkontyr.Ika0DblClick(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
  knopkak0:='vkl';
  IkaVkl0.Show;
  Ika0.Hide;
  rez:=true;
  Edit8.Text:=k31;
  Edit2.Text:=k32;
  Edit7.Text:=k33;
  end;
end;

procedure Tkontyr.Ikavkl0MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Ikavkl0.Hide;
  IkavklActiv0.Show;
end;

procedure Tkontyr.Ikavklactiv0DblClick(Sender: TObject);
begin
  adr:=Edit8.Text+Edit2.Text+Edit7.Text;
  knopkak0:='otkl';
  Ik0.Show;
  IkaVklActiv0.Hide;
  rez:=false;
    k31:=Edit8.Text;
    k32:=Edit2.Text;
    k33:=Edit7.Text;
    shape1.Brush.Color:=clWhite;
    Edit9.Text:='';
    Edit1.Text:='';
    Edit8.Text:='';
    Edit2.Text:='';
    Edit7.Text:='';
    memo12.Lines.Add('На блоке КП5 нажмите кнопку АДРЕС К двойным кликом мыши, нажатием кнопок 0-9 наберите трехзначную комбинацию, совпадающую с  ПОДПИСЬ 3');
end;

procedure Tkontyr.Iinfa1Click(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) then begin
  if  (ikavkl1.Visible=true) or
      (ikavkl2.Visible=true) or
      (ikavkl3.Visible=true) then begin
      Edit8.Text:='-';
      Edit2.Text:='0';
      Edit7.Text:='0';
      end;
  total:=0;
  Edit4.Text:='-';
  Edit5.Text:='0';
  Edit6.Text:='0';
  work:=false;
  read:=true;
  if (kontyr.caption='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9') then
    memo12.Lines.Add('На блоке КП5 последовательно нажимая кнопку ГРУППА, с помощью кнопок 0-9 наберите трехзначные комбинации для групп 1-8');

    if (edit4.Text='4') and (kontyr.caption='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 12') then
    memo12.Lines.Add('ННа блоке КП5 последовательно нажимая кнопку ГРУППА, с помощью кнопок 0-9 наберите трехзначные комбинации 111, 111, 222, 222, 333, 333, 444, 444, " |_| 00');
  end;
end;

procedure Tkontyr.Ipa3Click(Sender: TObject);
var n: integer;
    Fgroup, F1, F2, F3, F4, F5, F6: textFile;
    from1, from2, from3, group, name1, name2, name3: string;
begin
  information_send:=true;
//+-----------------------------------------+
// Режим на передачи:
  if  (shape29.Brush.Color=clLime) and
      (itymbvkl1.Visible=true)     then  begin
  timer5.Enabled:=true;
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';

  if koresp='' then begin
    randomize;
    koresp:= IntToStr(random(9))+IntToStr(random(9))+IntToStr(random(9));
  end;
  CreateDir('сеть');
  CreateDir('сеть\'+koresp);
  CreateDir('сеть\'+adr);

  group:='сеть\'+adr+'\group.txt';
  name1:='сеть\'+adr+'\name1.txt';
  name2:='сеть\'+adr+'\name2.txt';
  name3:='сеть\'+adr+'\name3.txt';
  from1:='сеть\'+adr+'\from1.txt';
  from2:='сеть\'+adr+'\from2.txt';
  from3:='сеть\'+adr+'\from3.txt';

  AssignFile(Fgroup,group);
  Rewrite(Fgroup);
  for n:=1 to memo1.Lines.Count-1 do writeln(Fgroup,Memo1.Lines[n]);
  CloseFile(Fgroup);

  AssignFile(F1,name1);
  Rewrite(F1);
  for n:=1 to memo2.Lines.Count-1 do writeln(F1,Memo2.Lines[n]);
  CloseFile(F1);

  AssignFile(F2,name2);
  Rewrite(F2);
  for n:=1 to memo3.Lines.Count-1 do writeln(F2,Memo3.Lines[n]);
  CloseFile(F2);

  AssignFile(F3,name3);
  Rewrite(F3);
  for n:=1 to memo4.Lines.Count-1 do writeln(F3,Memo4.Lines[n]);
  CloseFile(F3);

  AssignFile(F4,from1);
  Rewrite(F4);
  writeln(F4,k01);
  CloseFile(F4);

  AssignFile(F5,from2);
  Rewrite(F5);
  writeln(F5,k02);
  CloseFile(F5);

  AssignFile(F6,from3);
  Rewrite(F6);
  writeln(F6,k03);
  CloseFile(F6);

  timer13.Enabled:=false;
  timer14.Enabled:=false;
  shape11.Brush.Color:=clWhite;
  shape12.Brush.Color:=clWhite;
  shape13.Brush.Color:=clWhite;
  shape14.Brush.Color:=clWhite;
  shape15.Brush.Color:=clWhite;
  shape16.Brush.Color:=clWhite;
  shape17.Brush.Color:=clWhite;
  shape18.Brush.Color:=clWhite;
  shape19.Brush.Color:=clWhite;
  memo12.Lines.Add('На блоке КП5 нажмите кнопку ПЕРЕДАЧА ИНФОРМАНЦИЯ');
  end;

end;

procedure Tkontyr.Timer5Timer(Sender: TObject);
begin
    Shape22.Brush.Color:=clLime;
    Timer5.Enabled:=false;
    Timer6.Enabled:=true;
end;

procedure Tkontyr.Timer6Timer(Sender: TObject);
begin
  Timer6.Enabled:=false;
  if (iknopkavkl2.Visible=false) then begin
    timer11.Enabled:=true;
  end;
  shape22.Brush.Color:=clWhite;
  shape5.Brush.Color:=clWhite;
  shape20.Brush.Color:=clWhite;
  ref:=true;
end;

procedure Tkontyr.Ipa2Click(Sender: TObject);
begin
  if shape29.Brush.Color=clLime then
  Timer5.Enabled:=true;
  timer13.Enabled:=true;
  timer8.Enabled:=true;
  memo12.Lines.Add('На блоке КП5 нажмите кнопку ПЕРЕДАЧА ВЫЗОВ');
end;

procedure Tkontyr.aboutKeyPress(Sender: TObject; var Key: Char);
begin
    if key='i' then begin
    showmessage('Павлов Антон Евгеньевич; dancer_rnb@mail.ru; 2008-2010');
    end;
end;

procedure Tkontyr.per1Click(Sender: TObject);
begin
  Rper2.Checked:=true;
  Rper1.Checked:=false;
  per2.Visible:=true;
  per1.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per0Click(Sender: TObject);
begin
  Rper1.Checked:=true;
  Rper0.Checked:=false;
  per1.Visible:=true;
  per0.Visible:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per2Click(Sender: TObject);
begin
  Rper3.Checked:=true;
  Rper2.Checked:=false;
  per3.Visible:=true;
  per2.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per3Click(Sender: TObject);
begin
  Rper4.Checked:=true;
  Rper3.Checked:=false;
  per4.Visible:=true;
  per3.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per4Click(Sender: TObject);
begin
  Rper5.Checked:=true;
  Rper4.Checked:=false;
  per5.Visible:=true;
  per4.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per5Click(Sender: TObject);
begin
  Rper6.Checked:=true;
  Rper5.Checked:=false;
  per6.Visible:=true;
  per5.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per6Click(Sender: TObject);
begin
  Rper7.Checked:=true;
  Rper6.Checked:=false;
  per7.Visible:=true;
  per6.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per7Click(Sender: TObject);
begin
  Rper8.Checked:=true;
  Rper7.Checked:=false;
  per8.Visible:=true;
  per7.Visible:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.per8Click(Sender: TObject);
begin
  Rper9.Checked:=true;
  Rper8.Checked:=false;
  per9.Visible:=true;
  per8.Visible:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.per9Click(Sender: TObject);
begin
  Rper0.Checked:=true;
  Rper9.Checked:=false;
  per0.Visible:=true;
  per9.Visible:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.per0ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per9.Show;
  per0.Hide;
  RPer9.Checked:=true;
  Rper0.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.per9ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per8.Show;
  per9.Hide;
  RPer8.Checked:=true;
  Rper9.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.per8ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per7.Show;
  per8.Hide;
  RPer7.Checked:=true;
  Rper8.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per7ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per6.Show;
  per7.Hide;
  RPer6.Checked:=true;
  Rper7.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per6ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per5.Show;
  per6.Hide;
  RPer5.Checked:=true;
  Rper6.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per4.Show;
  per5.Hide;
  RPer4.Checked:=true;
  Rper5.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per4ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per3.Show;
  per4.Hide;
  RPer3.Checked:=true;
  Rper4.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per2.Show;
  per3.Hide;
  RPer2.Checked:=true;
  Rper3.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per1.Show;
  per2.Hide;
  RPer1.Checked:=true;
  Rper2.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.per1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  per0.Show;
  per1.Hide;
  RPer0.Checked:=true;
  Rper1.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.Rper0Click(Sender: TObject);
begin
  per0.Show;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;

  Rper9.Checked:=false;
  Rper0.Checked:=true;
  Rper1.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=true;
  memo12.Lines.Add('На блоке КП4 переключатель ПРИОРИТЕТ поставьте в положение ОТКЛ');
end;

procedure Tkontyr.Rper1Click(Sender: TObject);
begin
  per0.Hide;
  per1.Show;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper0.Checked:=false;
  Rper1.Checked:=true;
  Rper2.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper2Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Show;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper1.Checked:=false;
  Rper2.Checked:=true;
  Rper3.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=true;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper3Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Show;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper2.Checked:=false;
  Rper3.Checked:=true;
  Rper4.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=true;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper4Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Show;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper3.Checked:=false;
  Rper4.Checked:=true;
  Rper5.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=true;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper5Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Show;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper4.Checked:=false;
  Rper5.Checked:=true;
  Rper6.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=true;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=false;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper6Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Show;
  per7.Hide;
  per8.Hide;
  per9.Hide;
  Rper5.Checked:=false;
  Rper6.Checked:=true;
  Rper7.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=true;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=false;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper7Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Show;
  per8.Hide;
  per9.Hide;
  Rper6.Checked:=false;
  Rper7.Checked:=true;
  Rper8.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=true;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=false;
end;

procedure Tkontyr.Rper8Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Show;
  per9.Hide;
  Rper7.Checked:=false;
  Rper8.Checked:=true;
  Rper9.Checked:=false;

  Rper0.Enabled:=false;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=true;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.Rper9Click(Sender: TObject);
begin
  per0.Hide;
  per1.Hide;
  per2.Hide;
  per3.Hide;
  per4.Hide;
  per5.Hide;
  per6.Hide;
  per7.Hide;
  per8.Hide;
  per9.Show;
  Rper8.Checked:=false;
  Rper9.Checked:=true;
  Rper0.Checked:=false;

  Rper0.Enabled:=true;
  Rper1.Enabled:=false;
  Rper2.Enabled:=false;
  Rper3.Enabled:=false;
  Rper4.Enabled:=false;
  Rper5.Enabled:=false;
  Rper6.Enabled:=false;
  Rper7.Enabled:=false;
  Rper8.Enabled:=true;
  Rper9.Enabled:=true;
end;

procedure Tkontyr.Timer10Timer(Sender: TObject);
begin
  if Edit9.Text='0' then begin
  prin_inf:=true;
  end;
end;

procedure Tkontyr.Timer7Timer(Sender: TObject);
begin
  if Shape24.Brush.Color=clLime then begin
  Edit9.Text:='0';
  Edit1.Text:='0';
  Edit8.Text:=k01;
  Edit2.Text:=k02;
  Edit7.Text:=k03;
  Timer7.Enabled:=false;
  Shape5.Brush.Color:=clWhite;
  Shape6.Brush.Color:=clWhite;
  Shape20.Brush.Color:=clWhite;
  Timer8.Enabled:=true;
  end;
end;

procedure Tkontyr.Timer8Timer(Sender: TObject);
begin
  MediaPlayer1.Play;
end;

procedure Tkontyr.Ipa7Click(Sender: TObject);
var adres: string;
begin
  timer8.Enabled:=false;
  mediaplayer1.Stop;
  shape5.Brush.Color:=clwhite;
  shape20.Brush.Color:=clWhite;
  memo12.Lines.Add('На блоке КП5 нажмите кнопку ОТКЛ. ЗС');
  if (memo13.Text=memo12.Text) and (strtoint(menu_1.inf_level.Caption)<2) then begin
    adres:='system\Контур_П\'+auto.kours.Text+'_курс\'+auto.vzvod.Text+'_взвод';
    reg:=TRegIniFile.Create(adres);
    reg.WriteInteger(auto.name.text,'Уровень доступа',2);
    showmessage('получен новый уровень доступа "2"');
    kontyr.Caption:='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 12';
  end;
  if (memo13.Text=memo12.Text) then begin
    menu_2.Label2.Enabled:=true;
    menu_2.Label3.Enabled:=true;
    menu_2.Label6.Enabled:=true;
    memo13.Lines.LoadFromFile('шаблоны\3. Проверка прохождения информации по каналам 12.txt');
  end;
end;

procedure Tkontyr.Ipa5Click(Sender: TObject);
begin
  Shape23.Brush.Color:=clLime;
  edit3.Text:='9';
  memo12.Lines.Add('На блоке КП5 нажмите кнопку НАБОР КК');
end;

procedure Tkontyr.Ipa1Click(Sender: TObject);
begin
  if (shape29.Brush.Color=clLime) and (edit4.Text<>'-') and (prin_inf=false) then begin
  memo1.Lines.Add(edit3.Text);
  memo2.Lines.Add(edit4.Text);
  memo3.Lines.Add(edit5.Text);
  memo4.Lines.Add(edit6.Text);
  if (edit3.Text<>'') then begin
    edit3.Text:=inttostr(strtoint(edit3.Text)+1);
    edit4.Text:='0';
    edit5.Text:='0';
    edit6.Text:='0';
  end;
  if (edit3.Text='10') then begin
    edit3.Text:='1';
  end;
  if (edit3.Text='9') then begin
    edit4.Text:='-';
    edit5.Text:='0';
    edit6.Text:='0';
    if (kontyr.caption='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 1-9') then
    memo12.Lines.Add('На блоке КП5 последовательно нажимая кнопку ГРУППА, с помощью кнопок 0-9 наберите трехзначные комбинации для групп 1-8');

    if (kontyr.caption='Контур П-2   Проверка работоспособности -> Проверка прохождения информации по каналам 12') then
    memo12.Lines.Add('ННа блоке КП5 последовательно нажимая кнопку ГРУППА, с помощью кнопок 0-9 наберите трехзначные комбинации 111, 111, 222, 222, 333, 333, 444, 444, " |_| 00');
  end;
  end;

  if (prin_inf=true) then begin
    if (n<memo5.Lines.Count) then begin
      Edit3.Text:=memo5.Lines[n];
      Edit4.Text:=memo6.Lines[n];
      Edit5.Text:=memo7.Lines[n];
      Edit6.Text:=memo8.Lines[n];
      n:=n+1;
    end;
    if (n=memo5.Lines.Count) then begin
      n:=0;
    end;
  end;
end;

procedure Tkontyr.Timer9Timer(Sender: TObject);
var
  F: TSearchRec;
  Path: string;
  Attr: integer;
begin
  Path:='сеть\'+koresp+'\*.txt';
  Attr:=faAnyFile;
  FindFirst(path,attr,f);
  if F.Name<>'' then begin
    label106.Caption:='найден файл!!!!';
    timer8.Enabled:=true; // включаем звуковую сигнализацию
    memo5.Lines.LoadFromFile('сеть\'+koresp+'\group.txt');
    memo6.Lines.LoadFromFile('сеть\'+koresp+'\name1.txt');
    memo7.Lines.LoadFromFile('сеть\'+koresp+'\name2.txt');
    memo8.Lines.LoadFromFile('сеть\'+koresp+'\name3.txt');
    memo9.Lines.LoadFromFile('сеть\'+koresp+'\from1.txt');
    memo10.Lines.LoadFromFile('сеть\'+koresp+'\from2.txt');
    memo11.Lines.LoadFromFile('сеть\'+koresp+'\from3.txt');
    deletefile('сеть\'+koresp+'\group.txt');
    deletefile('сеть\'+koresp+'\name1.txt');
    deletefile('сеть\'+koresp+'\name2.txt');
    deletefile('сеть\'+koresp+'\name3.txt');
    deletefile('сеть\'+koresp+'\from1.txt');
    deletefile('сеть\'+koresp+'\from2.txt');
    deletefile('сеть\'+koresp+'\from3.txt');

    edit8.Text:=memo9.Lines[0];
    edit2.Text:=memo10.Lines[0];
    edit7.Text:=memo11.Lines[0];
    edit9.Text:='0';
    edit1.Text:='0';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    edit3.Text:=inttostr(memo5.Lines.Count);
  end;
end;


procedure DeleteFiles(Path: string);  //процедура удаления файлов
var
  Mask: string;
  SearchRec: TSearchRec;
  FindResult: Integer;
  List: TStringList;
  i: Integer;
begin
  Mask := ExtractFileName(Path);
  if Mask = '' then
    Mask := '*.*';
  Path := ExtractFilePath(Path);
  if Path = '' then
  List := TStringList.Create;
  try
    FindResult := FindFirst(Path + '*.*', faAnyFile, SearchRec);
    try
      while FindResult = 0 do
        with SearchRec do
        begin
          if ((Attr and faDirectory) = 0) and MatchesMask(Name, Mask) then
            List.Add(Name);
          FindResult := FindNext(SearchRec);
        end;
      for i := 0 to List.Count - 1 do
        DeleteFile(Path + List[i]);
    finally
      FindClose(SearchRec);
    end;
  finally
    List.Free;
  end;
end;

procedure Tkontyr.Timer11Timer(Sender: TObject);
begin
  label107.Visible:=true;
  timer12.Enabled:=true;
end;

procedure Tkontyr.Timer12Timer(Sender: TObject);
begin
  timer11.Enabled:=false;
  label107.Hide;
end;

procedure Tkontyr.Ipa6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  shape11.Brush.Color:=clwhite;
end;

procedure Tkontyr.Ipa6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var i: integer;
begin
   i:=random(2);
   if (i=1) then shape11.Brush.Color:=cllime;
end;

procedure Tkontyr.Ipa2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edit8.Text:='';
  edit2.Text:='';
  edit7.Text:='';
end;

procedure Tkontyr.Ipa2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edit8.Text:=k31;
  edit2.Text:=k32;
  edit7.Text:=k33;
end;

procedure Tkontyr.Timer13Timer(Sender: TObject);
begin
  shape11.Brush.Color:=cllime;
  shape12.Brush.Color:=cllime;
  shape13.Brush.Color:=cllime;
  shape14.Brush.Color:=cllime;
  shape15.Brush.Color:=cllime;
  shape16.Brush.Color:=cllime;
  shape17.Brush.Color:=cllime;
  shape18.Brush.Color:=cllime;
  shape19.Brush.Color:=cllime;
  timer14.Enabled:=true;
  timer13.Enabled:=false;
end;

procedure Tkontyr.Timer14Timer(Sender: TObject);
begin
  shape11.Brush.Color:=cllime;
  shape12.Brush.Color:=clWhite;
  shape13.Brush.Color:=clWhite;
  shape14.Brush.Color:=clWhite;
  shape15.Brush.Color:=clWhite;
  shape16.Brush.Color:=clWhite;
  shape17.Brush.Color:=clWhite;
  shape18.Brush.Color:=clWhite;
  shape19.Brush.Color:=clWhite;
  timer13.Enabled:=true;
  timer14.Enabled:=false;
end;

procedure Tkontyr.Timer15Timer(Sender: TObject);
begin
  if (shape29.Brush.Color=cllime) then begin
    shape2.Brush.Color:=cllime;
    timer15.Enabled:=false;
    timer16.Enabled:=true;
  end;
end;

procedure Tkontyr.Timer16Timer(Sender: TObject);
begin
  shape2.Brush.Color:=clwhite;
  timer16.Enabled:=false;
  timer15.Enabled:=true;
end;

procedure Tkontyr.Timer17Timer(Sender: TObject);
begin
  a:=a+1;
  edit12.Text:='';
  Edit12.Text:='00'+ inttostr(a);
  if (Edit12.Text='004') then begin
    timer17.Enabled:=false;
    edit10.Text:='444';
    edit11.Text:='444';
  end;
end;

procedure Tkontyr.IKnopkaOtklActiv5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IKnopkaVklActiv5.Show;
  Iknopkaotklactiv5.Hide;
end;

procedure Tkontyr.IKnopkaOtklActiv5MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   IKnopkaVklActiv5.hide;
   Iknopkaotklactiv5.show;
end;

procedure Tkontyr.IKnopkaOtklActiv6MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IKnopkaVklActiv6.Show;
  IKnopkaOtklActiv6.hide;
end;

procedure Tkontyr.IKnopkaOtklActiv6MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IKnopkaVklActiv6.hide;
  IKnopkaOtklActiv6.show;
end;

procedure Tkontyr.IKnopkaOtklActiv8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  IKnopkaOtklActiv8.Hide;
end;

procedure Tkontyr.IKnopkaOtklActiv8MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  
  IKnopkaOtklActiv8.Show;
end;

procedure Tkontyr.load();
begin
  if (index<=File_load.Count) then begin
    Edit10.text:=copy(file_load.Strings[index-1],1,3);
    Edit11.text:=copy(file_load.Strings[index-1],6,8);
    edit12.Text:=format('%.*d',[3,index]);
  end;
end;

procedure Tkontyr.IKnopkaOtklActiv8Click(Sender: TObject);
begin
  if (yslovie) then begin
  if (index<file_load.Count) then index:=index+1
  else index:=1;
  load;
  end
  else begin
  b:=b+1;
  if Edit12.Text<>'' then begin
    Edit12.Text:='00'+inttostr(b);
    Edit10.Text:=inttostr(b)+inttostr(b)+inttostr(b);
    Edit11.Text:=inttostr(b)+inttostr(b)+inttostr(b);
    if b=5 then begin
      b:=0;
      Edit12.Text:='000';
      Edit10.Text:='';
      Edit11.Text:='';
    end;
  end;
  end;
  if (edit12.Text='000') then memo12.Lines.Add('На блоке КП2 Нажимая кнопку СДВИГ-1');
end;

procedure Tkontyr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (kontyr.Memo12.Visible=false) then begin
  menu_1.show;
  kontyr.Hide;
  end
  else begin
  menu_2.show;
  kontyr.Hide;
  end;
  deletefile('admin\'+info.inf_name.caption+'.txt');
  first:=false;
end;

procedure Tkontyr.GroupBox4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ipa2.Hide;
  ip2.Show;
  ipa3.Hide;
  ip3.Show;
  ipa4.Hide;
  ip4.Show;

  if tymb3='vkl' then
  begin
  ItymbVklA1.Hide;
  ItymbVkl1.Show;
  end;
  if tymb3='otkl' then
  begin
  ItymbOtkl1.Show;
  ItymbOtklA1.Hide;
  end;
end;

procedure Tkontyr.BitBtn1Click(Sender: TObject);
begin
  memo12.Lines.Delete(memo12.Lines.Count-1);
end;


procedure Tkontyr.Button1Click(Sender: TObject);
begin
  form3.show;
end;

procedure Tkontyr.Timer18Timer(Sender: TObject);
begin
  if (kontyr.Caption='Контур П-2   Работа в сеть') then begin
  if fileexists('admin\'+info.inf_name.caption+'.txt') then begin
  File_load.LoadFromFile('admin\'+info.inf_name.caption+'.txt');
  Shape10.Brush.Color:=clLime;
  if (first) then begin
    randomize;
    Edit8.Text:=IntToStr(random(9));
    Edit2.Text:=IntToStr(random(9));
    Edit7.Text:=IntToStr(random(9));
    Timer8.Enabled:=true;
    first:=false;
  end;
  yslovie:=true;
  if (yslovie_2=false) then begin
    index:=file_load.Count;
  end;
  yslovie_2:=true;
  load;
  end
  else begin
    yslovie:=false;
    index:=1;
  end;
  end;
end;

procedure Tkontyr.IKnopkaOtklActiv7Click(Sender: TObject);
begin
  if (yslovie) then begin
    if (index+10<=File_load.Count) then index:=index+10;
    load;
  end;
end;

end.
