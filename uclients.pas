unit uclients;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls,   StdCtrls, DBCtrls,
  Oracle, OracleData, Db, Grids, DBGrids, Mask, ComCtrls, shellapi,
  wwcheckbox, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, wwdblook, wwdbedit,
  Wwdotdot, Wwdbcomb, FileCtrl ;

type
  TformJobs = class(TForm)
    ds_incident: TDataSource;
    ds_customer: TDataSource;
    Panel1: TPanel;
    btn_create_incident: TSpeedButton;
    btn_edit_incident: TSpeedButton;
    ds_employee: TDataSource;
    ds_notes: TDataSource;
    ds_employees: TDataSource;
    SpeedButton2: TSpeedButton;
    DBGrid3: TDBGrid;
    btn_start: TSpeedButton;
    btn_stop: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ses_clients: TOracleSession;
    t_customer: TOracleDataSet;
    q_incident: TOracleDataSet;
    q_notes: TOracleDataSet;
    q_sql: TOracleDataSet;
    q_address_lookup: TOracleDataSet;
    q_notesINCIDENT_ID: TStringField;
    q_notesNOTES_DATE: TDateTimeField;
    q_notesAUTHOR: TStringField;
    q_notesNOTES: TMemoField;
    q_notesHOURS_BILLED: TFloatField;
    q_notesHOURLY_RATE: TFloatField;
    q_notesSEQ: TFloatField;
    q_notesDESCRIPTION: TStringField;
    q_notesCHARGE_TYPE: TStringField;
    btn_changes: TSpeedButton;
    q_notesEMPLOYEE: TStringField;
    Pagemain: TPageControl;
    tabMain: TTabSheet;
    tabIncidentDetails: TTabSheet;
    pnl_incident: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_other: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btn_close: TSpeedButton;
    lbl_final: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btn_open: TSpeedButton;
    btn_files: TSpeedButton;
    edt_other: TDBEdit;
    edt_contact: TDBEdit;
    edt_email: TDBEdit;
    cmb_customer: TDBLookupComboBox;
    grd_notes: TDBGrid;
    mem_notes: TDBMemo;
    DBNavigator1: TDBNavigator;
    cmb_application: TDBComboBox;
    cmb_date: TDateTimePicker;
    chk_billable: TDBCheckBox;
    edt_billing_reasoning: TDBEdit;
    DBEdit5: TDBEdit;
    edt_explanation: TDBMemo;
    DBMemo1: TDBMemo;
    edt_hours_billed: TDBEdit;
    edt_hourly_rate: TDBEdit;
    edt_total: TEdit;
    cmb_notes_date: TDateTimePicker;
    rg_charge_type: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    wwCheckBox1: TwwCheckBox;
    edt_incident_description: TDBMemo;
    wwCheckBox2: TwwCheckBox;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBMemo2: TDBMemo;
    Label15: TLabel;
    DBMemo3: TDBMemo;
    btnCancelJobSave: TSpeedButton;
    btnSaveJob: TSpeedButton;
    searchstring: TEdit;
    grdIincident: TwwDBGrid;
    DataSource1: TDataSource;
    OracleDataSet1: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateTimeField1: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    t_employee: TOracleDataSet;
    t_employeeEMPLOYEE_ID: TStringField;
    t_employeeFIRST_NAME: TStringField;
    t_employeeMIDDLE_NAME: TStringField;
    t_employeeLAST_NAME: TStringField;
    t_employeeINITIALS: TStringField;
    t_employeeEMPLOYEE_STATUS: TStringField;
    t_employees: TOracleDataSet;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    GroupBox1: TGroupBox;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    btnSaveAndExit: TSpeedButton;
    cmbBeginDate: TwwDBDateTimePicker;
    SpeedButton5: TSpeedButton;
    lbl_screen_name: TLabel;
    GroupBox2: TGroupBox;
    chk_view_only_high_priority: TCheckBox;
    chkOpen: TCheckBox;
    chkPastDue: TCheckBox;
    cmbEndDate: TwwDBDateTimePicker;
    Label21: TLabel;
    Label22: TLabel;
    q_notesAuthorInitials: TStringField;
    qSalesGroupLookup: TOracleDataSet;
    qSalesGroupLookupSALES_GROUP: TStringField;
    cmbSalesGroup: TwwDBLookupCombo;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    q_incidentINCIDENT_DESCRIPTION: TStringField;
    q_incidentCUSTOMER_ID: TStringField;
    q_incidentAPPLICATION: TStringField;
    q_incidentOTHER_APPLICATION: TStringField;
    q_incidentORIGINAL_ISSUE: TStringField;
    q_incidentPRIORITY_CLASS: TStringField;
    q_incidentCONTACT: TStringField;
    q_incidentCONTACT_EMAIL: TStringField;
    q_incidentDATE_CREATED: TDateTimeField;
    q_incidentSCHEDULED_DATE: TDateTimeField;
    q_incidentINCIDENT_ID: TStringField;
    q_incidentCREATED_BY: TStringField;
    q_incidentORIGINAL_OWNER: TStringField;
    q_incidentCURRENT_OWNER: TStringField;
    q_incidentCLOSED_BY: TStringField;
    q_incidentMONTH: TFloatField;
    q_incidentYEAR: TFloatField;
    q_incidentTIME_IN: TDateTimeField;
    q_incidentTIME_OUT: TDateTimeField;
    q_incidentACCUMULATED_TIME: TFloatField;
    q_incidentSTATUS: TStringField;
    q_incidentFINAL_COMMENTS: TStringField;
    q_incidentBILLABLE: TStringField;
    q_incidentBILLING_REASONING: TStringField;
    q_incidentSPECIAL_NOTES_TO_DEVELOPMENT: TStringField;
    q_incidentORACLE_TAR_NUMBER: TStringField;
    q_incidentPUBLISH_RESULTS: TStringField;
    q_incidentCUSTOMER_NAME: TStringField;
    q_incidentRELATED_INCIDENT_ID: TStringField;
    q_incidentSPECIAL_INSTRUCTIONS_TO_STAFF: TStringField;
    q_incidentWAYS_TO_IMPROVE: TStringField;
    q_incidentPROBLEM_LEVEL: TStringField;
    q_incidentFRONT_END_OBJECT_AFFECTED: TStringField;
    q_incidentORACLE_OBJECT_AFFECTED: TStringField;
    q_incidentDATE_CLOSED: TDateTimeField;
    q_incidentPRIORITY: TIntegerField;
    q_incidentPRIVATE_INCIDENT: TStringField;
    q_incidentDUE_DATE: TDateTimeField;
    q_incidentHOURS_RECORDED: TFloatField;
    q_incidentPRIORITY_SUBSTRING: TStringField;
    q_incidentEmployeeInititals: TStringField;
    q_incidentMY_PRIORITY: TStringField;
    chkNonCritical: TCheckBox;
    btnYear: TSpeedButton;
    btnMonth: TSpeedButton;
    btnWeek: TSpeedButton;
    btnDay: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edt_special_notes: TDBMemo;
    Label14: TLabel;
    cmb_current_owner: TDBLookupComboBox;
    Label6: TLabel;
    q_incidentPROJECT_ID: TStringField;
    q_incidentESTIMATED_COMPLETION_DATE: TDateTimeField;
    q_incidentESTIMATED_HOURS: TFloatField;
    q_incidentCOMPLETED: TStringField;
    Label32: TLabel;
    DBEdit7: TDBEdit;
    Label33: TLabel;
    DBEdit8: TDBEdit;
    cmbEstimatedCompletionDate: TwwDBDateTimePicker;
    Label34: TLabel;
    chkJobCompleted: TwwCheckBox;
    btnClearJob: TSpeedButton;
    cmb_priority: TwwDBComboBox;
    Label35: TLabel;
    DBEdit9: TDBEdit;
    btnExit: TSpeedButton;
    shapeHighlightSave: TShape;
    Label36: TLabel;
    q_incidentACTIVE: TStringField;
    wwCheckBox3: TwwCheckBox;
    chkIncomplete: TCheckBox;
    chkActive: TCheckBox;
    btnCreateFolder: TSpeedButton;
    shapeExploreFolder: TShape;
    Label37: TLabel;
    chkComplete: TCheckBox;
    procedure btnExitClick(Sender: TObject);
    procedure btn_edit_incidentClick(Sender: TObject);
    procedure btn_create_incidentClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chkOpenClick(Sender: TObject);
    procedure btn_startClick(Sender: TObject);
    procedure btn_stopClick(Sender: TObject);
    procedure cmb_applicationClick(Sender: TObject);
    procedure cmb_applicationChange(Sender: TObject);
    procedure cmb_priorityChange(Sender: TObject);
    procedure btnSaveJobClick(Sender: TObject);
    procedure btnCancelJobSaveClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure btnMonthClick(Sender: TObject);
    procedure grd_incidentDblClick(Sender: TObject);
    procedure edt_emailDblClick(Sender: TObject);
    procedure edt_emailEnter(Sender: TObject);
    procedure searchstringKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_hours_billedChange(Sender: TObject);
    procedure btn_openClick(Sender: TObject);
    procedure chk_billableClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure t_notesAfterEdit(DataSet: TDataSet);
    procedure grd_incidentTitleClick(Column: TColumn);
    procedure btn_filesClick(Sender: TObject);
    procedure q_notesAfterPost(DataSet: TDataSet);
    procedure q_notesAfterInsert(DataSet: TDataSet);
    procedure q_notesBeforePost(DataSet: TDataSet);
    procedure q_notesBeforeDelete(DataSet: TDataSet);
    procedure q_notesAfterOpen(DataSet: TDataSet);
    procedure q_notesAfterScroll(DataSet: TDataSet);
    procedure q_notesAfterDelete(DataSet: TDataSet);
    procedure q_notesAfterCancel(DataSet: TDataSet);
    procedure cmb_notes_dateChange(Sender: TObject);
    procedure q_incidentAfterOpen(DataSet: TDataSet);
    procedure q_incidentAfterCancel(DataSet: TDataSet);
    procedure q_incidentAfterDelete(DataSet: TDataSet);
    procedure q_incidentAfterScroll(DataSet: TDataSet);
    procedure t_employeesAfterOpen(DataSet: TDataSet);
    procedure t_employeesAfterScroll(DataSet: TDataSet);
    procedure t_employeesCalcFields(DataSet: TDataSet);
    procedure q_incidentCalcFields(DataSet: TDataSet);
    procedure q_incidentBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btn_changesClick(Sender: TObject);
    procedure edt_daysChange(Sender: TObject);
    procedure chk_view_only_high_priorityClick(Sender: TObject);
    procedure btnSaveAndExitClick(Sender: TObject);
    procedure grdIincidentDblClick(Sender: TObject);
    procedure grdIincidentTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure q_incidentEmployeeInititalsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdIincidentCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cmbBeginDateChange(Sender: TObject);
    procedure cmbEndDateChange(Sender: TObject);
    procedure q_notesAuthorInitialsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cmbSalesGroupChange(Sender: TObject);
    procedure btnYearClick(Sender: TObject);
    procedure btnWeekClick(Sender: TObject);
    procedure btnDayClick(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure btnClearJobClick(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure cmb_priorityCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure q_notesBeforeInsert(DataSet: TDataSet);
    procedure q_incidentAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure q_incidentAfterPost(DataSet: TDataSet);
    procedure q_incidentAfterEdit(DataSet: TDataSet);
    procedure btnCreateFolderClick(Sender: TObject);
  private
    { Private declarations }
    parent_top,parent_left : integer;
    posting_is_locked,can_post_payments,can_remove_check,
    HasDepositAccountAccess, CanEditDepositAccount,
    HasStockHolderAccess, CanEditStockHolder,
    HasAPAccess, CanEditApAccount,
    HasARAccess, CanEditARAccount: boolean;
    InitialLoad: boolean;
    db_alias,db_user,db_pass,my_user, MyFormName : string;
    function checkkeyitems:boolean;
    procedure load_incident(sort_by : string);
    procedure make_active;
    procedure make_inactive;
    procedure set_billable_fields;
    procedure load_notes;
    procedure LoadEmployees;
    procedure LoadDueDate;
    procedure ShowFolderExists;
  public
    { Public declarations }
    IncomingJobID: string;
     procedure setup_position(in_top,in_left,in_height,in_width : integer;screen_name : string;lock_posting : boolean;border_style : tformborderstyle;in_alias,in_user,in_pass,in_my_user : string);

  end;

var
  formJobs: TformJobs;

implementation
{
 var day_of_week : integer;
    current_day_of_week : integer;
    my_day_of_week : string;
    jok : boolean;
    my_string : string;
begin
  if (dataset = nil) or (dataset.state = dsinactive) then exit;
  with dataset do
    begin
      if not empty(fieldbyname('PRIORITY_CLASS').asstring) then
      begin
        if fieldbyname('PRIORITY_CLASS').asstring[1] in ['1','2','3','4','5','6','7'] then
           begin
              fieldbyname('MY_PRIORITY').asstring := int_to_str(str_to_int(fieldbyname('PRIORITY_CLASS').asstring[1],jok)+7)+
                copy(fieldbyname('PRIORITY_CLASS').asstring,3,length(fieldbyname('PRIORITY_CLASS').asstring[1])-3);
           end
        else
           begin
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'MO' then  day_of_week := 1;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'TU' then  day_of_week := 2;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'WE' then  day_of_week := 3;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'TH' then  day_of_week := 4;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'FR' then  day_of_week := 5;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'SA' then  day_of_week := 6;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'SU' then  day_of_week := 7;
             my_day_of_week := dayofweek2(showlikedateslash(newdat,false));
             if copy(my_day_of_week,1,2) = 'MO' then  current_day_of_week := 1;
             if copy(my_day_of_week,1,2) = 'TU' then  current_day_of_week := 2;
             if copy(my_day_of_week,1,2) = 'WE' then  current_day_of_week := 3;
             if copy(my_day_of_week,1,2) = 'TH' then  current_day_of_week := 4;
             if copy(my_day_of_week,1,2) = 'FR' then  current_day_of_week := 5;
             if copy(my_day_of_week,1,2) = 'SA' then  current_day_of_week := 6;
             if copy(my_day_of_week,1,2) = 'SU' then  current_day_of_week := 7;
             if current_day_of_week <= day_of_week then
               begin
                  fieldbyname('MY_PRIORITY').asstring :=
                     leadingzero((day_of_week-current_day_of_week)+1)+' '+fieldbyname('PRIORITY_CLASS').asstring;
               end
             else
               begin
                  fieldbyname('MY_PRIORITY').asstring  :=
                     leadingzero((day_of_week-current_day_of_week)+8)+' '+fieldbyname('PRIORITY_CLASS').asstring;
               end;
           end;
        end;

 //     fieldbyname('MY_PRIORITY').asstring :=
 //       copy(fieldbyname('PRIORITY_CLASS').asstring,1,2);
    end;
end;



}

uses tws_globals,unit_changes, UNewLogin, usecur, DMClientTrack, unitClientProjects;

{$R *.DFM}

procedure tformJobs.setup_position(in_top,in_left,in_height,in_width : integer;screen_name : string;lock_posting : boolean;border_style : tformborderstyle;in_alias,in_user,in_pass,in_my_user : string);
begin
  parent_top := in_top;                        // screen coordinates
  parent_left := in_left;
  borderstyle := border_style;
  db_alias := in_alias;
  db_user := in_user;
  db_pass := in_pass;
  height := in_height;                        // form size
  width := in_width;
  lbl_screen_name.caption := screen_name;     // screen name caption
  self.Caption := screen_name;
  posting_is_locked := not lock_posting;          // read only flag used to say whether the user can
                                              // make changes
  my_user := in_my_user;
end;

procedure tformJobs.set_billable_fields;
  begin
    if chk_billable.checked then
      begin
        label9.visible := true;
        label16.visible := true;
        label17.visible := true;
        label18.visible := true;
        label19.visible := true;
        edt_hours_billed.Visible := true;
        edt_hourly_rate.visible := true;
        edt_total.visible := true;
        edt_billing_reasoning.visible := true;
      end
    else
      begin
        label9.visible := false;
        label16.visible := false;
        label17.visible := false;
        label18.visible := false;
        label19.visible := false;
        edt_hours_billed.Visible := false;
        edt_hourly_rate.visible := false;
        edt_total.visible := false;
        edt_billing_reasoning.visible := false
      end;
  end;

procedure TformJobs.btnExitClick(Sender: TObject);
begin
  if Pagemain.activepage <> tabmain then
    Pagemain.activepage := tabmain
  else
  IncomingJobID := q_incident.FieldByName('INCIDENT_ID').asstring;
  close;
end;

function tformJobs.checkkeyitems:boolean;
  begin
    result := false;
{    if (q_incident.state = dsedit) and (empty(edt_explanation.text)) then
      begin
        messagebox(0,'You must enter an explanation','',mb_ok);
        edt_explanation.setfocus;
        exit;
      end;}

    if empty(q_incident.FieldByName('INCIDENT_DESCRIPTION').asstring) then
      begin
        messagebox(0,'You must enter a description of the incident','',mb_ok);
        edt_incident_description.setfocus;
        exit;
      end;
    if empty(cmb_customer.Text) then
      begin
        messagebox(0,'You must enter a customer.','',mb_ok);
        cmb_customer.setfocus;
        exit;
      end;
    if empty(cmb_application.text) then
      begin
        messagebox(0,'You must select an application.','',mb_ok);
        cmb_application.setfocus;
        exit;
      end;

    if (cmb_application.text = 'OTHER') and (empty(edt_other.text)) then
      begin
        messagebox(0,'You must enter the other application.','',mb_ok);
        edt_other.setfocus;
        exit;
      end;
    if empty(cmb_priority.text) then
      begin
        messagebox(0,'You must select a priority.','',mb_ok);
        cmb_priority.setfocus;
        exit;
      end;
    if (empty(edt_contact.text)) then
      begin
        messagebox(0,'You must enter a contact.','',mb_ok);
        edt_contact.setfocus;
        exit;
      end;
    if (empty(edt_email.text)) then
      begin
        messagebox(0,'You must enter an email, and I mean the REAL email.','',mb_ok);
        edt_email.setfocus;
        exit;
      end;
    if (empty(cmb_current_owner.text)) then
      begin
        messagebox(0,'You must enter a current owner.','',mb_ok);
        cmb_current_owner.setfocus;
        exit;
      end;

    result := true;
  end;



procedure tformJobs.load_notes;
  begin
     with q_notes do
       begin
         active := false;
         sql.clear;
         sql.add('SELECT I.ROWID,I.* FROM INCIDENT_NOTES I');
         sql.add('WHERE INCIDENT_ID = '''+q_incident.fieldbyname('INCIDENT_ID').asstring+'''');
         sql.add('ORDER BY NOTES_DATE DESC, SEQ DESC');
         active := true;
       end;
     if fileexists(JobsFolder+q_incident.fieldbyname('INCIDENT_ID').asstring+'*.*') then
       btn_files.Enabled := true
     else
       btn_files.enabled := false;

  end;


procedure tformJobs.load_incident(sort_by : string);
Var MyIncidentID : String;
  begin
     if InitialLoad = true then exit;
     with q_incident do
       begin
          MyIncidentID := FieldByName('INCIDENT_ID').asstring;
          active := false;
          sql.clear;
          sql.add('SELECT I.ROWID,I.*, nvl(ESTIMATED_COMPLETION_DATE, PriorityClassCompletionDate(DATE_CREATED, PRIORITY_CLASS)) DUE_DATE, TotalJobHoursBilled(INCIDENT_ID) HOURS_RECORDED,');
          sql.add('SUBSTR(PRIORITY_CLASS,1,1) PRIORITY_SUBSTRING ');
          sql.add('FROM INCIDENT I WHERE 1=1');
          if t_employees.fieldbyname('EMPLOYEE_ID').asstring <> '0' then
          sql.add('AND CURRENT_OWNER = '''+t_employees.fieldbyname('EMPLOYEE_ID').asstring+'''');
          if not empty(searchstring.text) then
            begin
              sql.add('AND (APPLICATION LIKE ''%'+searchstring.text+'%'' OR CUSTOMER_NAME LIKE ''%'+searchstring.text+'%'' OR UPPER(INCIDENT_DESCRIPTION) LIKE ''%'+searchstring.text+'%'')');
            end;
          if not empty(IncomingJobID) then
            sql.add('AND INCIDENT_ID = '''+IncomingJobID+'''');
          if chk_view_only_high_priority.checked then
            sql.add('AND SUBSTR(PRIORITY_CLASS,1,1) = ''1''');
          if chkOpen.checked then
            sql.add('AND CLOSED_BY IS NULL');
          if chkIncomplete.checked then
            sql.add('AND nvl(COMPLETED,''FALSE'') =''FALSE''');
          if chkComplete.checked then
            sql.add('AND nvl(COMPLETED,''FALSE'') =''TRUE''');
          if chkActive.checked then
            sql.add('AND nvl(ACTIVE,''FALSE'') =''TRUE''');
          if chkNonCritical.checked = false then
              sql.add('AND PriorityClassCompletionDate(DATE_CREATED, PRIORITY_CLASS) IS NOT NULL');
            if chkPastDue.checked then
              sql.add('AND nvl(PriorityClassCompletionDate(DATE_CREATED, PRIORITY_CLASS),SYSDATE+1) <sysdate');
          sql.add('and I.DATE_CREATED BETWEEN to_date('''+DATETOSTR(cmbBeginDate.DATE)+''',''MM/DD/YYYY'') and  to_date('''+DATETOSTR(CMBEndDate.DATE)+''',''MM/DD/YYYY'')');
          //sql.add('AND SYSDATE-I.DATE_CREATED <= '+edt_days.text);
          if not empty(cmbSalesGroup.lookupvalue) then
            begin
              IF cmbSalesGroup.lookupvalue ='<UNASSIGNED>' then
               sql.add('AND I.CUSTOMER_ID IN (SELECT CUSTOMER_ID FROM CUSTOMER WHERE SALES_GROUP IS NULL)')
              else
              sql.add('AND I.CUSTOMER_ID IN (SELECT CUSTOMER_ID FROM CUSTOMER WHERE SALES_GROUP = '''+cmbSalesGroup.lookupvalue+''')');
            end;
          if not empty(sort_by) then
            sql.add('ORDER BY '+sort_by)
          else
            sql.add('ORDER BY SUBSTR(PRIORITY_CLASS,1,1) ASC, I.DATE_CREATED DESC');
          active := true;
          if not empty(MyIncidentID) then
          try
            Locate('INCIDENT_ID',MyIncidentID,[]);
          finally
          end;
       end;
  end;

procedure tformJobs.make_active;
  begin
    if empty(q_incident.fieldbyname('INCIDENT_ID').asstring) then exit;
    with q_sql do
      begin
        active := false;
        sql.clear;
        sql.add('UPDATE INCIDENT SET STATUS = ''ACTIVE'' WHERE INCIDENT_ID = '''+q_incident.fieldbyname('INCIDENT_ID').asstring+'''');
        execsql;
        active := false;
      end;
    load_incident('');
  end;

procedure tformJobs.make_inactive;
  begin
    if empty(q_incident.fieldbyname('INCIDENT_ID').asstring) then exit;
    with q_sql do
      begin
        active := false;
        sql.clear;
        sql.add('UPDATE INCIDENT SET STATUS = ''INACTIVE'' WHERE INCIDENT_ID = '''+q_incident.fieldbyname('INCIDENT_ID').asstring+'''');
        execsql;
        active := false;
      end;
    load_incident('');
  end;


procedure TformJobs.btn_edit_incidentClick(Sender: TObject);
var a : integer;
begin
  if empty(q_incident.fieldbyname('INCIDENT_ID').asstring) then exit;
  if self.width = 112 then
    self.width := 1005;
  if Pagemain.activepage <> tabIncidentDetails then
    begin
      Pagemain.activepage := tabIncidentDetails;
      btn_start.enabled := false;
      btn_stop.enabled := false;
      for a := 0 to componentcount-1 do
        if (components[a] is tcontrol) then
          begin
            if (components[a] as tcontrol).tag = 1 then
              (components[a] as tcontrol).enabled := false;
          end;
      mem_notes.setfocus;
    end
  else
    begin
       Pagemain.activepage := tabMain;
       btn_start.enabled := true;
       btn_stop.enabled := true;
    end;
end;

procedure TformJobs.btn_create_incidentClick(Sender: TObject);
var a : integer;
begin

  if self.width = 112 then
    self.width := 1005;
   if Pagemain.activepage <> tabIncidentDetails then
    begin
      Pagemain.activepage := tabIncidentDetails;
      btn_start.enabled := false;
      btn_stop.enabled := false;
      for a := 0 to componentcount-1 do
        if (components[a] is tcontrol) then
          begin
            if (components[a] as tcontrol).tag = 1 then
              (components[a] as tcontrol).enabled := true;
          end;
      cmb_customer.setfocus;
      with q_incident do
        begin
         insert;
        end;
         shapeHighlightSave.visible := true;
    end
  else
    begin
      q_incident.cancel;
      lbl_final.visible := false;
      Pagemain.activepage := tabMain;
      btn_start.enabled := true;
      btn_stop.enabled := true;
    end;
end;

procedure TformJobs.FormActivate(Sender: TObject);
begin
  InitialLoad := true;
  self.width := 1005;
  self.refresh;
  ses_clients.LogonDatabase := GlobalServerName;
  ses_clients.LogonPassword := GlobalPassword;
  ses_clients.LogonUserName := GlobalUserID;
  ses_clients.connected := true;
  LoadEmployees;
  t_employee.open;
  t_customer.open;
  qSalesGroupLookup.open;
  Pagemain.activepage := tabMain;
  cmbEndDate.date := date;
  cmbBeginDate.date := date-365;
  if empty(IncomingJobID) then
    begin
      if not empty(paramstr(1)) then
        t_employees.locate('EMPLOYEE_ID',paramstr(1),[]);
      if not empty(ClientTrackEmployee) then
        try
         t_employees.locate('EMPLOYEE_ID',ClientTrackEmployee,[]);
        finally
       end;
    end
  else
    begin
       if not empty(ClientTrackEmployee) then
        try
         t_employees.locate('EMPLOYEE_ID','0',[]);
        finally
       end;
    end;
  InitialLoad := false;
  load_incident('');

end;

procedure TformJobs.FormDeactivate(Sender: TObject);
begin

  with q_notes do
    begin
      if state <> dsbrowse then
        begin
          if messagebox(0,'Do you want to save the notes?','',mb_yesno) = id_yes then post;
        end;
    end;
  t_employee.close;
  t_customer.close;
  t_employees.close;
  q_incident.close;
  qSalesGroupLookup.close;
  ses_clients.connected := false;
end;

procedure TformJobs.SpeedButton2Click(Sender: TObject);
begin
  if self.width = 1005 then
    self.width := 112
  else
    self.width := 1005;
end;

procedure TformJobs.chkOpenClick(Sender: TObject);
begin
  load_incident('');
end;

procedure TformJobs.btn_startClick(Sender: TObject);
begin
  make_active;
end;

procedure TformJobs.btn_stopClick(Sender: TObject);
begin
  make_inactive;
end;



procedure TformJobs.cmb_applicationClick(Sender: TObject);
begin
  if cmb_application.text = 'OTHER' then
    begin
      edt_other.visible := true;
      lbl_other.visible := true;
    end
  else
    begin
      edt_other.visible := false;
      lbl_other.visible := false;
    end;
end;

procedure TformJobs.cmb_applicationChange(Sender: TObject);
begin
  if cmb_application.text = 'OTHER' then
    begin
      edt_other.visible := true;
      lbl_other.visible := true;
    end
  else
    begin
      edt_other.visible := false;
      lbl_other.visible := false;
    end;
end;

procedure TformJobs.cmb_priorityChange(Sender: TObject);
begin
  {
  if q_incident.state = dsinsert then
    begin
      case cmb_priority.text[1] of
      '1' : cmb_date.date := date;
      '2' : cmb_date.date := date+7;
      '3' : cmb_date.date := date+14;
      '4' : cmb_date.date := date+28;
      '5' : cmb_date.date := date+84;
      '6' : cmb_date.date := date+168;
      '7' : cmb_date.date := date+365
      end;
    end;
  if q_incident.state = dsedit then
    begin
      case cmb_priority.text[1] of
      '1' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring);
      '2' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+7;
      '3' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+14;
      '4' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+28;
      '5' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+84;
      '6' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+168;
      '7' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+365
      end;
    end;
    }
end;

procedure TformJobs.btnSaveJobClick(Sender: TObject);
begin
  if checkkeyitems then
    begin
      with q_notes do
        begin
          if (state <> dsbrowse) and (q_incident.state <> dsinsert) then
            begin
               if messagebox(0,'Do you want to save the notes?','',mb_yesno) = id_yes then post;
            end;
        end;
      with q_incident do
        begin
          if state in [dsedit,dsinsert] then
            begin
              post;
              refreshrecord;
            end;
        end;
    end else abort;
end;

procedure TformJobs.btnCancelJobSaveClick(Sender: TObject);
begin

      with q_notes do
        begin
          if state <> dsbrowse then
            begin
               if messagebox(0,'Do you want to save the notes?','',mb_yesno) = id_yes then post;
            end;
        end;
  with q_incident do
    begin
      if state in [dsedit,dsinsert] then cancel;
    Pagemain.activepage := tabMain;
     btn_start.enabled := true;
     btn_stop.enabled := true;
     lbl_final.visible := false;
    end;

end;

procedure TformJobs.btn_closeClick(Sender: TObject);
begin
  lbl_final.visible := true;
  with q_incident do
    begin
      if state = dsbrowse then edit;
      fieldbyname('FINAL_COMMENTS').asstring := 'Complete';
      fieldbyname('COMPLETED').asstring := 'TRUE';
      fieldbyname('ACTIVE').asstring := 'FALSE';
    end;
end;

procedure TformJobs.btnMonthClick(Sender: TObject);
begin
  cmbEndDate.date := date;
  cmbBeginDate.date := date-31;
end;

procedure TformJobs.grd_incidentDblClick(Sender: TObject);
begin
   btn_edit_incidentClick(self);
end;

procedure TformJobs.edt_emailDblClick(Sender: TObject);
begin
  //datamodule2.send_email(q_incident.fieldbyname('CONTACT_EMAIL').asstring,'INCIDENT '+q_incident.fieldbyname('INCIDENT_ID').asstring+' '+q_incident.fieldbyname('INCIDENT_DESCRIPTION').asstring,'');
end;

procedure TformJobs.edt_emailEnter(Sender: TObject);
begin
  with q_incident do
    begin
      if state = dsinsert then
       begin
         with q_sql do
           begin
             active := false;
             sql.clear;
             sql.add('SELECT CONTACT_EMAIL FROM EMAIL_LOOKUP WHERE CONTACT = '''+edt_contact.text+'''');
             active := true;
             if not empty(fields[0].asstring) then
               begin
                 edt_email.text := fields[0].asstring;
                 active := false;
                 cmb_application.setfocus;
               end
             else active := false;
           end;
       end;
    end;
end;

procedure TformJobs.searchstringKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (Pagemain.activepage = tabMain) then
    load_incident('');
end;


procedure TformJobs.edt_hours_billedChange(Sender: TObject);
var jok : boolean;
begin
  edt_total.text :=
    real_to_str(str_to_real(edt_hours_billed.text,jok)*str_to_real(edt_hourly_rate.text,jok),2);
end;

procedure TformJobs.btn_openClick(Sender: TObject);
begin
  lbl_final.visible := false;
  with q_incident do
    begin
      if state = dsbrowse then edit;
      fieldbyname('CLOSED_BY').asstring := '';
    end;
end;

procedure TformJobs.chk_billableClick(Sender: TObject);
begin
 set_billable_fields;
end;

procedure TformJobs.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button = nbinsert then
    begin
      if q_incident.state = dsinsert then
        begin
          if checkkeyitems then
            q_incident.post;
        end;
      cmb_notes_date.setfocus;
    end;
end;

procedure TformJobs.t_notesAfterEdit(DataSet: TDataSet);
begin
  with dataset do
    begin
      cmb_notes_date.date :=
        strtodate(fieldbyname('NOTES_DATE').asstring);
    end;
end;

procedure TformJobs.grd_incidentTitleClick(Column: TColumn);
begin
  if column.fieldname <> 'MY_PRIORITY' then
    load_incident(column.fieldname);
end;

procedure TformJobs.btn_filesClick(Sender: TObject);
begin

  with opendialog1 do
    begin
      filename := q_incident.fieldbyname('INCIDENT_ID').asstring+'*.*';
      if execute then
        begin
          ShellExecute(handle, pchar('open'), pchar(filename), pchar(''), pchar('t:\data\techsupport'), SW_SHOWNORMAL);
        end;
    end;

end;

procedure TformJobs.q_notesAfterPost(DataSet: TDataSet);
begin
  q_notes.refreshrecord;
  //load_notes;
end;

procedure TformJobs.q_notesAfterInsert(DataSet: TDataSet);
begin
  cmb_notes_date.date :=
    strtodate(showlikedateslash(newdat,false));
  with q_notes do
    begin
      fieldbyname('INCIDENT_ID').asstring := q_incident.fieldbyname('INCIDENT_ID').asstring;
      fieldbyname('AUTHOR').asstring := q_incident.fieldbyname('CURRENT_OWNER').asstring;
    end;

end;





procedure TformJobs.q_notesBeforePost(DataSet: TDataSet);
begin
  if (not empty(q_notes.fieldbyname('INCIDENT_ID').asstring)) and (not empty(q_notes.fieldbyname('SEQ').asstring)) then
    begin
      with q_sql do
        begin
          active := false;
          sql.clear;
          sql.add('SELECT CAN_CHANGE_INCIDENT_NOTE('''+q_notes.fieldbyname('INCIDENT_ID').asstring+''','+q_notes.fieldbyname('SEQ').asstring+') FROM DUAL');
          active := true;
          if fields[0].asstring = 'FALSE' then
            begin
              active := false;
              messagebox(0,'Cannot change this note, because payments has been made','',mb_ok);
              abort;
            end else active := false;
        end;
    end;
  with dataset do
    begin
      fieldbyname('NOTES_DATE').asstring :=
        datetostr(cmb_notes_date.date);
    end;
end;

procedure TformJobs.q_notesBeforeDelete(DataSet: TDataSet);
begin
  if (not empty(q_notes.fieldbyname('INCIDENT_ID').asstring)) and (not empty(q_notes.fieldbyname('SEQ').asstring)) then
    begin
      with q_sql do
        begin
          active := false;
          sql.clear;
          sql.add('SELECT CAN_CHANGE_INCIDENT_NOTE('''+q_notes.fieldbyname('INCIDENT_ID').asstring+''','+q_notes.fieldbyname('SEQ').asstring+') FROM DUAL');
          active := true;
          if fields[0].asstring = 'FALSE' then
            begin
              active := false;
              messagebox(0,'Cannot change this note, because payments has been made','',mb_ok);
              abort;
            end;
        end;
    end;
end;

procedure TformJobs.q_notesAfterOpen(DataSet: TDataSet);
begin

  if not empty(q_notes.fieldbyname('NOTES_DATE').asstring) then
    begin
      cmb_notes_date.date :=
        strtodate(q_notes.fieldbyname('NOTES_DATE').asstring);
    end;
end;

procedure TformJobs.q_notesAfterScroll(DataSet: TDataSet);
begin
  if not empty(q_notes.fieldbyname('NOTES_DATE').asstring) then
    begin
      cmb_notes_date.date :=
        strtodate(q_notes.fieldbyname('NOTES_DATE').asstring);
    end;
end;

procedure TformJobs.q_notesAfterDelete(DataSet: TDataSet);
begin
  if not empty(q_notes.fieldbyname('NOTES_DATE').asstring) then
    begin
      cmb_notes_date.date :=
        strtodate(q_notes.fieldbyname('NOTES_DATE').asstring);
    end;
end;

procedure TformJobs.q_notesAfterCancel(DataSet: TDataSet);
begin
  if not empty(q_notes.fieldbyname('NOTES_DATE').asstring) then
    begin
      cmb_notes_date.date :=
        strtodate(q_notes.fieldbyname('NOTES_DATE').asstring);
    end;
end;

procedure TformJobs.cmb_notes_dateChange(Sender: TObject);
begin
  with q_notes do
    begin
      if state = dsbrowse then edit;
    end;
end;

procedure TformJobs.q_incidentAfterOpen(DataSet: TDataSet);
begin
  self.caption := 'Client Tracking System ['+q_incident.fieldbyname('CUSTOMER_NAME').asstring+' '+q_incident.fieldbyname('INCIDENT_ID').asstring+']';
  set_billable_fields;
  load_notes;
  q_notes.first;
  ShowFolderExists;
end;

procedure TformJobs.q_incidentAfterCancel(DataSet: TDataSet);
begin
  load_notes;
  q_notes.first;
  shapeHighlightSave.visible := false;
end;

procedure TformJobs.q_incidentAfterDelete(DataSet: TDataSet);
begin
  load_notes;
  q_notes.first;
end;

procedure TformJobs.q_incidentAfterScroll(DataSet: TDataSet);
begin
  self.caption := 'Client Tracking System ['+q_incident.fieldbyname('CUSTOMER_NAME').asstring+' '+q_incident.fieldbyname('INCIDENT_ID').asstring+']';
  set_billable_fields;
  load_notes;
  //q_notes.last;
  shapeHighlightSave.visible := false;
  ShowFolderExists;
end;

procedure TformJobs.t_employeesAfterOpen(DataSet: TDataSet);
begin
  load_incident('');
end;

procedure TformJobs.t_employeesAfterScroll(DataSet: TDataSet);
begin
  load_incident('');
end;

procedure TformJobs.t_employeesCalcFields(DataSet: TDataSet);
begin
  with dataset do
    begin
      fieldbyname('INITIALS').asstring := copy(fieldbyname('FIRST_NAME').asstring,1,1)+copy(fieldbyname('MIDDLE_NAME').asstring,1,1)+copy(fieldbyname('LAST_NAME').asstring,1,1);
    end;
end;

procedure TformJobs.q_incidentCalcFields(DataSet: TDataSet);
 var day_of_week : integer;
    current_day_of_week : integer;
    my_day_of_week : string;
    jok : boolean;
    my_string : string;
begin
  if (dataset = nil) or (dataset.state = dsinactive) then exit;
  with dataset do
    begin
      if not empty(fieldbyname('PRIORITY_CLASS').asstring) then
      begin
        if fieldbyname('PRIORITY_CLASS').asstring[1] in ['1','2','3','4','5','6','7'] then
           begin
              fieldbyname('MY_PRIORITY').asstring := int_to_str(str_to_int(fieldbyname('PRIORITY_CLASS').asstring[1],jok)+7)+
                copy(fieldbyname('PRIORITY_CLASS').asstring,3,length(fieldbyname('PRIORITY_CLASS').asstring[1])-3);
           end
        else
           begin
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'MO' then  day_of_week := 1;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'TU' then  day_of_week := 2;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'WE' then  day_of_week := 3;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'TH' then  day_of_week := 4;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'FR' then  day_of_week := 5;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'SA' then  day_of_week := 6;
             if copy(fieldbyname('PRIORITY_CLASS').asstring,1,2) = 'SU' then  day_of_week := 7;
             my_day_of_week := dayofweek2(showlikedateslash(newdat,false));
             if copy(my_day_of_week,1,2) = 'MO' then  current_day_of_week := 1;
             if copy(my_day_of_week,1,2) = 'TU' then  current_day_of_week := 2;
             if copy(my_day_of_week,1,2) = 'WE' then  current_day_of_week := 3;
             if copy(my_day_of_week,1,2) = 'TH' then  current_day_of_week := 4;
             if copy(my_day_of_week,1,2) = 'FR' then  current_day_of_week := 5;
             if copy(my_day_of_week,1,2) = 'SA' then  current_day_of_week := 6;
             if copy(my_day_of_week,1,2) = 'SU' then  current_day_of_week := 7;
             if current_day_of_week <= day_of_week then
               begin
                  fieldbyname('MY_PRIORITY').asstring :=
                     leadingzero((day_of_week-current_day_of_week)+1)+' '+fieldbyname('PRIORITY_CLASS').asstring;
               end
             else
               begin
                  fieldbyname('MY_PRIORITY').asstring  :=
                     leadingzero((day_of_week-current_day_of_week)+8)+' '+fieldbyname('PRIORITY_CLASS').asstring;
               end;
           end;
        end;

 //     fieldbyname('MY_PRIORITY').asstring :=
 //       copy(fieldbyname('PRIORITY_CLASS').asstring,1,2);
    end;
end;


procedure TformJobs.q_incidentBeforePost(DataSet: TDataSet);
begin
  with dataset do
     begin
       if state in [dsedit,dsinsert] then
         begin
           if empty(fieldbyname('CREATED_BY').asstring) then
             begin
               fieldbyname('CREATED_BY').asstring := t_employees.fieldbyname('EMPLOYEE_ID').asstring;
             end;
           {
           if empty(fieldbyname('CUSTOMER_NAME').asstring) then
             begin
               fieldbyname('CUSTOMER_NAME').asstring := cmb_customer.text;
             end;
             }
           if empty(fieldbyname('SCHEDULED_DATE').asstring) then
             fieldbyname('SCHEDULED_DATE').asstring := datetostr(cmb_date.date);
           if lbl_final.visible then
             begin
               fieldbyname('CLOSED_BY').asstring := fieldbyname('CURRENT_OWNER').asstring;
               fieldbyname('DATE_CLOSED').asstring := datetostr(date);
             end;
         end;
     end;
end;

procedure TformJobs.SpeedButton5Click(Sender: TObject);
begin
  self.print;
end;

procedure TformJobs.btn_changesClick(Sender: TObject);
begin
  with tform_changes.create(self) do
  try
    incident_search.text :=
      q_incident.fieldbyname('INCIDENT_ID').asstring;
    showmodal;
  finally
    free;
  end;
end;

procedure TformJobs.edt_daysChange(Sender: TObject);
begin
   load_incident('');
end;

procedure TformJobs.chk_view_only_high_priorityClick(Sender: TObject);
begin
   load_incident('');
end;

procedure TformJobs.btnSaveAndExitClick(Sender: TObject);
begin
    {
     with q_notes do
        begin
          if state <> dsbrowse then
            begin
               if messagebox(0,'Do you want to save the notes?','',mb_yesno) = id_yes then post;
            end;
        end;
  with q_incident do
    begin
      if state in [dsedit,dsinsert] then cancel;
      Pagemain.activepage := tabMain;
      btn_start.enabled := true;
      btn_stop.enabled := true;
     lbl_final.visible := false;
    end;
    }
      if checkkeyitems then
    begin
      with q_notes do
        begin
          if (state <> dsbrowse) and (q_incident.state <> dsinsert) then
            begin
               if messagebox(0,'Do you want to save the notes?','',mb_yesno) = id_yes then post;
            end;
        end;
      with q_incident do
        begin
          if state in [dsedit,dsinsert] then
            begin
              post;
            end;
           Pagemain.activepage := tabMain;
          btn_start.enabled := true;
          btn_stop.enabled := true;
          lbl_final.visible := false;
          load_incident('');
        end;
    end else abort;
end;

procedure TformJobs.grdIincidentDblClick(Sender: TObject);
begin
   btn_edit_incidentClick(self);
end;

procedure TformJobs.grdIincidentTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  load_incident(AFieldName);
end;

procedure TformJobs.q_incidentEmployeeInititalsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if empty(q_incident.FieldByName('CURRENT_OWNER').asstring) then
    begin
      text :='';
      exit;
    end;
  with q_sql do
    begin
      active := false;
      sql.clear;
      sql.add('SELECT SUBSTR(E.FIRST_NAME,1,1)||SUBSTR(E.MIDDLE_NAME,1,1)||SUBSTR(E.LAST_NAME,1,1)  INITIALS');
      sql.add('FROM EMPLOYEE E');
      sql.add('WHERE EMPLOYEE_ID = '''+q_incident.FieldByName('CURRENT_OWNER').asstring+'''');
      active := true;
      text := trim(fields[0].asstring);
      active := false;
    end;
end;

procedure TformJobs.grdIincidentCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  with q_incident do
    begin
      if (FieldByName('DUE_DATE').asdatetime < date ) and (not empty(FieldByName('DUE_DATE').asstring)) then
        begin
          ABrush.color := $00E1E1FF;
          AFont.color := clBlack;
        end;
      if (FieldByName('DUE_DATE').asdatetime < date -14) and (not empty(FieldByName('DUE_DATE').asstring)) then
        begin
          ABrush.color := $007A96E9;
          AFont.color := clBlack;
        end;
       if (FieldByName('HOURS_RECORDED').asfloat > 0) then
        begin
          ABrush.color := $0098FB98;
          AFont.color := clBlack;
        end;
     if (FieldByName('DUE_DATE').asdatetime < date ) and (not empty(FieldByName('DUE_DATE').asstring)) and (FieldByName('HOURS_RECORDED').asfloat > 0) then
        begin
          ABrush.color := $F0CAA6;
          AFont.color := clBlack;
        end;
     if FieldByName('COMPLETED').asstring ='TRUE' then
       begin
         ABrush.color := $00CDC5BF;
          AFont.color := clBlack;
       end;
     if not empty(FieldByName('CLOSED_BY').asstring) then
        begin
          ABrush.color := clbtnFace;
          AFont.color := clBlack;
        end;
     end;
     if highlight then
        begin
          ABrush.color := clhighlight;
          AFont.color := clwindow;
        end
end;

procedure TformJobs.cmbBeginDateChange(Sender: TObject);
begin
  load_incident('');
end;

procedure TformJobs.cmbEndDateChange(Sender: TObject);
begin
load_incident('');
end;

procedure TformJobs.q_notesAuthorInitialsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if empty(q_notes.FieldByName('AUTHOR').asstring) then
    begin
      text :='';
      exit;
    end;
  with q_sql do
    begin
      active := false;
      sql.clear;
      sql.add('SELECT SUBSTR(E.FIRST_NAME,1,1)||SUBSTR(E.MIDDLE_NAME,1,1)||SUBSTR(E.LAST_NAME,1,1)  INITIALS');
      sql.add('FROM EMPLOYEE E');
      sql.add('WHERE EMPLOYEE_ID = '''+q_notes.FieldByName('AUTHOR').asstring+'''');
      active := true;
      text := trim(fields[0].asstring);
      active := false;
    end;
end;

procedure TformJobs.cmbSalesGroupChange(Sender: TObject);
begin
   load_incident('');
end;

procedure TformJobs.btnYearClick(Sender: TObject);
begin
  cmbEndDate.date := date;
  cmbBeginDate.date := date-365;
end;

procedure TformJobs.btnWeekClick(Sender: TObject);
begin
 cmbEndDate.date := date;
  cmbBeginDate.date := date-7;
end;

procedure TformJobs.btnDayClick(Sender: TObject);
begin
  cmbEndDate.date := date;
  cmbBeginDate.date := date;
end;

procedure TformJobs.LoadEmployees;
var  CanSeeOtherEmployees: boolean;
  begin
    CanSeeOtherEmployees:= frmapplicationassign.can_edit(my_user,'CLIENTLINK','CLIENT JOBS OTHERS');
    with t_employees do
      begin
        active := false;
        sql.clear;
        sql.add('SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.MIDDLE_NAME,E.LAST_NAME,');
        sql.add(' SUBSTR(E.FIRST_NAME,1,1)||SUBSTR(E.MIDDLE_NAME,1,1)||SUBSTR(E.LAST_NAME,1,1)  INITIALS,');
        sql.add('EMPLOYEE_STATUS ');
        sql.add('  FROM EMPLOYEE E ');
        sql.add('WHERE EMPLOYEE_STATUS =''ACTIVE''');
        IF NOT CanSeeOtherEmployees THEN
          SQL.ADD('and EMPLOYEE_ID = '''+ClientTrackEmployee+'''');
        sql.add('UNION ALL ');
        sql.add('SELECT ''0'', ''A'', ''L'', ''L'', ''ALL'', ''ACTIVE'' FROM DUAL ');
        IF NOT CanSeeOtherEmployees THEN
          SQL.ADD('where 1=2');
        sql.add('ORDER BY 1 ');
        ACTIVE := TRUE;
      END;
  end;

procedure TformJobs.LoadDueDate;
  begin
    if q_incident.state = dsbrowse then
     q_incident.edit;
    with dmposting.q_sql do
      begin
        active := false;
        sql.clear;
        sql.add('SELECT PriorityClassCompletionDate(to_date('''+q_incident.fieldbyname('DATE_CREATED').asstring+''',''mm/dd/yyyy''), '''+cmb_priority.text+''') from dual');
        active := true;
        q_incident.fieldbyname('ESTIMATED_COMPLETION_DATE').asstring := fields[0].asstring;
        //cmbEstimatedCompletionDate.date := strtodate( q_incident.fieldbyname('ESTIMATED_COMPLETION_DATE').asstring);
        active := false;
      end;
  end;

procedure TformJobs.Label34Click(Sender: TObject);
begin
  LoadDueDate;
end;

procedure TformJobs.Label32Click(Sender: TObject);
var OutgoingProjectID: string;
begin
      if not frmapplicationassign.has_access(my_user,'CLIENTLINK','CLIENT PROJECTS') then exit;
     OutgoingProjectID := q_incident.fieldbyname('project_id').asstring;
      with tformClientProjects.create(self) do
      try
        setup_position(-154,10,684,952,'Client Projects',frmapplicationassign.can_edit(my_user,'CLIENTLINK','CLIENT PROJECTS'),bsSizeable,GlobalServerName,GlobalUserID,GlobalPassword,my_user);
        IncomingProjectID := OutgoingProjectID;
        showmodal;
      finally
      OutgoingProjectID  := IncomingProjectID;
        free;
      end;
  if empty(OutgoingProjectID) then exit;
   If OutgoingProjectID <> q_incident.fieldbyname('project_id').asstring  then
     begin
       if MessageBox(0,'Add Project To Job?','Support Manager',mb_yesno) = id_no then exit;
       if q_incident.state = dsbrowse then
       q_incident.edit;
       q_incident.fieldbyname('project_id').asstring :=  OutgoingProjectID;
     end;
end;

procedure TformJobs.btnClearJobClick(Sender: TObject);
begin
    if MessageBox(0,'Remove Job From Project?','Support Manager',mb_yesno) = id_no then exit;
    if q_incident.state = dsbrowse then
       q_incident.edit;
       q_incident.fieldbyname('project_id').asstring :=  '';
end;

procedure TformJobs.wwDBComboBox1Change(Sender: TObject);
begin
  if q_incident.state = dsinsert then
    begin
      case cmb_priority.text[1] of
      '1' : cmb_date.date := date;
      '2' : cmb_date.date := date+7;
      '3' : cmb_date.date := date+14;
      '4' : cmb_date.date := date+28;
      '5' : cmb_date.date := date+84;
      '6' : cmb_date.date := date+168;
      '7' : cmb_date.date := date+365
      end;
    end;
  if q_incident.state = dsedit then
    begin
      case cmb_priority.text[1] of
      '1' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring);
      '2' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+7;
      '3' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+14;
      '4' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+28;
      '5' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+84;
      '6' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+168;
      '7' : cmb_date.date := strtodate(q_incident.fieldbyname('DATE_CREATED').asstring)+365
      end;
    end;
end;

procedure TformJobs.cmb_priorityCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
  LoadDueDate;
end;

procedure TformJobs.q_notesBeforeInsert(DataSet: TDataSet);
begin
  if checkkeyitems then
    begin
      with q_incident do
        begin
          if state in [dsedit,dsinsert] then
            begin
              post;
              refreshrecord;
            end;
    end;
    end else abort;
end;

procedure TformJobs.q_incidentAfterInsert(DataSet: TDataSet);
begin
  shapeHighlightSave.visible := true;
  q_incident.FieldByName('CURRENT_OWNER').asstring := ClientTrackEmployee;
  q_incident.fieldbyname('DATE_CREATED').asdatetime := date;
  ShowFolderExists;
end;

procedure TformJobs.SpeedButton1Click(Sender: TObject);
begin
  if Pagemain.activepage <> tabmain then
    Pagemain.activepage := tabmain
  else
    begin
      IncomingJobID := q_incident.FieldByName('INCIDENT_ID').asstring;
      close;
    end;
end;

procedure TformJobs.q_incidentAfterPost(DataSet: TDataSet);
begin
  q_incident.refreshrecord;
  shapeHighlightSave.visible := false;
  ShowFolderExists;
end;



procedure TformJobs.q_incidentAfterEdit(DataSet: TDataSet);
begin
  shapeHighlightSave.visible := true;
end;

procedure TformJobs.ShowFolderExists;
  var OriginalDirectory : string;
  var currentDirectory : string;
  foldername : string;
 error : Integer;
 begin
OriginalDirectory:= GetCurrentDir;
  SetCurrentDir(JobsFolder);
  currentDirectory := GetCurrentDir;
  //ShowMessage('Current directory = '+GetCurrentDir);
   foldername := q_incident.fieldbyname('INCIDENT_ID').asstring;
   shapeExploreFolder.visible := false;

   if empty(foldername) then
     begin
       btnCreateFolder.caption :='Create Folder';
       exit;
     end;
    if directoryexists(foldername) then
      begin
        btnCreateFolder.caption :='Open Folder';
        shapeExploreFolder.visible := true;
      end
    else
     btnCreateFolder.caption :='Create Folder';
     SetCurrentDir(OriginalDirectory);
  end;

procedure TformJobs.btnCreateFolderClick(Sender: TObject);
 var OriginalDirectory : string;
  foldername : string;
 error : Integer;
begin
 OriginalDirectory:= GetCurrentDir;
  SetCurrentDir(JobsFolder);
  //ShowMessage('Current directory = '+GetCurrentDir);
   foldername := q_incident.fieldbyname('INCIDENT_ID').asstring;


   if empty(foldername) then
     begin
       ShowMessage('Must have a job I.D. before creating a folder.');
       exit;
     end;
    if directoryexists(foldername) then
      begin
         ShellExecute(Application.Handle,
         nil,
         'explorer.exe',
          PChar(JobsFolder+foldername), //wherever you want the window to open to
          nil,
          SW_NORMAL     //see other possibilities by ctrl+clicking on SW_NORMAL
           );
         exit;
       end;
   SetCurrentDir(JobsFolder);
  {$IOChecks off}
  MkDir(foldername);
   SetCurrentDir(OriginalDirectory);
  // Did the directory get created OK?
  {
  error := IOResult;
  if error = 0
  then ShowMessage('Directory created OK')
  else ShowMessageFmt('Directory creation failed with error %d',[error]);
  SetCurrentDir(OriginalDirectory);
  }
  {$IOChecks on}
end;

end.

