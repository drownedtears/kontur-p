unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    StringGrid2: TStringGrid;
    ListBox1: TListBox;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  i,j, count: integer;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
const DEFBORDER = 8;
var max, temp, i, n: Integer;
begin
//+--------------------------------------------------------+
// ���������� �������
  for i:= 1 to 191 do StringGrid1.Cells[0,i]:= inttostr(i);
  for i:= 2 to 12 do  StringGrid1.Cells[i,0]:= inttostr(i-2);

  StringGrid1.Cells[0,0]:='�';
  StringGrid1.Cells[1,0]:='���������� �������';

  for i:= 2 to 12 do  StringGrid2.Cells[i,0]:= inttostr(i-2);

  StringGrid2.Cells[0,0]:='�';
  StringGrid2.Cells[1,0]:='���������� �������';

  StringGrid1.Cells[1,1]:='������ �� �� � ������?';                                     StringGrid1.Cells[2,1]:='030'; StringGrid1.Cells[5,1]:='332'; StringGrid1.Cells[8,1]:='691';
  StringGrid1.Cells[1,2]:='�����';                                                      StringGrid1.Cells[3,2]:='123'; StringGrid1.Cells[9,2]:='724'; StringGrid1.Cells[11,2]:='930';
  StringGrid1.Cells[1,3]:='� ���� �� ����� (�)';                                        StringGrid1.Cells[2,3]:='023'; StringGrid1.Cells[4,3]:='214'; StringGrid1.Cells[11,3]:='912';
  StringGrid1.Cells[1,4]:='������ ����������� �����';                                   StringGrid1.Cells[6,4]:='412';
  StringGrid1.Cells[1,5]:='����� ������';                                               StringGrid1.Cells[8,5]:='635';
  StringGrid1.Cells[1,6]:='����';                                                       StringGrid1.Cells[2,6]:='012';
  StringGrid1.Cells[1,7]:='��������� ����� ���';                                        StringGrid1.Cells[11,7]:='919';
  StringGrid1.Cells[1,8]:='���������� �������� ��������� ����� �������� ������������';  StringGrid1.Cells[2,8]:='017';
  StringGrid1.Cells[1,9]:='��������� ������� ������ ���������� 1,8 ���';                StringGrid1.Cells[8,9]:='629';
  StringGrid1.Cells[1,10]:='��������� ������� ������ ���������� 2,1 ���';               StringGrid1.Cells[6,10]:='419';

  StringGrid1.Cells[1,11]:='��������� ������� ������ ���������� 2,6 ���';               StringGrid1.Cells[11,11]:='906';
  StringGrid1.Cells[1,12]:='��������� ������� ������ ���������� 3,2 ���';               StringGrid1.Cells[2,12]:='020';
  StringGrid1.Cells[1,13]:='��������� ����� �� ����� ...';                              StringGrid1.Cells[10,13]:='814';
  StringGrid1.Cells[1,14]:='���������� �������������� ������� ... ������ ... ���';      StringGrid1.Cells[4,14]:='209';
  StringGrid1.Cells[1,15]:='������� �������� �1� ... ���';                              StringGrid1.Cells[9,15]:='727';
  StringGrid1.Cells[1,16]:='������� ������ �1� ... ���';                                StringGrid1.Cells[3,16]:='119';
  StringGrid1.Cells[1,17]:='����������� ����� ������ �� ������ ����������';             StringGrid1.Cells[2,17]:='026';
  StringGrid1.Cells[1,18]:='��� �� ���� ���������� �� ������ ���������� ?';             StringGrid1.Cells[3,18]:='115'; StringGrid1.Cells[5,18]:='321'; StringGrid1.Cells[10,18]:='824';
  StringGrid1.Cells[1,19]:='��� �� ���� ���������� �� ���������� ������ ?';             StringGrid1.Cells[2,19]:='028'; StringGrid1.Cells[4,19]:='217'; StringGrid1.Cells[11,19]:='926';
  StringGrid1.Cells[1,20]:='��� ���������� ��� ������ ?';                               StringGrid1.Cells[7,20]:='515'; StringGrid1.Cells[8,20]:='634'; StringGrid1.Cells[10,20]:='831';

  StringGrid1.Cells[1,21]:='��� �������� ������';                                       StringGrid1.Cells[5,21]:='339'; StringGrid1.Cells[9,21]:='743';
  StringGrid1.Cells[1,22]:='��� �������� �����������������';                            StringGrid1.Cells[4,22]:='249'; StringGrid1.Cells[8,22]:='642';
  StringGrid1.Cells[1,23]:='��� �������� �����';                                        StringGrid1.Cells[6,23]:='439';
  StringGrid1.Cells[1,24]:='��� ������ ����, �� �� �����';                              StringGrid1.Cells[2,24]:='039';
  StringGrid1.Cells[1,25]:='��� ��������� �� ��� �� ������ ����� ... ?';                StringGrid1.Cells[6,25]:='441';
  StringGrid1.Cells[1,26]:='�� ��� �������� ���������������� (�������������) ������';   StringGrid1.Cells[6,26]:='445';
  StringGrid1.Cells[1,27]:='������ ������ ������';                                      StringGrid1.Cells[3,27]:='139';
  StringGrid1.Cells[1,28]:='���� ������ �� �������� (�� ��������)';                     StringGrid1.Cells[9,28]:='738';
  StringGrid1.Cells[1,29]:='����� ������ �� ������ ����� ... .';                        StringGrid1.Cells[10,29]:='847';
  StringGrid1.Cells[1,30]:='������������(�) ������� ��������� ����������';              StringGrid1.Cells[4,30]:='239';

  StringGrid1.Cells[1,31]:='��������� ��������� ����������� ...';                       StringGrid1.Cells[2,31]:='037'; StringGrid1.Cells[3,31]:='143'; StringGrid1.Cells[6,31]:='464';  StringGrid1.Cells[11,31]:='941';
  StringGrid1.Cells[1,32]:='�-230-1�';                                                  StringGrid1.Cells[3,32]:='138';
  StringGrid1.Cells[1,33]:='�-230-03';                                                  StringGrid1.Cells[3,33]:='151';
  StringGrid1.Cells[1,34]:='�-800';                                                     StringGrid1.Cells[5,34]:='354';
  StringGrid1.Cells[1,35]:='�-206';                                                     StringGrid1.Cells[11,35]:='938';
  StringGrid1.Cells[1,36]:='�-208';                                                     StringGrid1.Cells[5,36]:='341';
  StringGrid1.Cells[1,37]:='�-226';                                                     StringGrid1.Cells[7,37]:='543';
  StringGrid1.Cells[1,38]:='�������� ���������� ���������� ������';                     StringGrid1.Cells[7,38]:='548';
  StringGrid1.Cells[1,39]:='��������� ��������';                                        StringGrid1.Cells[3,39]:='148';
  StringGrid1.Cells[1,40]:='��������� ��������';                                        StringGrid1.Cells[6,40]:='459';

  StringGrid1.Cells[1,41]:='�� ��� ���� ����� ����� �� ������';                         StringGrid1.Cells[8,41]:='659';
  StringGrid1.Cells[1,42]:='��������� ��������� ������� ���������� �������';            StringGrid1.Cells[2,42]:='053';
  StringGrid1.Cells[1,43]:='����������';                                                StringGrid1.Cells[7,43]:='554';
  StringGrid1.Cells[1,44]:='100 ���';                                                   StringGrid1.Cells[3,44]:='153';
  StringGrid1.Cells[1,45]:='1,2 ����';                                                  StringGrid1.Cells[10,45]:='856';
  StringGrid1.Cells[1,46]:='2,4 ����';                                                  StringGrid1.Cells[6,46]:='450';
  StringGrid1.Cells[1,47]:='4,8 ����';                                                  StringGrid1.Cells[11,47]:='954';
  StringGrid1.Cells[1,48]:='5,2 ����';                                                  StringGrid1.Cells[5,48]:='359';
  StringGrid1.Cells[1,49]:='48   ����';                                                 StringGrid1.Cells[4,49]:='252';
  StringGrid1.Cells[1,50]:='240   ����';                                                StringGrid1.Cells[4,50]:='261';

  StringGrid1.Cells[1,51]:='480   ����';                                                StringGrid1.Cells[7,51]:='556';
  StringGrid1.Cells[1,52]:='����� ����� ... .';                                         StringGrid1.Cells[2,52]:='059';
  StringGrid1.Cells[1,53]:='����� ����� ... .';                                         StringGrid1.Cells[3,53]:='159';
  StringGrid1.Cells[1,54]:='������ (�) ����� ... .';                                    StringGrid1.Cells[7,54]:='561';
  StringGrid1.Cells[1,55]:='���';                                                       StringGrid1.Cells[8,55]:='656';
  StringGrid1.Cells[1,56]:='��';                                                        StringGrid1.Cells[3,56]:='154';
  StringGrid1.Cells[1,57]:='��������� ������ �  �����������  � - ... .';                StringGrid1.Cells[9,57]:='758';
  StringGrid1.Cells[1,58]:='����������� ������ � ����������� � - ... .';                StringGrid1.Cells[10,58]:='859';
  StringGrid1.Cells[1,59]:='��� �����, ��������';                                       StringGrid1.Cells[2,59]:='003'; StringGrid1.Cells[5,59]:='343'; StringGrid1.Cells[7,59]:='549';
  StringGrid1.Cells[1,60]:='��� �� �����, ���������';                                   StringGrid1.Cells[2,60]:='057'; StringGrid1.Cells[6,60]:='452'; StringGrid1.Cells[9,60]:='746';

  StringGrid1.Cells[1,61]:='����� ...(����, ������)';                                   StringGrid1.Cells[9,61]:='761';
  StringGrid1.Cells[1,62]:='���������';                                                 StringGrid1.Cells[2,62]:='064'; StringGrid1.Cells[7,62]:='551'; StringGrid1.Cells[10,62]:='849';
  StringGrid1.Cells[1,63]:='��������';                                                  StringGrid1.Cells[11,63]:='944';
  StringGrid1.Cells[1,64]:='���������� (����������)';                                   StringGrid1.Cells[6,64]:='461';
  StringGrid1.Cells[1,65]:='�������� (��)';                                             StringGrid1.Cells[3,65]:='164';
  StringGrid1.Cells[1,66]:='�����������';                                               StringGrid1.Cells[7,66]:='541';
  StringGrid1.Cells[1,67]:='�1�';                                                       StringGrid1.Cells[8,67]:='654';
  StringGrid1.Cells[1,68]:='���';                                                       StringGrid1.Cells[6,68]:='492';
  StringGrid1.Cells[1,69]:='����������';                                                StringGrid1.Cells[3,69]:='156';
  StringGrid1.Cells[1,70]:='����� ��������';                                            StringGrid1.Cells[5,70]:='347';

  StringGrid1.Cells[1,71]:='���';                                                       StringGrid1.Cells[4,71]:='244';
  StringGrid1.Cells[1,72]:='��-3002';                                                   StringGrid1.Cells[2,72]:='050';
  StringGrid1.Cells[1,73]:='���';                                                       StringGrid1.Cells[9,73]:='768';
  StringGrid1.Cells[1,74]:='40 ��';                                                     StringGrid1.Cells[5,74]:='357';
  StringGrid1.Cells[1,75]:='��������� �����';                                           StringGrid1.Cells[11,75]:='957';
  StringGrid1.Cells[1,76]:='�������';                                                  StringGrid1.Cells[7,76]:='563';
  StringGrid1.Cells[1,77]:='����� �����';                                              StringGrid1.Cells[9,77]:='769';
  StringGrid1.Cells[1,78]:='���-5';                                                     StringGrid1.Cells[10,78]:='862';
  StringGrid1.Cells[1,79]:='�������� ���������� (�������-�������� �����)';              StringGrid1.Cells[2,79]:='098';
  StringGrid1.Cells[1,80]:='����';                                                      StringGrid1.Cells[3,80]:='197';

  StringGrid1.Cells[1,81]:='��-5';                                                      StringGrid1.Cells[4,81]:='292';
  StringGrid1.Cells[1,82]:='��-3023';                                                   StringGrid1.Cells[6,82]:='489';
  StringGrid1.Cells[1,83]:='���';                                                       StringGrid1.Cells[2,83]:='094';
  StringGrid1.Cells[1,84]:='��������� �����';                                           StringGrid1.Cells[3,84]:='189'; StringGrid1.Cells[10,84]:='891';
  StringGrid1.Cells[1,85]:='������-�2 (�3)';                                            StringGrid1.Cells[3,85]:='190'; StringGrid1.Cells[10,85]:='890';
  StringGrid1.Cells[1,86]:='��������� (��) ���������� (��)';                            StringGrid1.Cells[8,86]:='687';
  StringGrid1.Cells[1,87]:='����� (�����) ��������';                                    StringGrid1.Cells[5,87]:='393';
  StringGrid1.Cells[1,88]:='��������������';                                            StringGrid1.Cells[9,88]:='776';
  StringGrid1.Cells[1,89]:='���������� (�)';                                            StringGrid1.Cells[5,89]:='385';
  StringGrid1.Cells[1,90]:='����� ����������';                                          StringGrid1.Cells[4,90]:='284';

  StringGrid1.Cells[1,91]:='����� ... (���)';                                           StringGrid1.Cells[4,91]:='278';
  StringGrid1.Cells[1,92]:='���������';                                                 StringGrid1.Cells[9,92]:='796';
  StringGrid1.Cells[1,93]:='��������';                                                  StringGrid1.Cells[2,93]:='091';
  StringGrid1.Cells[1,94]:='�������';                                                   StringGrid1.Cells[11,94]:='998';
  StringGrid1.Cells[1,95]:='�����';                                                     StringGrid1.Cells[8,95]:='695';
  StringGrid1.Cells[1,96]:='�� ��������';                                               StringGrid1.Cells[4,96]:='297';
  StringGrid1.Cells[1,97]:='�� ����';                                                  StringGrid1.Cells[3,97]:='167';
  StringGrid1.Cells[1,98]:='�� ��� �������';                                            StringGrid1.Cells[7,98]:='546';
  StringGrid1.Cells[1,99]:='����';                                                      StringGrid1.Cells[6,99]:='444';
  StringGrid1.Cells[1,100]:='������  (�)';                                              StringGrid1.Cells[4,100]:='259';

  StringGrid1.Cells[1,101]:='�����  (�)';                                               StringGrid1.Cells[8,101]:='658';
  StringGrid1.Cells[1,102]:='����� � ����������� ... %';                                StringGrid1.Cells[3,102]:='155';
  StringGrid1.Cells[1,103]:='�������';                                                  StringGrid1.Cells[3,103]:='141';
  StringGrid1.Cells[1,104]:='����';                                                     StringGrid1.Cells[2,104]:='062';
  StringGrid1.Cells[1,105]:='�����';                                                    StringGrid1.Cells[7,105]:='558';
  StringGrid1.Cells[1,106]:='��������� (�)';                                            StringGrid1.Cells[4,106]:='247';
  StringGrid1.Cells[1,107]:='���������� ������� ������� ��������� ����������  ... �� (��)'; StringGrid1.Cells[6,107]:='454';
  StringGrid1.Cells[1,108]:='- 23 �� (-2,65 ��)';                                       StringGrid1.Cells[3,108]:='157';
  StringGrid1.Cells[1,109]:='- 28 �� (-3,2  ��)';                                       StringGrid1.Cells[2,109]:='066';
  StringGrid1.Cells[1,110]:='- 5,7 �� (-0,65 ��)';                                      StringGrid1.Cells[3,110]:='161';

  StringGrid1.Cells[1,111]:='��������';                                                 StringGrid1.Cells[3,111]:='181';  StringGrid1.Cells[8,111]:='645';  StringGrid1.Cells[11,111]:='948';
  StringGrid1.Cells[1,112]:='��������� ����������';                                     StringGrid1.Cells[9,112]:='766';
  StringGrid1.Cells[1,113]:='����������� ������������';                                 StringGrid1.Cells[11,113]:='967';
  StringGrid1.Cells[1,114]:='������� (�) �������� � ... �� ... (����, ������)';         StringGrid1.Cells[2,114]:='054';
  StringGrid1.Cells[1,115]:='������� (�) �������� ����� � ... �� ... (����, ������)';   StringGrid1.Cells[6,115]:='438';
  StringGrid1.Cells[1,116]:='������� � ������ ... �����';                               StringGrid1.Cells[5,116]:='371';
  StringGrid1.Cells[1,117]:='����� (�)  ����� �� ������ ����� ... .';                   StringGrid1.Cells[2,117]:='065';
  StringGrid1.Cells[1,118]:='������ ������� �������� ������';                           StringGrid1.Cells[3,118]:='137';
  StringGrid1.Cells[1,119]:='����� �� ����, ���������';                                 StringGrid1.Cells[3,119]:='170';
  StringGrid1.Cells[1,120]:='������ ������� �������� �� ������';                        StringGrid1.Cells[11,120]:='939';

  StringGrid1.Cells[1,121]:='������� ����� �� ������ ����� ... .';                      StringGrid1.Cells[6,121]:='442';
  StringGrid1.Cells[1,122]:='���������� � ����� ���';                                   StringGrid1.Cells[4,122]:='238';
  StringGrid1.Cells[1,123]:='��������� ���������� ... � ������ "�� ����"';              StringGrid1.Cells[3,123]:='176';
  StringGrid1.Cells[1,124]:='�� ���� ������ ����� ��������� ����������';                StringGrid1.Cells[8,124]:='676';
  StringGrid1.Cells[1,125]:='��������� �� ���������� ��������';                         StringGrid1.Cells[7,125]:='579';
  StringGrid1.Cells[1,126]:='��������� �� ��������� ��������';                          StringGrid1.Cells[5,126]:='374';
  StringGrid1.Cells[1,127]:='������ ����� �������� �� ��������';                        StringGrid1.Cells[3,127]:='158';
  StringGrid1.Cells[1,128]:='�� ������ ����� ... ����� ���������';                      StringGrid1.Cells[8,128]:='663';
  StringGrid1.Cells[1,129]:='������ �� ?';                                              StringGrid1.Cells[5,129]:='362';
  StringGrid1.Cells[1,130]:='������������ (�) ������ (�) �� ������ ����� ... .';        StringGrid1.Cells[3,130]:='146';

  StringGrid1.Cells[1,131]:='��������� �������� �����������';                           StringGrid1.Cells[11,131]:='958';
  StringGrid1.Cells[1,132]:='��������� �������� �����������';                           StringGrid1.Cells[4,132]:='246';
  StringGrid1.Cells[1,133]:='�� ��� ������ �����-������';                               StringGrid1.Cells[2,133]:='056';
  StringGrid1.Cells[1,134]:='���������� ������� �� ��������� �������';                  StringGrid1.Cells[6,134]:='463';
  StringGrid1.Cells[1,135]:='��������� ��������� ������� �� ���� ��������';             StringGrid1.Cells[10,135]:='837';
  StringGrid1.Cells[1,136]:='��������� ���������� �� ������ ����� ������������';        StringGrid1.Cells[7,136]:='529';
  StringGrid1.Cells[1,137]:='�������� ��������� ����������� �/� � ������ (���) N ...';  StringGrid1.Cells[2,137]:='016';
  StringGrid1.Cells[1,138]:='�������� ����������� �/� � ... ������ (���) ... ��';       StringGrid1.Cells[3,138]:='131';
  StringGrid1.Cells[1,139]:='��������� ������������ ������� � ... ������  (���)';       StringGrid1.Cells[11,139]:='928';
  StringGrid1.Cells[1,140]:='������������ ������� � ... ������ (���) � �����';          StringGrid1.Cells[7,140]:='507';

  StringGrid1.Cells[1,141]:='������������ ������� � ... ������ (���) �����������';      StringGrid1.Cells[8,141]:='625';
  StringGrid1.Cells[1,142]:='���������� �� ������� ���������';                          StringGrid1.Cells[5,142]:='324';
  StringGrid1.Cells[1,143]:='��������� �����������, �� ���� �����';                     StringGrid1.Cells[11,143]:='915';
  StringGrid1.Cells[1,144]:='����� ���������';                                          StringGrid1.Cells[2,144]:='018';
  StringGrid1.Cells[1,145]:='���������� ��������';                                      StringGrid1.Cells[3,145]:='112';
  StringGrid1.Cells[1,146]:='���������� �� ��������';                                   StringGrid1.Cells[5,146]:='313';
  StringGrid1.Cells[1,147]:='��������� � ����� ��������� �����';                       StringGrid1.Cells[6,147]:='422';
  StringGrid1.Cells[1,148]:='��';                                                       StringGrid1.Cells[3,148]:='106'; StringGrid1.Cells[6,148]:='403';
  StringGrid1.Cells[1,149]:='���';                                                      StringGrid1.Cells[2,149]:='022'; StringGrid1.Cells[11,149]:='920';
  StringGrid1.Cells[1,150]:='�� ��������� ������� ������ ��������� �����������';        StringGrid1.Cells[3,150]:='109';

  StringGrid1.Cells[1,151]:='��������� �� �������� N ... .';                            StringGrid1.Cells[6,151]:='416';
  StringGrid1.Cells[1,152]:='';                                                         StringGrid1.Cells[5,152]:='305';
  StringGrid1.Cells[1,153]:='';                                                         StringGrid1.Cells[3,153]:='117';
  StringGrid1.Cells[1,154]:='';                                                         StringGrid1.Cells[2,154]:='025';
  StringGrid1.Cells[1,155]:='';                                                         StringGrid1.Cells[4,155]:='255';
  StringGrid1.Cells[1,156]:='';                                                         StringGrid1.Cells[6,156]:='448';
  StringGrid1.Cells[1,157]:='';                                                         StringGrid1.Cells[10,157]:='843';
  StringGrid1.Cells[1,158]:='';                                                         StringGrid1.Cells[9,158]:='751';
  StringGrid1.Cells[1,159]:='';                                                         StringGrid1.Cells[2,159]:='052';
  StringGrid1.Cells[1,160]:='';                                                         StringGrid1.Cells[2,160]:='046';  StringGrid1.Cells[7,160]:='552';  StringGrid1.Cells[11,160]:='946';

  StringGrid1.Cells[1,161]:='';                                                         StringGrid1.Cells[3,161]:='149';  StringGrid1.Cells[5,161]:='352';  StringGrid1.Cells[9,161]:='754';
  StringGrid1.Cells[1,162]:='';                                                         StringGrid1.Cells[5,162]:='389';  StringGrid1.Cells[6,162]:='496';  StringGrid1.Cells[11,162]:='991';
  StringGrid1.Cells[1,163]:='';                                                         StringGrid1.Cells[4,163]:='282';  StringGrid1.Cells[5,163]:='379';  StringGrid1.Cells[6,163]:='485'; StringGrid1.Cells[11,163]:='995';
  StringGrid1.Cells[1,164]:='0';                                                        StringGrid1.Cells[2,164]:='089';  StringGrid1.Cells[3,164]:='195';  StringGrid1.Cells[5,164]:='398'; StringGrid1.Cells[10,164]:='876';
  StringGrid1.Cells[1,165]:='1';                                                        StringGrid1.Cells[3,165]:='184';  StringGrid1.Cells[5,165]:='376';  StringGrid1.Cells[8,165]:='685'; StringGrid1.Cells[9,165]:='779';
  StringGrid1.Cells[1,166]:='2';                                                        StringGrid1.Cells[3,166]:='192';  StringGrid1.Cells[6,166]:='482';  StringGrid1.Cells[10,166]:='881';
  StringGrid1.Cells[1,167]:='3';                                                        StringGrid1.Cells[2,167]:='045';  StringGrid1.Cells[4,167]:='257';  StringGrid1.Cells[8,167]:='652'; StringGrid1.Cells[10,167]:='851';
  StringGrid1.Cells[1,168]:='4';                                                        StringGrid1.Cells[5,168]:='350';  StringGrid1.Cells[6,168]:='447';  StringGrid1.Cells[7,168]:='509'; StringGrid1.Cells[11,168]:='908';
  StringGrid1.Cells[1,169]:='5';                                                        StringGrid1.Cells[3,169]:='104';  StringGrid1.Cells[5,169]:='315';  StringGrid1.Cells[7,169]:='526'; StringGrid1.Cells[9,169]:='715';
  StringGrid1.Cells[1,170]:='6';                                                        StringGrid1.Cells[2,170]:='011';  StringGrid1.Cells[7,170]:='511';  StringGrid1.Cells[10,170]:='820'; StringGrid1.Cells[11,170]:='904';

  StringGrid1.Cells[1,171]:='7';                                                        StringGrid1.Cells[3,171]:='108';  StringGrid1.Cells[4,171]:='219';  StringGrid1.Cells[6,171]:='404'; StringGrid1.Cells[7,171]:='589';
  StringGrid1.Cells[1,172]:='8';                                                        StringGrid1.Cells[2,172]:='093';  StringGrid1.Cells[3,172]:='187';  StringGrid1.Cells[5,172]:='381'; StringGrid1.Cells[8,172]:='682';
  StringGrid1.Cells[1,173]:='9';                                                        StringGrid1.Cells[2,173]:='079';  StringGrid1.Cells[3,173]:='179';  StringGrid1.Cells[4,173]:='289'; StringGrid1.Cells[7,173]:='573';
  StringGrid1.Cells[1,174]:='�';                                                        StringGrid1.Cells[5,174]:='383';
  StringGrid1.Cells[1,175]:='�';                                                        StringGrid1.Cells[6,175]:='487';
  StringGrid1.Cells[1,176]:='�';                                                        StringGrid1.Cells[3,176]:='174';
  StringGrid1.Cells[1,177]:='�';                                                        StringGrid1.Cells[11,177]:='996';
  StringGrid1.Cells[1,178]:='�';                                                        StringGrid1.Cells[10,178]:='877';
  StringGrid1.Cells[1,179]:='�';                                                        StringGrid1.Cells[7,179]:='584';
  StringGrid1.Cells[1,180]:='�';                                                        StringGrid1.Cells[4,180]:='291';

  StringGrid1.Cells[1,181]:='�';                                                        StringGrid1.Cells[6,181]:='498';
  StringGrid1.Cells[1,182]:='�';                                                        StringGrid1.Cells[4,182]:='275';
  StringGrid1.Cells[1,183]:='�';                                                        StringGrid1.Cells[5,183]:='380';
  StringGrid1.Cells[1,184]:='�';                                                        StringGrid1.Cells[4,184]:='294';
  StringGrid1.Cells[1,185]:='�';                                                        StringGrid1.Cells[8,185]:='691';
  StringGrid1.Cells[1,186]:='�';                                                        StringGrid1.Cells[3,186]:='186';
  StringGrid1.Cells[1,187]:='�';                                                        StringGrid1.Cells[9,187]:='788';
  StringGrid1.Cells[1,188]:='�';                                                        StringGrid1.Cells[6,188]:='477';
  StringGrid1.Cells[1,189]:='�';                                                        StringGrid1.Cells[3,189]:='198';
  StringGrid1.Cells[1,190]:='�';                                                        StringGrid1.Cells[10,190]:='880';
//+--------------------------------------------------------+
// ������������ �������
  with StringGrid1 do begin
    Canvas.Font := Font;
    for n := 0 to 11 do begin
      max := 0;
      for i := 0 to RowCount - 1 do begin
        temp := Canvas.TextWidth(Cells[n, i]) + DEFBORDER;
        if temp > max then max := temp;
      end;
      if max > 0 then begin
        ColWidths[n] := max;
        StringGrid2.ColWidths[n] := max;
      end;
    end;
  end;
//+--------------------------------------------------------+
end;

function BMSearch(StartPos: Integer; const S, P: string): Integer;
type
  TBMTable = array[0..255] of Integer;
var
  Pos, lp, i: Integer;
  BMT: TBMTable;
begin

  for i := 0 to 255 do
    BMT[i] := Length(P);
  for i := Length(P) downto 1 do
    if BMT[Byte(P[i])] = Length(P) then
      BMT[Byte(P[i])] := Length(P) - i;

  lp := Length(P);
  Pos := StartPos + lp - 1;
  while Pos <= Length(S) do
    if P[lp] <> S[Pos] then
      Pos := Pos + BMT[Byte(S[Pos])]
    else if lp = 1 then
    begin
      Result := Pos;
      Exit;
    end
    else
      for i := lp - 1 downto 1 do
        if P[i] <> S[Pos - lp + i] then
        begin
          Inc(Pos);
          Break;
        end
        else if i = 1 then
        begin
          Result := Pos - lp + 1;
          Exit;
        end;
  Result := 0;

end;


procedure TForm3.Edit1Change(Sender: TObject);
begin
  i:=1; j:=1;
end;

procedure TForm3.StringGrid2DblClick(Sender: TObject);
begin
  ListBox1.Items.Add(IntToStr(count+1)+'.  '+StringGrid2.Cells[1,1]);
  inc(count);
  ListBox1.Selected[ListBox1.Count-1]:=true;
end;

procedure TForm3.StringGrid1DblClick(Sender: TObject);
var
  Column, Row: Longint;
begin
  ListBox1.Items.Add(IntToStr(count+1)+'.  '+StringGrid1.Cells[1,StringGrid1.Row]);
  inc(count);
  ListBox1.Selected[ListBox1.Count-1]:=true;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ListBox1.Clear;
  count:=0;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  ListBox1.Items.Delete(ListBox1.Count-1);
  dec(count);
  if ListBox1.count=0 then count:=0;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var s: string;
    not_found: boolean;
    k: integer;
    NewSel: TGridRect;
begin
  not_found:=true;
  s:=Edit1.Text;
  if s<>'' then begin
    while not_found do begin
      if BMSearch(1, StringGrid1.Cells[i,j], s)>0 then begin
        not_found:=false;

        with StringGrid2 do begin
          NewSel.Left := i;
          NewSel.Top := 1;
          NewSel.Right := i;
          NewSel.Bottom := 1;
          Selection := NewSel;
        end;

        for k:=0 to StringGrid1.ColCount-1 do begin
          StringGrid2.Cells[k,1]:=StringGrid1.Cells[k,j];
        end;

      end;
      inc(j);
      if j=StringGrid1.RowCount then begin
        j:=1;
        inc(i);
      end;
      if i=StringGrid1.ColCount then begin
        not_found:=false;
        showmessage('��������� ����� �������');
      end;
    end;
  end;
end;

end.
