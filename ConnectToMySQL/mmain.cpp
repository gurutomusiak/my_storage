//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "mmain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
//
// Кнопка "Получить данные"
//
UnicodeString S;
//
	S = "select * from component";
	DBGrid1->DataSource = DataSource1;
	DBGrid1->DataSource->DataSet = ClientDataSet1;
	//
	//  Следующие строки можно оформить как отдельный метод
	//  выборки данных, где строка S параметр
	//
	ClientDataSet1->Close();
	SQLQuery1->SQL->Clear();
	SQLQuery1->SQL->Add(S);
	ClientDataSet1->Open();
	//
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
// Append
UnicodeString S;
//
	S = "insert into component (id,name) values('"+Edit1->Text+"','"+
		Edit2->Text+"')";
	//
	SQLQuery1->SQL->Clear();
	SQLQuery1->SQL->Add(S);
	SQLQuery1->ExecSQL();
	// Обновляем DBGrid
	S = "select * from component";
	DBGrid1->DataSource = DataSource1;
	DBGrid1->DataSource->DataSet = ClientDataSet1;
	//
	ClientDataSet1->Close();
	SQLQuery1->SQL->Clear();
	SQLQuery1->SQL->Add(S);
	ClientDataSet1->Open();
	//
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
// Get selected field
	Edit3->Text = DBGrid1->SelectedField->DataSet->FieldByName("id")->AsString;
	Edit3->Text = Edit3->Text + " - " +
		DBGrid1->SelectedField->DataSet->FieldByName("name")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
// Get random field
UnicodeString S;
//
	S = "select * from component where id=3";
	ClientDataSet2->Close();
	SQLQuery2->SQL->Clear();
	SQLQuery2->SQL->Add(S);
	ClientDataSet2->Open();
	//
	Edit4->Text =  ClientDataSet2->FieldByName("id")->AsString;
	Edit4->Text = Edit4->Text + " - " +
		ClientDataSet2->FieldByName("name")->AsString;
}
//---------------------------------------------------------------------------

