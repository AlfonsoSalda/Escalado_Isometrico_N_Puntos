unit CambiosPoligonos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Coordenadas:array[1..50] of TPoint;
  n,txi,tyi:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
n:=0;
end;


procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Coordenadas[n+1].X:=X;
Coordenadas[n+1].Y:=Y;
n:=n+1;
end;


procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
for i := 1 to n-1 do
  begin
    Image1.Canvas.MoveTo(Coordenadas[i].X,Coordenadas[i].Y);
    Image1.Canvas.LineTo(Coordenadas[i+1].X,Coordenadas[i+1].Y);
  end;
  Image1.Canvas.MoveTo(Coordenadas[n].X,Coordenadas[n].Y);
  Image1.Canvas.LineTo(Coordenadas[1].X,Coordenadas[1].Y);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin
for i := 1 to n-1 do
  begin
    Image1.Canvas.MoveTo(Coordenadas[i].X,Coordenadas[i].Y);
    Image1.Canvas.LineTo(Coordenadas[i+1].X,Coordenadas[i+1].Y);
  end;
  Image1.Canvas.MoveTo(Coordenadas[n].X,Coordenadas[n].Y);
  Image1.Canvas.LineTo(Coordenadas[1].X,Coordenadas[1].Y);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,tx,ty:integer;
begin
tx:=StrToInt(Edit1.Text);
ty:=StrToInt(Edit2.Text);
  for i := 1 to n do
  begin
    Coordenadas[i].X:=Coordenadas[i].X+tx;
    Coordenadas[i].Y:=Coordenadas[i].Y+ty;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,sx,sy:integer;
begin
sx:=StrToInt(Edit3.Text);
sy:=StrToInt(Edit4.Text);
  for i := 1 to n do
  begin
    Coordenadas[i].X:=(Coordenadas[i].X)*(sx);
    Coordenadas[i].Y:=(Coordenadas[i].Y)*(sy);
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var xc,yc,tx,ty:real;
var i,p,pp:integer;
begin
p:=round(n/2);
p:=p+1;
pp:=round(n/2);
xc:=(coordenadas[1].X+coordenadas[p].X)/2;
yc:=(coordenadas[pp].Y+coordenadas[n].Y)/2;
txi:=round(xc);
tyi:=round(yc);
  for i := 1 to n do
  begin
    Coordenadas[i].X:=Coordenadas[i].X-txi;
    Coordenadas[i].Y:=Coordenadas[i].Y-tyi;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var i:integer;
begin
for i := 1 to n do
  begin
    Coordenadas[i].X:=Coordenadas[i].X+txi;
    Coordenadas[i].Y:=Coordenadas[i].Y+tyi;
  end;
end;

end.
