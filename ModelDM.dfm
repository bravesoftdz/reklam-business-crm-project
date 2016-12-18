object BoldModelDM: TBoldModelDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 504
  Width = 469
  object bphXML: TBoldPersistenceHandleFileXML
    FileName = 
      'C:\DEV030110\OPERATE\Sources\'#1056#1077#1082#1083#1072#1084#1085#1086#1077' '#1072#1075#1077#1085#1089#1090#1074#1086'\Reklam\DEMO_DB_D' +
      'ATA.xml'
    CacheData = False
    BoldModel = b_model
    Left = 192
    Top = 240
  end
  object bsh: TBoldSystemHandle
    IsDefault = True
    SystemTypeInfoHandle = bstih
    Active = False
    PersistenceHandle = bphXML
    Left = 112
    Top = 176
  end
  object bstih: TBoldSystemTypeInfoHandle
    BoldModel = b_model
    Left = 112
    Top = 240
  end
  object BaseDBActionList: TActionList
    Left = 40
    Top = 64
    object BoldUpdateDBAction1: TBoldUpdateDBAction
      Category = 'Bold Actions'
      Caption = 'Update DB'
      Enabled = False
      ImageIndex = 4
      BoldSystemHandle = bsh
    end
    object BoldActivateSystemAction1: TBoldActivateSystemAction
      Category = 'Bold Actions'
      Caption = 'Open system'
      BoldSystemHandle = bsh
      OnSystemOpened = BoldActivateSystemAction1SystemOpened
      OnSystemClosed = BoldActivateSystemAction1SystemClosed
      OpenCaption = 'Open system'
      CloseCaption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
      SaveQuestion = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1080#1079#1084#1077#1085#1077#1085#1080#1081'?'
      SaveOnClose = saAsk
    end
    object BoldUndoAction1: TBoldUndoAction
      Category = 'Bold Actions'
      Caption = 'Undo'
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
      ImageIndex = 16
      BoldSystemHandle = bsh
    end
  end
  object RBoldTranslit: TRBoldTranslit
    Active = True
    Left = 112
    Top = 104
  end
  object bph: TBoldPersistenceHandleDB
    BoldModel = b_model
    ClockLogGranularity = '0:0:0.0'
    DatabaseAdapter = bdaADO
    Left = 280
    Top = 176
  end
  object bdaADO: TBoldDatabaseAdapterADO
    SQLDatabaseConfig.ColumnTypeForDate = 'DATETIME'
    SQLDatabaseConfig.ColumnTypeForTime = 'DATETIME'
    SQLDatabaseConfig.ColumnTypeForDateTime = 'DATETIME'
    SQLDatabaseConfig.ColumnTypeForBlob = 'IMAGE'
    SQLDatabaseConfig.ColumnTypeForFloat = 'DECIMAL (28,10)'
    SQLDatabaseConfig.ColumnTypeForCurrency = 'DECIMAL (28,10)'
    SQLDatabaseConfig.ColumnTypeForString = 'VARCHAR(%d)'
    SQLDatabaseConfig.ColumnTypeForInteger = 'INTEGER'
    SQLDatabaseConfig.ColumnTypeForSmallInt = 'SMALLINT'
    SQLDatabaseConfig.DropColumnTemplate = 'ALTER TABLE <TableName> DROP COLUMN <ColumnName>'
    SQLDatabaseConfig.DropTableTemplate = 'DROP TABLE <TableName>'
    SQLDatabaseConfig.DropIndexTemplate = 'DROP INDEX <TableName>.<IndexName>'
    SQLDatabaseConfig.SQLforNotNull = 'NOT NULL'
    SQLDatabaseConfig.QuoteNonStringDefaultValues = False
    SQLDatabaseConfig.SupportsConstraintsInCreateTable = True
    SQLDatabaseConfig.SupportsStringDefaultValues = True
    SQLDatabaseConfig.DBGenerationMode = dbgQuery
    SQLDatabaseConfig.ReservedWords.Strings = (
      'ACTIVE, ADD, ALL, AFTER, ALTER'
      'AND, ANY, AS, ASC, ASCENDING,'
      'AT, AUTO, AUTOINC, AVG, BASE_NAME'
      'BEFORE, BEGIN, BETWEEN, BLOB, BOOLEAN,'
      'BOTH, BY, BYTES, CACHE, CAST, CHAR'
      'CHARACTER, CHECK, CHECK_POINT_LENGTH, COLLATE,'
      'COLUMN, COMMIT, COMMITTED, COMPUTED'
      'CONDITIONAL, CONSTRAINT, CONTAINING, COUNT, CREATE, CSTRING,'
      'CURRENT, CURSOR, DATABASE, DATE, DAY'
      'DEBUG, DEC, DECIMAL, DECLARE, DEFAULT,'
      'DELETE, DESC, DESCENDING, DISTINCT, DO'
      'DOMAIN, DOUBLE, DROP, ELSE, END,'
      'ENTRY_POINT, ESCAPE, EXCEPTION, EXECUTE'
      'EXISTS, EXIT, EXTERNAL, EXTRACT, FILE, FILTER,'
      'FLOAT, FOR, FOREIGN, FROM, FULL, FUNCTION'
      'GDSCODE, GENERATOR, GEN_ID, GRANT,'
      'GROUP, GROUP_COMMIT_WAIT_TIME, HAVING'
      'HOUR, IF, IN, INT, INACTIVE, INDEX, INNER,'
      'INPUT_TYPE, INSERT, INTEGER, INTO'
      'IS, ISOLATION, JOIN, KEY, LONG, LENGTH,'
      'LOGFILE, LOWER, LEADING, LEFT, LEVEL'
      'LIKE, LOG_BUFFER_SIZE, MANUAL, MAX, MAXIMUM_SEGMENT,'
      'MERGE, MESSAGE, MIN, MINUTE, MODULE_NAME'
      'MONEY, MONTH, NAMES, NATIONAL, NATURAL,'
      'NCHAR, NO, NOT, NULL, NUM_LOG_BUFFERS'
      'NUMERIC, OF, ON, ONLY, OPTION,'
      'OR, ORDER, OUTER, OUTPUT_TYPE, OVERFLOW'
      'PAGE_SIZE, PAGE, PAGES, PARAMETER, PASSWORD,'
      'PLAN, POSITION, POST_EVENT, PRECISION'
      
        'PROCEDURE, PROTECTED, PRIMARY, PRIVILEGES, RAW_PARTITIONS, RDB$D' +
        'B_KEY,'
      'READ, REAL, RECORD_VERSION, REFERENCES'
      'RESERV, RESERVING, RETAIN, RETURNING_VALUES, RETURNS, REVOKE,'
      'RIGHT, ROLE, ROLLBACK, SECOND, SEGMENT'
      'SELECT, SET, SHARED, SHADOW, SCHEMA, SINGULAR,'
      'SIZE, SMALLINT, SNAPSHOT, SOME, SORT'
      'SQLCODE, STABILITY, STARTING, STARTS, STATISTICS,'
      'SUB_TYPE, SUBSTRING, SUM, SUSPEND, TABLE'
      'THEN, TIME, TIMESTAMP, TIMEZONE_HOUR, TIMEZONE_MINUTE,'
      'TO, TRAILING, TRANSACTION, TRIGGER, TRIM'
      'UNCOMMITTED, UNION, UNIQUE, UPDATE, UPPER,'
      'USER, VALUE, VALUES, VARCHAR, VARIABLE'
      'VARYING, VIEW, WAIT, WHEN, WHERE,'
      'WHILE, WITH, WORK, WRITE, YEAR')
    SQLDatabaseConfig.StoreEmptyStringsAsNULL = False
    SQLDatabaseConfig.SystemTablePrefix = 'BOLD'
    SQLDatabaseConfig.SqlScriptSeparator = '---'
    SQLDatabaseConfig.SqlScriptTerminator = ';'
    SQLDatabaseConfig.SqlScriptCommentStart = '/* '
    SQLDatabaseConfig.SqlScriptCommentStop = ' */'
    SQLDatabaseConfig.SqlScriptStartTransaction = 'BEGIN TRAN'
    SQLDatabaseConfig.SqlScriptCommitTransaction = 'COMMIT TRAN'
    SQLDatabaseConfig.SqlScriptRollBackTransaction = 'ROLLBACK'
    Connection = ADOConnection
    DatabaseEngine = dbeSQLServer
    Left = 280
    Top = 240
  end
  object ADOConnection: TADOConnection
    ConnectionString = 'FILE NAME=C:\MyBDSProjects\01052006\Reklam\MainConnection.udl'
    LoginPrompt = False
    Provider = 'C:\MyBDSProjects\01052006\Reklam\MainConnection.udl'
    Left = 280
    Top = 104
  end
  object USRLoginADOQuery: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 280
    Top = 296
  end
  object BoldObjectUpgraderHandle: TBoldObjectUpgraderHandle
    Config = <>
    PersistenceHandle = bph
    SystemTypeInfoHandle = bstih
    Left = 112
    Top = 296
  end
  object MainPlanADOQuery: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 192
    Top = 104
  end
  object dsMainPlan: TDataSource
    DataSet = MainPlanADOQuery
    Left = 192
    Top = 176
  end
  object b_model: TBoldModel
    UMLModelMode = ummNone
    Boldify.EnforceDefaultUMLCase = False
    Boldify.DefaultNavigableMultiplicity = '0..1'
    Boldify.DefaultNonNavigableMultiplicity = '0..*'
    Left = 280
    Top = 352
    Model = (
      'VERSION 19'
      '(Model'
      #9'"BusinessClasses"'
      #9'"BusinessClassesRoot"'
      #9'""'
      #9'""'
      
        #9'"_BoldInternal.toolId=447AADD60291,_BoldInternal.flattened=True' +
        ',_Boldify.boldified=True,_BoldInternal.ModelErrors=,Bold.DelphiN' +
        'ame=<Name>,Bold.RootClass=BusinessClassesRoot"'
      #9'(Classes'
      #9#9'(Class'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'"<NONE>"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_Boldify.autoCreated=True,Bold.TableN' +
        'ame=<Prefix>_OBJECT"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"Linkimeet_harakt_klientaharakterizuet_klienta"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      #9#9#9'"persistence=persistent,_Boldify.autoCreated=True"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"Linkotnos_kak_zadach_k_prichimeet_v_osnove_zadachi"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      #9#9#9'"persistence=persistent,_Boldify.autoCreated=True"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1042#1099#1087#1091#1089#1082' '#1075#1072#1079#1077#1090#1099'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=449932D3005D,persistence=persistent,Bol' +
        'd.DelphiName=TVypusk_gazety,Bold.ExpressionName=Vypusk_gazety,Bo' +
        'ld.TableName=Vypusk_gazety,Bold.InterfaceName=IVypusk_gazety"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1074#1099#1087#1091#1089#1082#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499330D02FD,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_vypuska,Bold.ExpressionName=N' +
        'omer_vypuska,Bold.DelphiName=Nomer_vypuska"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499331C029F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Data_vypuska,Bold.ExpressionName=Da' +
        'ta_vypuska,Bold.DelphiName=Data_vypuska"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499333302CE,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=God_vypuska,Bold.ExpressionName=God' +
        '_vypuska,Bold.DelphiName=God_vypuska"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"sort"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45088F42029F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=sort,Bold.ExpressionName=sort,Bold.De' +
        'lphiName=sort,Bold.DerivationOCL=god_vypuska*400+nomer_vypuska"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1042#1099#1093#1086#1076'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=449934CB0177,persistence=persistent,Bol' +
        'd.DelphiName=TVyhod,Bold.ExpressionName=Vyhod,Bold.TableName=Vyh' +
        'od,Bold.InterfaceName=IVyhod"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1086#1085#1091#1089#1085#1099#1081' '#1074#1099#1093#1086#1076'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991E2702BF,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Bonusnyi_vyhod,Bold.ExpressionName=Bo' +
        'nusnyi_vyhod,Bold.DelphiName=Bonusnyi_vyhod,\"Bold.DerivationOCL' +
        '=if imeet_razmesheniya.bonus_vyhod.floor=0 then\c\l0=1 else\c\l(' +
        '(vyhodov_do mod \c\lself.imeet_razmesheniya.bonus_vyhod.floor)=0' +
        ')\c\land\c\l( self.vyhodit_v_vypuskah.vyhod_izdaniya.imeet_vyhod' +
        'y->select(\c\l(sort>self.posledn_nezap) and (sort<=self.vyhodit_' +
        'v_vypuskah.sort)  )->size \c\l=\c\lvyhodov_do)\c\lendif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1086#1083' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B70F007D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Izmenitj_kol_strok,Bold.ExpressionN' +
        'ame=Izmenitj_kol_strok,Bold.DelphiName=Izmenitj_kol_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1074' '#1082#1086#1083' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B730033C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nov_kol_strok,Bold.ExpressionName=N' +
        'ov_kol_strok,Bold.DelphiName=Nov_kol_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1073' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505BA04029F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dob_stoim,Bold.ExpressionName=V' +
        'sego_dob_stoim,Bold.DelphiName=Vsego_dob_stoim,Bold.DerivationOC' +
        'L=imeet_dobav_stoim->collect(summa)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1086#1094' '#1089#1082#1080#1076#1082#1072' '#1085#1072' '#1074#1099#1093'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450889EA01A5,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Proc_skidka_na_vyh,Bold.ExpressionNam' +
        'e=Proc_skidka_na_vyh,Bold.DelphiName=Proc_skidka_na_vyh"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1093#1086#1076#1086#1074' '#1076#1086'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089A3301F4,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vyhodov_do,Bold.ExpressionName=Vyhodo' +
        'v_do,Bold.DelphiName=Vyhodov_do,\"Bold.DerivationOCL=self.imeet_' +
        'razmesheniya.vyhodit_v_vypuskah->select(\c\l(sort>self.posledn_n' +
        'ezap) and (sort<=self.vyhodit_v_vypuskah.sort) )->size\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1079#1084#1077#1085#1105#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089DB901A5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Izmenyon,Bold.ExpressionName=Izmeny' +
        'on,Bold.DelphiName=Izmenyon"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1079#1084#1077#1085' '#1091#1095#1090#1077#1085#1099' '#1082#1086#1088#1088#1077#1082#1090#1086#1088#1086#1084'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089DD6002E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Izmen_uchteny_korrektorom,Bold.Expr' +
        'essionName=Izmen_uchteny_korrektorom,Bold.DelphiName=Izmen_uchte' +
        'ny_korrektorom"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1086#1089#1083#1077#1076#1085' '#1085#1077#1079#1072#1087'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4507E40202EE,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Posledn_nezap,Bold.ExpressionName=Pos' +
        'ledn_nezap,Bold.DelphiName=Posledn_nezap,\"Bold.DerivationOCL=se' +
        'lf.vyhodit_v_vypuskah.vyhod_izdaniya.imeet_vyhody\c\l->select(so' +
        'rt<=self.vyhodit_v_vypuskah.sort)->\c\lselect(not imeet_razmeshe' +
        'niya->includes(self.imeet_razmesheniya))->\c\lcollect(sort)->max' +
        'Value\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1074#1099#1093#1086#1076#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45096E570232,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Stoim_vyhoda,Bold.ExpressionName=Stoi' +
        'm_vyhoda,Bold.DelphiName=Stoim_vyhoda,\"Bold.DerivationOCL=vsego' +
        '_dob_stoim\c\l+if vyh_po_inoi_cene then\c\lustan_cena else\c\lif' +
        ' not imeet_razmesheniya.opt_dlya_dolgih and not \c\l(imeet_razme' +
        'sheniya.za_chisl_strok and  (kolichestvo_strok>0)) then \c\lif b' +
        'onusnyi_vyhod then\c\l0.0 else if vyhodov_do>1 then\c\lstoim_ot_' +
        'razmesh*(1.0-\c\lNastroiki.allInstances->first.post_proc_sbavki/' +
        '100)\c\lelse stoim_ot_razmesh endif endif \c\lelse stoim_ot_razm' +
        'esh endif endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1AAD01E4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Primechanie,Bold.ExpressionName=Pri' +
        'mechanie,Bold.DelphiName=Primechanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1083' '#1086#1073#1098#1103#1074#1083'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1BA4001F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kol_objyavl,Bold.ExpressionName=Kol' +
        '_objyavl,Bold.DelphiName=Kol_objyavl"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1093' '#1087#1086' '#1080#1085#1086#1081' '#1094#1077#1085#1077'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451426E800FA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vyh_po_inoi_cene,Bold.ExpressionNam' +
        'e=Vyh_po_inoi_cene,Bold.DelphiName=Vyh_po_inoi_cene"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1089#1090#1072#1085' '#1094#1077#1085#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4514270303A9,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Ustan_cena,Bold.ExpressionName=Usta' +
        'n_cena,Bold.DelphiName=Ustan_cena"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1086#1090' '#1088#1072#1079#1084#1077#1097'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515632C035B,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Stoim_ot_razmesh,Bold.ExpressionName=' +
        'Stoim_ot_razmesh,Bold.DelphiName=Stoim_ot_razmesh,\"Bold.Derivat' +
        'ionOCL=if imeet_razmesheniya.opt_dlya_dolgih then imeet_razmeshe' +
        'niya.vsego_stoim*\c\l(1.0-imeet_razmesheniya.opt_procent/100.0) ' +
        'else \c\lif imeet_razmesheniya.za_chisl_strok and  (kolichestvo_' +
        'strok>0) then\c\lif kolichestvo_strok>imeet_razmesheniya.chislo_' +
        'strok then\c\l(imeet_razmesheniya.nulevaya_stoim*imeet_razmeshen' +
        'iya.chislo_strok+\c\l(((kolichestvo_strok-imeet_razmesheniya.chi' +
        'slo_strok)*imeet_razmesheniya.stoim_stroki).oclAsType(Float)))\c' +
        '\lelse \c\limeet_razmesheniya.nulevaya_stoim*kolichestvo_strok.o' +
        'clAsType(Float) \c\lendif  else\c\limeet_razmesheniya.vsego_stoi' +
        'm endif endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042' '#1076#1086#1083#1075'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45156358005D,persistence=transient,de' +
        'rived=True,Bold.ColumnName=V_dolg,Bold.ExpressionName=V_dolg,Bol' +
        'd.DelphiName=V_dolg,\"Bold.DerivationOCL=imeet_razmesheniya.obsh' +
        'aya_stoim<\c\l(imeet_razmesheniya.vyhod->select(vyhodit_v_vypusk' +
        'ah.sort<=\c\lself.vyhodit_v_vypuskah.sort)->collect(stoim_vyhoda' +
        ')->sum\c\l+imeet_razmesheniya.vsego_dob_stoim)\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515666202FD,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Kolichestvo_strok,Bold.ExpressionName' +
        '=Kolichestvo_strok,Bold.DelphiName=Kolichestvo_strok,\"Bold.Deri' +
        'vationOCL=if izmenitj_kol_strok and (nov_kol_strok>0) then\c\lno' +
        'v_kol_strok else\c\limeet_razmesheniya.kolichestvo_strok endif\"' +
        '"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1044#1086#1082#1091#1084#1077#1085#1090'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D7139D005D,persistence=persistent,Bol' +
        'd.DelphiName=TDokument,Bold.ExpressionName=Dokument,Bold.TableNa' +
        'me=Dokument,Bold.InterfaceName=IDokument"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713F70128,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_dogovora,Bold.ExpressionName=' +
        'Nomer_dogovora,Bold.DelphiName=Nomer_dogovora"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713F70148,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie_dogovora,Bold.Expressi' +
        'onName=Naimenovanie_dogovora,Bold.DelphiName=Naimenovanie_dogovo' +
        'ra"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713F70167,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opisanie_dogovora,Bold.ExpressionNa' +
        'me=Opisanie_dogovora,Bold.DelphiName=Opisanie_dogovora"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1051#1086#1075' '#1086#1087#1077#1088#1072#1094#1080#1080'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAEF30074,persistence=persistent,Bol' +
        'd.DelphiName=TLog_operacii,Bold.ExpressionName=Log_operacii,Bold' +
        '.TableName=Log_operacii,Bold.InterfaceName=ILog_operacii"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30075,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie_operacii,Bold.Expressi' +
        'onName=Naimenovanie_operacii,Bold.DelphiName=Naimenovanie_operac' +
        'ii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1091#1073#1098#1077#1082#1090'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30076,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Subjekt,Bold.ExpressionName=Subjekt,B' +
        'old.DelphiName=Subjekt,Bold.DerivationOCL=ot_deistvii.polnoe_imy' +
        'a"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30077,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Data_i_vremya,Bold.ExpressionName=Dat' +
        'a_i_vremya,Bold.DelphiName=Data_i_vremya,\"Bold.DerivationOCL=da' +
        'ta.asString +'#39'  '#39'+vremya\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072'"'
      #9#9#9#9#9'"Date"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30078,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Data,Bold.ExpressionName=Data,Bold.' +
        'DelphiName=Data"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1088#1077#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30079,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vremya,Bold.ExpressionName=Vremya,B' +
        'old.DelphiName=Vremya"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1053#1072#1089#1090#1088#1086#1081#1082#1080'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=449902680203,persistence=persistent,Bol' +
        'd.DelphiName=TNastroiki,Bold.ExpressionName=Nastroiki,Bold.Table' +
        'Name=Nastroiki,Bold.InterfaceName=INastroiki"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1062#1074#1077#1090' '#1085#1077#1086#1087#1083#1072#1095#1077#1085#1099#1093'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"16777215"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449904480157,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Cvet_neoplachenyh,Bold.ExpressionNa' +
        'me=Cvet_neoplachenyh,Bold.DelphiName=Cvet_neoplachenyh"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1062#1074#1077#1090' '#1080#1076#1091#1097#1080#1093'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"16777215"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499045A00DA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Cvet_idushih,Bold.ExpressionName=Cv' +
        'et_idushih,Bold.DelphiName=Cvet_idushih"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1062#1074#1077#1090' '#1087#1086#1076' '#1074#1086#1087#1088#1086#1089#1086#1084'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"16777215"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449904600290,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Cvet_pod_voprosom,Bold.ExpressionNa' +
        'me=Cvet_pod_voprosom,Bold.DelphiName=Cvet_pod_voprosom"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1063#1080#1089#1083#1086' '#1074#1099#1093' '#1073#1086#1085#1091#1089'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991E56030D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Chislo_vyh_bonus,Bold.ExpressionNam' +
        'e=Chislo_vyh_bonus,Bold.DelphiName=Chislo_vyh_bonus"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1089#1090#1072#1088#1090' '#1074#1099#1087'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCC18A025F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_start_vyp,Bold.ExpressionName' +
        '=Nomer_start_vyp,Bold.DelphiName=Nomer_start_vyp"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1043#1086#1076' '#1089#1090#1072#1088#1090' '#1074#1099#1087'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCC196027E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=God_start_vyp,Bold.ExpressionName=G' +
        'od_start_vyp,Bold.DelphiName=God_start_vyp"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1082#1080#1076#1082#1072' '#1087#1086#1074#1090' '#1074#1099#1093'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D0B90400EA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Skidka_povt_vyh,Bold.ExpressionName' +
        '=Skidka_povt_vyh,Bold.DelphiName=Skidka_povt_vyh"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1083#1080#1085#1072' '#1080#1085#1090#1077#1088#1074#1072#1083#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D0B9390177,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Dlina_intervala,Bold.ExpressionName' +
        '=Dlina_intervala,Bold.DelphiName=Dlina_intervala"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1077#1082' '#1074#1088#1077#1084#1103'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98CFF03B9,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Tek_vremya,Bold' +
        '.ExpressionName=Tek_vremya,Bold.DelphiName=Tek_vremya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1079#1072' '#1089#1090#1088#1086#1082#1091'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41BA902FD,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Stoim_za_stroku,Bold.ExpressionName' +
        '=Stoim_za_stroku,Bold.DelphiName=Stoim_za_stroku"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1079#1072' '#1089#1090#1088#1086#1082#1091' '#1086#1087#1090'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41BB803B9,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Stoim_za_stroku_opt,Bold.Expression' +
        'Name=Stoim_za_stroku_opt,Bold.DelphiName=Stoim_za_stroku_opt"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1083#1080#1095' '#1089#1090#1088#1086#1082' '#1086#1087#1090'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41BD400FA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kolich_strok_opt,Bold.ExpressionNam' +
        'e=Kolich_strok_opt,Bold.DelphiName=Kolich_strok_opt"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1086#1089#1090' '#1087#1088#1086#1094' '#1089#1073#1072#1074#1082#1080'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4509779C003E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Post_proc_sbavki,Bold.ExpressionNam' +
        'e=Post_proc_sbavki,Bold.DelphiName=Post_proc_sbavki"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1085#1077#1081' '#1085#1072#1087#1086#1084' '#1086#1073' '#1086#1082#1086#1085#1095'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CC8A037A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Dnei_napom_ob_okonch,Bold.Expressio' +
        'nName=Dnei_napom_ob_okonch,Bold.DelphiName=Dnei_napom_ob_okonch"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1054#1087#1083#1072#1090#1072'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=449935370186,persistence=persistent,Bol' +
        'd.DelphiName=TOplata,Bold.ExpressionName=Oplata,Bold.TableName=O' +
        'plata,Bold.InterfaceName=IOplata"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1091#1084#1084#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44993540036B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Summa,Bold.ExpressionName=Summa,Bol' +
        'd.DelphiName=Summa"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499355001B5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Data_oplaty,Bold.ExpressionName=Dat' +
        'a_oplaty,Bold.DelphiName=Data_oplaty"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1089#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCB69D025F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Osnovanie,Bold.ExpressionName=Osnov' +
        'anie,Bold.DelphiName=Osnovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1077#1079' '#1085#1072#1083'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCB6A90211,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Bez_nal,Bold.ExpressionName=Bez_nal' +
        ',Bold.DelphiName=Bez_nal"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1074#1099#1087#1080#1089' '#1089#1095#1105#1090#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCB6B80107,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_vypis_schyota,Bold.Expression' +
        'Name=Nomer_vypis_schyota,Bold.DelphiName=Nomer_vypis_schyota"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1087#1088#1080#1093' '#1086#1088#1076#1077#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4510549C035B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_prih_ordera,Bold.ExpressionNa' +
        'me=Nomer_prih_ordera,Bold.DelphiName=Nomer_prih_ordera"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1073#1086#1079#1085' '#1089#1095#1105#1090#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45105763001F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Obozn_schyota,Bold.ExpressionName=O' +
        'bozn_schyota,Bold.DelphiName=Obozn_schyota"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451426700232,persistence=persistent,d' +
        'erived=False,Bold.Length=2000,Bold.ColumnName=Primechanie,Bold.E' +
        'xpressionName=Primechanie,Bold.DelphiName=Primechanie"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1077#1088#1089#1086#1085#1072'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAEF3008F,persistence=persistent,Bol' +
        'd.DelphiName=TPersona,Bold.ExpressionName=Persona,Bold.TableName' +
        '=Persona,Bold.InterfaceName=IPersona"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1060#1072#1084#1080#1083#1080#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30090,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Familiya,Bold.ExpressionName=Famili' +
        'ya,Bold.DelphiName=Familiya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30091,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Imya,Bold.ExpressionName=Imya,Bold.' +
        'DelphiName=Imya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1090#1095#1077#1089#1090#1074#1086'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30092,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Otchestvo,Bold.ExpressionName=Otche' +
        'stvo,Bold.DelphiName=Otchestvo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1083#1080#1094#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30093,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Ulica,Bold.ExpressionName=Ulica,Bol' +
        'd.DelphiName=Ulica"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1086#1084'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30094,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Dom,Bold.ExpressionName=Dom,Bold.De' +
        'lphiName=Dom"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1074#1072#1088#1090#1080#1088#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30095,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kvartira,Bold.ExpressionName=Kvarti' +
        'ra,Bold.DelphiName=Kvartira"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1088#1087#1091#1089'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30096,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Korpus,Bold.ExpressionName=Korpus,B' +
        'old.DelphiName=Korpus"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30097,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Mobiljnyi_telefon,Bold.ExpressionNa' +
        'me=Mobiljnyi_telefon,Bold.DelphiName=Mobiljnyi_telefon"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30098,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Rabochii_telefon,Bold.ExpressionNam' +
        'e=Rabochii_telefon,Bold.DelphiName=Rabochii_telefon"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1086#1084#1072#1096#1085#1080#1081' '#1090#1077#1083#1077#1092#1086#1085'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30099,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Domashnii_telefon,Bold.ExpressionNa' +
        'me=Domashnii_telefon,Bold.DelphiName=Domashnii_telefon"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3009A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Elektronnyi_adres,Bold.ExpressionNa' +
        'me=Elektronnyi_adres,Bold.DelphiName=Elektronnyi_adres"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1086#1083#1085#1086#1077' '#1080#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3009B,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Polnoe_imya,Bold.ExpressionName=Polno' +
        'e_imya,Bold.DelphiName=Polnoe_imya,\"Bold.DerivationOCL=familiya' +
        '+'#39' '#39'+imya +'#39' '#39'+otchestvo\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D076DC0085,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data_rogdeniya,' +
        'Bold.ExpressionName=Data_rogdeniya,Bold.DelphiName=Data_rogdeniy' +
        'a"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1088#1080#1095#1080#1085#1072'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D1C29C0203,persistence=persistent,Bol' +
        'd.DelphiName=TPrichina,Bold.ExpressionName=Prichina,Bold.TableNa' +
        'me=Prichina,Bold.InterfaceName=IPrichina"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C2B8002E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C2C80203,persistence=persistent,d' +
        'erived=False,Bold.Length=1000,Bold.ColumnName=Kommentarii,Bold.E' +
        'xpressionName=Kommentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1088#1080#1095#1080#1085#1072' '#1091#1089#1083#1086#1074'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44F1C9D5009C,persistence=persistent,Bol' +
        'd.DelphiName=TPrichina_uslov,Bold.ExpressionName=Prichina_uslov,' +
        'Bold.TableName=Prichina_uslov,Bold.InterfaceName=IPrichina_uslov' +
        '"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1088#1086#1077#1082#1090'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D7138A01C5,persistence=persistent,Bol' +
        'd.DelphiName=TProekt,Bold.ExpressionName=Proekt,Bold.TableName=P' +
        'roekt,Bold.InterfaceName=IProekt"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713AD00FA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_proekta,Bold.ExpressionName=N' +
        'omer_proekta,Bold.DelphiName=Nomer_proekta"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713B90196,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie_proekta,Bold.Expressio' +
        'nName=Naimenovanie_proekta,Bold.DelphiName=Naimenovanie_proekta"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D713C20138,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opisanie_proekta,Bold.ExpressionNam' +
        'e=Opisanie_proekta,Bold.DelphiName=Opisanie_proekta"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447D5A97008C,persistence=persistent,Bol' +
        'd.DelphiName=TRazmeshenie_reklamy,Bold.ExpressionName=Razmesheni' +
        'e_reklamy,Bold.TableName=Razmeshenie_reklamy,Bold.InterfaceName=' +
        'IRazmeshenie_reklamy"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5AE600BB,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Data,Bold.ExpressionName=Data,Bold.' +
        'DelphiName=Data"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1060#1072#1081#1083' '#1080#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5B13036B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Fail_imya,Bold.ExpressionName=Fail_' +
        'imya,Bold.DelphiName=Fail_imya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086' '#1087#1083#1086#1097'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D63B00148,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Stoimostj_po_plosh,Bold.ExpressionNam' +
        'e=Stoimostj_po_plosh,Bold.DelphiName=Stoimostj_po_plosh,\"Bold.D' +
        'erivationOCL=if isp_ustan_stoim then ustan_stoim \c\lelse \c\lif' +
        ' imeet_stoim_kv_sm<>nil then\c\limeet_stoim_kv_sm.stoimostj_1_kv' +
        '_sm\c\lelse 0.0 endif endif * \c\lif razr_mnogitelj then mnogite' +
        'lj\c\lelse 1.0 endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1089#1087' '#1091#1089#1090#1072#1085' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D63B00177,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Isp_ustan_stoim,Bold.ExpressionName' +
        '=Isp_ustan_stoim,Bold.DelphiName=Isp_ustan_stoim"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1089#1090#1072#1085' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D63B00186,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Ustan_stoim,Bold.ExpressionName=Ust' +
        'an_stoim,Bold.DelphiName=Ustan_stoim"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D63B001A5,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_stoim,Bold.ExpressionName=Vsego' +
        '_stoim,Bold.DelphiName=Vsego_stoim,Bold.DerivationOCL=ploshadj*s' +
        'toimostj_po_plosh"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1086#1096#1083#1086'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499048102DE,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Proshlo,Bold.ExpressionName=Proshlo' +
        ',Bold.DelphiName=Proshlo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1083#1086#1097#1072#1076#1100'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499054C02EE,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Ploshadj,Bold.ExpressionName=Ploshadj' +
        ',Bold.DelphiName=Ploshadj,\"Bold.DerivationOCL=if isp_stand_razm' +
        'er\c\lthen if imeet_razmery<>nil then\c\l\c\limeet_razmery.plosh' +
        'adj\c\l\c\lelse 0.0 endif else\c\lvysota*shirina endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1073#1086#1079#1085#1072#1095' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44990570000F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Oboznach_strok,Bold.ExpressionName=' +
        'Oboznach_strok,Bold.DelphiName=Oboznach_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1088#1080#1089#1091#1085#1082#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499344B0186,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Identifikator_risunka,Bold.Expressi' +
        'onName=Identifikator_risunka,Bold.DelphiName=Identifikator_risun' +
        'ka"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1089#1090#1088#1072#1085#1080#1094#1099'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCC47D029D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_stranicy,Bold.ExpressionName=' +
        'Nomer_stranicy,Bold.DelphiName=Nomer_stranicy"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1047#1072#1082#1088#1099#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D0B38E036B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Zakryt,Bold.ExpressionName=Zakryt,B' +
        'old.DelphiName=Zakryt"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1080#1089#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D100690242,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opisanie,Bold.ExpressionName=Opisan' +
        'ie,Bold.DelphiName=Opisanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41B700157,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kolichestvo_strok,Bold.ExpressionNa' +
        'me=Kolichestvo_strok,Bold.DelphiName=Kolichestvo_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1077#1079' '#1089#1082#1080#1076#1086#1082'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C0E006D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Bez_skidok,Bold.ExpressionName=Bez_' +
        'skidok,Bold.DelphiName=Bez_skidok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1089#1086#1090#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C4E0119,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vysota,Bold.ExpressionName=Vysota,B' +
        'old.DelphiName=Vysota"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1064#1080#1088#1080#1085#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C4E0157,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Shirina,Bold.ExpressionName=Shirina' +
        ',Bold.DelphiName=Shirina"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1089#1087' '#1089#1090#1072#1085#1076' '#1088#1072#1079#1084#1077#1088'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C5003A9,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Isp_stand_razmer,Bold.ExpressionNam' +
        'e=Isp_stand_razmer,Bold.DelphiName=Isp_stand_razmer"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1086#1085#1091#1089'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504119003B9,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Bonus,Bold.ExpressionName=Bonus,Bold.' +
        'DelphiName=Bonus,\"Bold.DerivationOCL=(imeet_skidki->select(bonu' +
        's)->size+\c\l\c\limeet_tip_reklamy.tip_rekl_imeet_skidki->select' +
        '(bonus)->size)>0\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1090' '#1076#1083#1103' '#1076#1086#1083#1075#1080#1093'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45041191002E,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Opt_dlya_dolgih,Bold.ExpressionName=O' +
        'pt_dlya_dolgih,Bold.DelphiName=Opt_dlya_dolgih,\"Bold.Derivation' +
        'OCL=(imeet_skidki->select(opt_dlya_dolgih)->size+\c\limeet_tip_r' +
        'eklamy.tip_rekl_imeet_skidki->select(opt_dlya_dolgih)->size)>0\"' +
        '"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1047#1072' '#1095#1080#1089#1083' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45041191007D,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Za_chisl_strok,Bold.ExpressionName=Za' +
        '_chisl_strok,Bold.DelphiName=Za_chisl_strok,\"Bold.DerivationOCL' +
        '=(imeet_skidki->select(za_chisl_strok)->size+\c\limeet_tip_rekla' +
        'my.tip_rekl_imeet_skidki->select(za_chisl_strok)->size)>0\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1063#1080#1089#1083#1086' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504119100CB,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Chislo_strok,Bold.ExpressionName=Chis' +
        'lo_strok,Bold.DelphiName=Chislo_strok,\"Bold.DerivationOCL=imeet' +
        '_skidki->select(za_chisl_strok)->union(\c\limeet_tip_reklamy.tip' +
        '_rekl_imeet_skidki->select(za_chisl_strok))\c\l->orderby(chislo_' +
        'strok)\c\l->last.chislo_strok\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1090' '#1087#1088#1086#1094#1077#1085#1090'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450411910119,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Opt_procent,Bold.ExpressionName=Opt_p' +
        'rocent,Bold.DelphiName=Opt_procent,\"Bold.DerivationOCL=imeet_sk' +
        'idki->select(opt_dlya_dolgih)->collect(opt_procent)->union(\c\li' +
        'meet_tip_reklamy.tip_rekl_imeet_skidki->select(opt_dlya_dolgih)-' +
        '>collect(opt_procent))->maxValue\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1086#1085#1091#1089' '#1074#1099#1093#1086#1076'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450411910186,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Bonus_vyhod,Bold.ExpressionName=Bonus' +
        '_vyhod,Bold.DelphiName=Bonus_vyhod,\"Bold.DerivationOCL=imeet_sk' +
        'idki->select(bonus)->union(\c\l\c\limeet_tip_reklamy.tip_rekl_im' +
        'eet_skidki->select(bonus))\c\l->collect(bonus_vyhod)->minValue\"' +
        '"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1089#1090#1088#1086#1082#1080'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504119101E4,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Stoim_stroki,Bold.ExpressionName=Stoi' +
        'm_stroki,Bold.DelphiName=Stoim_stroki,\"Bold.DerivationOCL=imeet' +
        '_skidki->select(za_chisl_strok)->union(\c\limeet_tip_reklamy.tip' +
        '_rekl_imeet_skidki->select(za_chisl_strok))\c\l->orderby(chislo_' +
        'strok)\c\l->last.stoim_stroki\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1089#1090#1086#1080#1084' '#1087#1086' '#1074#1099#1093'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B4590157,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_stoim_po_vyh,Bold.ExpressionNam' +
        'e=Vsego_stoim_po_vyh,Bold.DelphiName=Vsego_stoim_po_vyh,Bold.Der' +
        'ivationOCL=vyhod->collect(stoim_vyhoda)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1073' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B475034B,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dob_stoim,Bold.ExpressionName=V' +
        'sego_dob_stoim,Bold.DelphiName=Vsego_dob_stoim,Bold.DerivationOC' +
        'L=imeet_stoim_dop_rab->collect(summa)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1073' '#1089#1090#1086#1080#1084' '#1087#1086' '#1074#1099#1093'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B4B800EA,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dob_stoim_po_vyh,Bold.Expressio' +
        'nName=Vsego_dob_stoim_po_vyh,Bold.DelphiName=Vsego_dob_stoim_po_' +
        'vyh,Bold.DerivationOCL=vyhod->collect(vsego_dob_stoim)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505B4D7000F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Obshaya_stoim,Bold.ExpressionName=Obs' +
        'haya_stoim,Bold.DelphiName=Obshaya_stoim,Bold.DerivationOCL=vseg' +
        'o_dob_stoim+vsego_stoim_po_vyh"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1091#1083#1077#1074#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4505D5610109,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Nulevaya_stoim,Bold.ExpressionName=Nu' +
        'levaya_stoim,Bold.DelphiName=Nulevaya_stoim,\"Bold.DerivationOCL' +
        '=if imeet_skidki->select(za_chisl_strok)->select(chislo_strok=0)' +
        '->union(\c\l\c\l\c\limeet_tip_reklamy.tip_rekl_imeet_skidki->sel' +
        'ect(za_chisl_strok)->select(chislo_strok=0))->size>0 then\c\l\c\' +
        'limeet_skidki->select(za_chisl_strok)->select(chislo_strok=0)->u' +
        'nion(\c\l\c\l\c\limeet_tip_reklamy.tip_rekl_imeet_skidki->select' +
        '(za_chisl_strok)->select(chislo_strok=0))\c\l\c\l->orderby(stoim' +
        '_stroki)->first.stoim_stroki\c\lelse\c\lNastroiki.allInstances->' +
        'first.stoim_za_stroku\c\lendif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1084' '#1086#1073#1098#1103#1074#1083'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1BDB006D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razm_objyavl,Bold.ExpressionName=Ra' +
        'zm_objyavl,Bold.DelphiName=Razm_objyavl"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CC2400AB,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CC2400FA,persistence=persistent,d' +
        'erived=False,Bold.Length=2000,Bold.ColumnName=Kommentarii,Bold.E' +
        'xpressionName=Kommentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1084#1085#1086#1078#1080#1090#1077#1083#1100'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45153232029F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Razr_mnogitelj,Bold.ExpressionName=Ra' +
        'zr_mnogitelj,Bold.DelphiName=Razr_mnogitelj,\"Bold.DerivationOCL' +
        '=if imeet_tip_reklamy<>nil then imeet_tip_reklamy.razr__mnogitel' +
        'j\c\lelse 1=0 endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1052#1085#1086#1078#1080#1090#1077#1083#1100'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515325202EE,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Mnogitelj,Bold.ExpressionName=Mnogi' +
        'telj,Bold.DelphiName=Mnogitelj"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1095#1077#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45154ACE0157,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Oplachen,Bold.ExpressionName=Oplachen' +
        ',Bold.DelphiName=Oplachen,Bold.DerivationOCL=dolg_itogo<=0"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1077' '#1074#1099#1089#1090#1072#1074#1083#1077#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45154D0302FD,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Ne_vystavlen,Bold.ExpressionName=Ne_v' +
        'ystavlen,Bold.DelphiName=Ne_vystavlen,\"Bold.DerivationOCL=(obsh' +
        'aya_stoim<\c\limeet_scheta_oplaty->collect(summa)->sum)\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1095#1077#1085#1086' '#1080#1090#1086#1075#1086'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45154F3C01E4,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Oplacheno_itogo,Bold.ExpressionName=O' +
        'placheno_itogo,Bold.DelphiName=Oplacheno_itogo,\"Bold.Derivation' +
        'OCL=imeet_oplaty->collect(summa)->sum +\c\limeet_scheta_oplaty->' +
        'select(vhodit_v_schyot.oplachen)->collect(summa)->sum\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1086#1083#1075' '#1080#1090#1086#1075#1086'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515500201C5,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Dolg_itogo,Bold.ExpressionName=Dolg_i' +
        'togo,Bold.DelphiName=Dolg_itogo,Bold.DerivationOCL=obshaya_stoim' +
        '-oplacheno_itogo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1083#1080#1095' '#1076#1086#1083#1075'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516AE96007D,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Nalich_dolg,Bold.ExpressionName=Nalic' +
        'h_dolg,Bold.DelphiName=Nalich_dolg,\"Bold.DerivationOCL=stoim_na' +
        'l\c\l\c\l-imeet_oplaty->collect(summa)->sum\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1085#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516BA1F02BF,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Stoim_nal,Bold.ExpressionName=Stoim_n' +
        'al,Bold.DelphiName=Stoim_nal,\"Bold.DerivationOCL=obshaya_stoim-' +
        '\c\l\c\limeet_scheta_oplaty->select(not vhodit_v_schyot.onulirov' +
        'an)\c\l->collect(summa)->sum\""'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44F1BD88036B,persistence=persistent,Bol' +
        'd.DelphiName=TRazreshenie,Bold.ExpressionName=Razreshenie,Bold.T' +
        'ableName=Razreshenie,Bold.InterfaceName=IRazreshenie"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F1BD980222,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj,Bold.ExpressionName=Razr' +
        'eshitj,Bold.DelphiName=Razreshitj"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1077#1081#1090#1080#1085#1075' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=450D1C8C00BB,persistence=persistent,Bol' +
        'd.DelphiName=TReiting_klienta,Bold.ExpressionName=Reiting_klient' +
        'a,Bold.TableName=Reiting_klienta,Bold.InterfaceName=IReiting_kli' +
        'enta"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1077#1081#1090#1080#1085#1075'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1C8F038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Reiting,Bold.ExpressionName=Reiting' +
        ',Bold.DelphiName=Reiting"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1CB40251,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1CC2030D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kommentarii,Bold.ExpressionName=Kom' +
        'mentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042' '#1095#1105#1088#1085#1086#1084' '#1089#1087#1080#1089#1082#1077'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D11038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=V_chyornom_spiske,Bold.ExpressionNa' +
        'me=V_chyornom_spiske,Bold.DelphiName=V_chyornom_spiske"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1086#1084#1085#1080#1090#1077#1083#1100#1085#1099#1081'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D28008C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Somniteljnyi,Bold.ExpressionName=So' +
        'mniteljnyi,Bold.DelphiName=Somniteljnyi"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1072#1078#1085#1099#1081'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D4101A5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vagnyi,Bold.ExpressionName=Vagnyi,B' +
        'old.DelphiName=Vagnyi"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1080#1074#1080#1083#1077#1075#1080#1088'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D500261,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Privilegir,Bold.ExpressionName=Priv' +
        'ilegir,Bold.DelphiName=Privilegir"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1086#1086#1090#1085' '#1089#1086' '#1089#1082#1080#1076#1082'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=450445BC02BF,persistence=persistent,Bol' +
        'd.DelphiName=TSootn_so_skidk,Bold.ExpressionName=Sootn_so_skidk,' +
        'Bold.TableName=Sootn_so_skidk,Bold.InterfaceName=ISootn_so_skidk' +
        '"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1086#1086#1090#1085' '#1090#1080#1087#1072' '#1089#1086' '#1089#1082#1080#1076#1082'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=450446290222,persistence=persistent,Bol' +
        'd.DelphiName=TSootn_tipa_so_skidk,Bold.ExpressionName=Sootn_tipa' +
        '_so_skidk,Bold.TableName=Sootn_tipa_so_skidk,Bold.InterfaceName=' +
        'ISootn_tipa_so_skidk"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D1C0A10251,persistence=persistent,Bol' +
        'd.DelphiName=TSostoyanie_kontakta,Bold.ExpressionName=Sostoyanie' +
        '_kontakta,Bold.TableName=Sostoyanie_kontakta,Bold.InterfaceName=' +
        'ISostoyanie_kontakta"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C0C5006D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C0CF0222,persistence=persistent,d' +
        'erived=False,Bold.Length=1000,Bold.ColumnName=Kommentarii,Bold.E' +
        'xpressionName=Kommentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAF6101B5,persistence=persistent,Bol' +
        'd.DelphiName=TSpravochnik,Bold.ExpressionName=Spravochnik,Bold.T' +
        'ableName=Spravochnik,Bold.InterfaceName=ISpravochnik"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAF6B02CE,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAF7A0280,persistence=persistent,d' +
        'erived=False,Bold.Length=2000,Bold.ColumnName=Kommentarii,Bold.E' +
        'xpressionName=Kommentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1089#1090#1072#1088#1077#1074#1096#1072#1103'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451425D301E4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Ustarevshaya,Bold.ExpressionName=Us' +
        'tarevshaya,Bold.DelphiName=Ustarevshaya"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1095#1105#1090'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=45089CC10119,persistence=persistent,Bol' +
        'd.DelphiName=TSchyot,Bold.ExpressionName=Schyot,Bold.TableName=S' +
        'chyot,Bold.InterfaceName=ISchyot"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1080#1089#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089CEB01A5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opisanie,Bold.ExpressionName=Opisan' +
        'ie,Bold.DelphiName=Opisanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1089#1095#1105#1090#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089CD70242,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_schyota,Bold.ExpressionName=N' +
        'omer_schyota,Bold.DelphiName=Nomer_schyota"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1091#1084#1084#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089CE001E4,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Summa,Bold.ExpressionName=Summa,Bold.' +
        'DelphiName=Summa,Bold.DerivationOCL=sostoit_iz_pozicii->collect(' +
        'summa)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1089#1090#1072#1074#1083#1077#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089CFA01C5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vystavlen,Bold.ExpressionName=Vysta' +
        'vlen,Bold.DelphiName=Vystavlen"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1095#1077#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089D06002E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Oplachen,Bold.ExpressionName=Oplach' +
        'en,Bold.DelphiName=Oplachen"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1ACF036B,persistence=persistent,d' +
        'erived=False,Bold.Length=2000,Bold.ColumnName=Primechanie,Bold.E' +
        'xpressionName=Primechanie,Bold.DelphiName=Primechanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1083' '#1087#1086' '#1087#1088#1080#1093' '#1086#1088#1076'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1B0D0138,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opl_po_prih_ord,Bold.ExpressionName' +
        '=Opl_po_prih_ord,Bold.DelphiName=Opl_po_prih_ord"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1095' '#1087#1086' '#1089#1091#1084#1084#1077'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1B59035B,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Oplach_po_summe,Bold.ExpressionName=O' +
        'plach_po_summe,Bold.DelphiName=Oplach_po_summe,Bold.DerivationOC' +
        'L=summa<=(vklyuchaet_oplatu->collect(summa)->sum)"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1085#1091#1083#1080#1088#1086#1074#1072#1085'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516AF73037A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Onulirovan,Bold.ExpressionName=Onul' +
        'irovan,Bold.DelphiName=Onulirovan"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516AF8801F4,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data,Bold.Expre' +
        'ssionName=Data,Bold.DelphiName=Data"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1069#1092#1092#1077#1082#1090'"'
      #9#9#9'"BusinessClassesRoot"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D1C303007D,persistence=persistent,Bol' +
        'd.DelphiName=TEffekt,Bold.ExpressionName=Effekt,Bold.TableName=E' +
        'ffekt,Bold.InterfaceName=IEffekt"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C31500FA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C3150109,persistence=persistent,d' +
        'erived=False,Bold.Length=1000,Bold.ColumnName=Kommentarii,Bold.E' +
        'xpressionName=Kommentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1077#1089#1105#1090' '#1087#1088#1086#1077#1082#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D7146E00EA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nesyot_proekt,Bold.ExpressionName=N' +
        'esyot_proekt,Bold.DelphiName=Nesyot_proekt"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1077#1089#1105#1090' '#1076#1086#1082#1091#1084#1077#1085#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D714780109,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nesyot_dokument,Bold.ExpressionName' +
        '=Nesyot_dokument,Bold.DelphiName=Nesyot_dokument"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      #9#9#9'"'#1055#1077#1088#1089#1086#1085#1072'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAEF3007D,persistence=persistent,Bol' +
        'd.DelphiName=TOrganizaciya,Bold.ExpressionName=Organizaciya,Bold' +
        '.TableName=Organizaciya,Bold.InterfaceName=IOrganizaciya"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1088#1072#1085#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"'#1056#1086#1089#1089#1080#1103' ('#1056#1060')"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3007F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Strana,Bold.ExpressionName=Strana,B' +
        'old.DelphiName=Strana,Bold.DefaultDBValue='#39#1056#1086#1089#1089#1080#1103#39'"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1073#1083#1072#1089#1090#1100'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"'#1050#1088#1072#1089#1085#1086#1076#1072#1088#1089#1082#1080#1081' '#1082#1088#1072#1081'"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30080,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Oblastj,Bold.ExpressionName=Oblastj' +
        ',Bold.DelphiName=Oblastj,\"Bold.DefaultDBValue='#39#1050#1088#1072#1089#1085#1086#1076#1072#1088#1089#1082#1080#1081' '#1082#1088 +
        #1072#1081#39'\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1043#1086#1088#1086#1076'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"'#1040#1085#1072#1087#1072'"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30081,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Gorod,Bold.ExpressionName=Gorod,Bol' +
        'd.DelphiName=Gorod,Bold.DefaultDBValue='#39#1040#1085#1072#1087#1072#39'"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1048#1050'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30082,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=BIK,Bold.ExpressionName=BIK,Bold.De' +
        'lphiName=BIK"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30083,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naimenovanie,Bold.ExpressionName=Na' +
        'imenovanie,Bold.DelphiName=Naimenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1071#1074#1083#1103#1077#1090#1089#1103#1042#1083#1072#1076'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30084,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=YavlyaetsyaVlad,Bold.ExpressionName' +
        '=YavlyaetsyaVlad,Bold.DelphiName=YavlyaetsyaVlad"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30085,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Rukovoditelj,Bold.ExpressionName=Ru' +
        'kovoditelj,Bold.DelphiName=Rukovoditelj"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1043#1083#1041#1091#1093#1075#1072#1083#1090#1077#1088'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30086,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=GlBuhgalter,Bold.ExpressionName=GlB' +
        'uhgalter,Bold.DelphiName=GlBuhgalter"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1053#1053'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30087,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=INN,Bold.ExpressionName=INN,Bold.De' +
        'lphiName=INN"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1089#1095'. '#1089#1095#1077#1090'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30088,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Rasch._schet,Bold.ExpressionName=Ra' +
        'sch._schet,Bold.DelphiName=Rasch._schet"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1055#1055'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30089,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=KPP,Bold.ExpressionName=KPP,Bold.De' +
        'lphiName=KPP"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1080#1087' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3008A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Tip_organizacii,Bold.ExpressionName' +
        '=Tip_organizacii,Bold.DelphiName=Tip_organizacii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1088' '#1089#1095#1077#1090'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3008B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kor_schet,Bold.ExpressionName=Kor_s' +
        'chet,Bold.DelphiName=Kor_schet"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084'. '#1073#1072#1085#1082#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3008C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Naim._banka,Bold.ExpressionName=Nai' +
        'm._banka,Bold.DelphiName=Naim._banka"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1077#1083#1077#1092#1086#1085' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF0E038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Telefon_buhgaltera,Bold.ExpressionN' +
        'ame=Telefon_buhgaltera,Bold.DelphiName=Telefon_buhgaltera"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1077#1083#1077#1092#1086#1085' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF2101F4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Telefon_rukovoditelya,Bold.Expressi' +
        'onName=Telefon_rukovoditelya,Bold.DelphiName=Telefon_rukovoditel' +
        'ya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1077#1083#1077#1092' '#1084#1077#1085#1077#1076#1078#1077#1088#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF3002BF,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Telef_menedgera,Bold.ExpressionName' +
        '=Telef_menedgera,Bold.DelphiName=Telef_menedgera"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1080#1087' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'"'#1054#1054#1054'"'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF88033C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Tip_sobstvennosti,Bold.ExpressionNa' +
        'me=Tip_sobstvennosti,Bold.DelphiName=Tip_sobstvennosti"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1040#1076#1088#1077#1089' '#1089#1072#1081#1090#1072'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499002C002E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Adres_saita,Bold.ExpressionName=Adr' +
        'es_saita,Bold.DelphiName=Adres_saita"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1074#1099#1093#1086#1076#1080#1090#1100'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D71931005D,persistence=persistent,Bol' +
        'd.DelphiName=TRazreshenie_vyhoditj,Bold.ExpressionName=Razreshen' +
        'ie_vyhoditj,Bold.TableName=Razreshenie_vyhoditj,Bold.InterfaceNa' +
        'me=IRazreshenie_vyhoditj"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1087#1088#1086#1089#1084#1072#1090#1088#1080#1074#1072#1090#1100'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D7195F007D,persistence=persistent,Bol' +
        'd.DelphiName=TRazreshenie_prosmatrivatj,Bold.ExpressionName=Razr' +
        'eshenie_prosmatrivatj,Bold.TableName=Razreshenie_prosmatrivatj,B' +
        'old.InterfaceName=IRazreshenie_prosmatrivatj"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1091#1089#1090#1072#1085#1072#1074#1083'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D718D70203,persistence=persistent,Bol' +
        'd.DelphiName=TRazreshenie_ustanavl,Bold.ExpressionName=Razreshen' +
        'ie_ustanavl,Bold.TableName=Razreshenie_ustanavl,Bold.InterfaceNa' +
        'me=IRazreshenie_ustanavl"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E9899602AF,persistence=persistent,Bol' +
        'd.DelphiName=TAbstraktnyi_standart,Bold.ExpressionName=Abstraktn' +
        'yi_standart,Bold.TableName=Abstraktnyi_standart,Bold.InterfaceNa' +
        'me=IAbstraktnyi_standart"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1076'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E989D10242,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kod,Bold.ExpressionName=Kod,Bold.De' +
        'lphiName=Kod"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44F41AA5006D,persistence=persistent,Bol' +
        'd.DelphiName=TDobavochnaya_stoim,Bold.ExpressionName=Dobavochnay' +
        'a_stoim,Bold.TableName=Dobavochnaya_stoim,Bold.InterfaceName=IDo' +
        'bavochnaya_stoim"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1091#1084#1084#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41AB90290,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Summa,Bold.ExpressionName=Summa,Bol' +
        'd.DelphiName=Summa"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1044#1086#1083#1078#1085#1086#1089#1090#1100'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAF000271,persistence=persistent,Bol' +
        'd.DelphiName=TDolgnostj,Bold.ExpressionName=Dolgnostj,Bold.Table' +
        'Name=Dolgnostj,Bold.InterfaceName=IDolgnostj"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E430470214,persistence=persistent,Bol' +
        'd.DelphiName=TZadacha,Bold.ExpressionName=Zadacha,Bold.TableName' +
        '=Zadacha,Bold.InterfaceName=IZadacha"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E43058004F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Imenovanie,Bold.ExpressionName=Imen' +
        'ovanie,Bold.DelphiName=Imenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1087#1086#1083#1085#1077#1085#1072'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E431510020,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vypolnena,Bold.ExpressionName=Vypol' +
        'nena,Bold.DelphiName=Vypolnena"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1095#1072#1083#1086' '#1087#1083#1072#1085'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E432470272,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Nachalo_plan,Bo' +
        'ld.ExpressionName=Nachalo_plan,Bold.DelphiName=Nachalo_plan"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1085#1077#1094' '#1087#1083#1072#1085'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4325F0030,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Konec_plan,Bold' +
        '.ExpressionName=Konec_plan,Bold.DelphiName=Konec_plan"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1095#1072#1083#1086' '#1092#1072#1082#1090'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4326000EC,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Nachalo_fakt,Bo' +
        'ld.ExpressionName=Nachalo_fakt,Bold.DelphiName=Nachalo_fakt"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1085#1077#1094' '#1092#1072#1082#1090'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4326101B7,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Konec_fakt,Bold' +
        '.ExpressionName=Konec_fakt,Bold.DelphiName=Konec_fakt"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1048#1079#1076#1072#1085#1080#1077'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447D5A5E0157,persistence=persistent,Bol' +
        'd.DelphiName=TIzdanie,Bold.ExpressionName=Izdanie,Bold.TableName' +
        '=Izdanie,Bold.InterfaceName=IIzdanie"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=4499085A02DE,persistence=persistent,Bol' +
        'd.DelphiName=TKontakt,Bold.ExpressionName=Kontakt,Bold.TableName' +
        '=Kontakt,Bold.InterfaceName=IKontakt"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1077#1079#1091#1083#1100#1090#1072#1090'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449908630109,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Rezuljtat,Bold.ExpressionName=Rezul' +
        'jtat,Bold.DelphiName=Rezuljtat"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1086#1075' '#1085#1072' '#1088#1072#1079#1084' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449916A4038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Dog_na_razm_reklamy,Bold.Expression' +
        'Name=Dog_na_razm_reklamy,Bold.DelphiName=Dog_na_razm_reklamy"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E0438F003E,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data,Bold.Expre' +
        'ssionName=Data,Bold.DelphiName=Data"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E430700169,persistence=persistent,Bol' +
        'd.DelphiName=TNapominanie,Bold.ExpressionName=Napominanie,Bold.T' +
        'ableName=Napominanie,Bold.InterfaceName=INapominanie"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4308F007E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Imenovanie,Bold.ExpressionName=Imen' +
        'ovanie,Bold.DelphiName=Imenovanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1095#1090#1077#1085#1086'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4316502A1,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Uchteno,Bold.ExpressionName=Uchteno' +
        ',Bold.DelphiName=Uchteno"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E4323002C0,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data,Bold.Expre' +
        'ssionName=Data,Bold.DelphiName=Data"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1074#1099#1095'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45187AEC01A5,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Data_vych,Bold.ExpressionName=Data_vy' +
        'ch,Bold.DelphiName=Data_vych"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072#1080#1084' '#1074#1099#1095'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45187B0F0167,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Naim_vych,Bold.ExpressionName=Naim_vy' +
        'ch,Bold.DelphiName=Naim_vych"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1090' '#1082#1072#1084#1087'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45187B32001F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Ot_kamp,Bold.ExpressionName=Ot_kamp,B' +
        'old.DelphiName=Ot_kamp"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1086#1079#1080#1094' '#1089#1095#1090#1072'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=4513CF8101F4,persistence=persistent,Bol' +
        'd.DelphiName=TPozic_schta,Bold.ExpressionName=Pozic_schta,Bold.T' +
        'ableName=Pozic_schta,Bold.InterfaceName=IPozic_schta"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1091#1084#1084#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CF8F037A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Summa,Bold.ExpressionName=Summa,Bol' +
        'd.DelphiName=Summa"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1076#1077#1083' '#1080#1079#1076#1072#1085#1080#1103'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447D5A47003E,persistence=persistent,Bol' +
        'd.DelphiName=TRazdel_izdaniya,Bold.ExpressionName=Razdel_izdaniy' +
        'a,Bold.TableName=Razdel_izdaniya,Bold.InterfaceName=IRazdel_izda' +
        'niya"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449904FF031C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Obshaya_ploshadj,Bold.ExpressionNam' +
        'e=Obshaya_ploshadj,Bold.DelphiName=Obshaya_ploshadj"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1047#1072#1085#1103#1090#1086' '#1087#1083#1086#1097#1072#1076#1080'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449905100290,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Zanyato_ploshadi,Bold.ExpressionName=' +
        'Zanyato_ploshadi,Bold.DelphiName=Zanyato_ploshadi,\"Bold.Derivat' +
        'ionOCL=if otnositsya_k_izd<>nil then\c\lif otnositsya_k_izd.imee' +
        't_tekushii_vypusk<>nil then\c\lyavl_mestom_reklamy.vyhod\c\l->se' +
        'lect(vyhodit_v_vypuskah=self.otnositsya_k_izd.imeet_tekushii_vyp' +
        'usk).\c\limeet_razmesheniya->collect(ploshadj)->sum\c\lelse 0.0 ' +
        'endif\c\lelse 0.0 endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1074#1086#1073#1086#1076#1085#1086' '#1087#1083#1086#1097#1072#1076#1080'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499051A02EE,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Svobodno_ploshadi,Bold.ExpressionName' +
        '=Svobodno_ploshadi,Bold.DelphiName=Svobodno_ploshadi,Bold.Deriva' +
        'tionOCL=obshaya_ploshadj-zanyato_ploshadi"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088#1072' '#1089#1090#1088#1072#1085#1080#1094'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCC45001B3,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomera_stranic,Bold.ExpressionName=' +
        'Nomera_stranic,Bold.DelphiName=Nomera_stranic"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099' '#1080#1079#1076#1072#1085#1080#1103'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44BCC46900C8,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Nomer_karty_izdaniya,Bold.Expressio' +
        'nName=Nomer_karty_izdaniya,Bold.DelphiName=Nomer_karty_izdaniya"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1072#1079#1084#1077#1088#1099'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447D5B470157,persistence=persistent,Bol' +
        'd.DelphiName=TRazmery,Bold.ExpressionName=Razmery,Bold.TableName' +
        '=Razmery,Bold.InterfaceName=IRazmery"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1099#1089#1086#1090#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5B610232,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vysota,Bold.ExpressionName=Vysota,B' +
        'old.DelphiName=Vysota"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1064#1080#1088#1080#1085#1072'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5B6C0242,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Shirina,Bold.ExpressionName=Shirina' +
        ',Bold.DelphiName=Shirina"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1083#1086#1097#1072#1076#1100'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5C1B0196,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Ploshadj,Bold.ExpressionName=Ploshadj' +
        ',Bold.DelphiName=Ploshadj,Bold.DerivationOCL=vysota*shirina"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1082#1080#1076#1082#1072'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44F41C71038A,persistence=persistent,Bol' +
        'd.DelphiName=TSkidka,Bold.ExpressionName=Skidka,Bold.TableName=S' +
        'kidka,Bold.InterfaceName=ISkidka"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1086#1085#1091#1089'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C8000CB,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Bonus,Bold.ExpressionName=Bonus,Bol' +
        'd.DelphiName=Bonus"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1090' '#1076#1083#1103' '#1076#1086#1083#1075#1080#1093'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41C92038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opt_dlya_dolgih,Bold.ExpressionName' +
        '=Opt_dlya_dolgih,Bold.DelphiName=Opt_dlya_dolgih"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1047#1072' '#1095#1080#1089#1083' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41CAD000F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Za_chisl_strok,Bold.ExpressionName=' +
        'Za_chisl_strok,Bold.DelphiName=Za_chisl_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1063#1080#1089#1083#1086' '#1089#1090#1088#1086#1082'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41CC900EA,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Chislo_strok,Bold.ExpressionName=Ch' +
        'islo_strok,Bold.DelphiName=Chislo_strok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1054#1087#1090' '#1087#1088#1086#1094#1077#1085#1090'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41CDD0399,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Opt_procent,Bold.ExpressionName=Opt' +
        '_procent,Bold.DelphiName=Opt_procent"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1041#1086#1085#1091#1089' '#1074#1099#1093#1086#1076'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41CF4029F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Bonus_vyhod,Bold.ExpressionName=Bon' +
        'us_vyhod,Bold.DelphiName=Bonus_vyhod"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084' '#1089#1090#1088#1086#1082#1080'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504115F001F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Stoim_stroki,Bold.ExpressionName=St' +
        'oim_stroki,Bold.DelphiName=Stoim_stroki"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504835D02AF,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Avtomaticheski,Bold.ExpressionName=' +
        'Avtomaticheski,Bold.DelphiName=Avtomaticheski"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1087#1077#1094#1080#1092' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=4498FF4700AB,persistence=persistent,Bol' +
        'd.DelphiName=TSpecif_organizacii,Bold.ExpressionName=Specif_orga' +
        'nizacii,Bold.TableName=Specif_organizacii,Bold.InterfaceName=ISp' +
        'ecif_organizacii"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1086#1080#1084#1086#1089#1090#1100'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447D5B9F0167,persistence=persistent,Bol' +
        'd.DelphiName=TStoimostj,Bold.ExpressionName=Stoimostj,Bold.Table' +
        'Name=Stoimostj,Bold.InterfaceName=IStoimostj"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084#1086#1089#1090#1100' 1 '#1082#1074' '#1089#1084'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5BAF01F4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Stoimostj_1_kv_sm,Bold.ExpressionNa' +
        'me=Stoimostj_1_kv_sm,Bold.DelphiName=Stoimostj_1_kv_sm"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1058#1080#1087' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D23E0E005D,persistence=persistent,Bol' +
        'd.DelphiName=TTip_kontakta,Bold.ExpressionName=Tip_kontakta,Bold' +
        '.TableName=Tip_kontakta,Bold.InterfaceName=ITip_kontakta"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"Eng_description"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D23E6702BF,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Eng_description,Bold.ExpressionName' +
        '=Eng_description,Bold.DelphiName=Eng_description"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1058#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44991CA90138,persistence=persistent,Bol' +
        'd.DelphiName=TTip_reklamy,Bold.ExpressionName=Tip_reklamy,Bold.T' +
        'ableName=Tip_reklamy,Bold.InterfaceName=ITip_reklamy"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504914A01A5,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Avtomaticheski,Bold.ExpressionName=' +
        'Avtomaticheski,Bold.DelphiName=Avtomaticheski"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088'. '#1084#1085#1086#1078#1080#1090#1077#1083#1100'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45153217004E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr._mnogitelj,Bold.ExpressionName' +
        '=Razr._mnogitelj,Bold.DelphiName=Razr._mnogitelj"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1059#1089#1083#1086#1074#1080#1103'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E42C1303DA,persistence=persistent,Bol' +
        'd.DelphiName=TUsloviya,Bold.ExpressionName=Usloviya,Bold.TableNa' +
        'me=Usloviya,Bold.InterfaceName=IUsloviya"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1089#1083#1086#1074#1085#1086#1077' '#1085#1072#1079#1074'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E42C6C0030,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Uslovnoe_nazv,Bold.ExpressionName=U' +
        'slovnoe_nazv,Bold.DelphiName=Uslovnoe_nazv"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1088#1072#1073#1086#1090#1072#1083#1086'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E99B5700AB,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Srabotalo,Bold.ExpressionName=Srabo' +
        'talo,Bold.DelphiName=Srabotalo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1103'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E99B72003E,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data_srabatyvan' +
        'iya,Bold.ExpressionName=Data_srabatyvaniya,Bold.DelphiName=Data_' +
        'srabatyvaniya"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9'"'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=45089E2401B5,persistence=persistent,Bol' +
        'd.DelphiName=THarakteristika_klienta,Bold.ExpressionName=Harakte' +
        'ristika_klienta,Bold.TableName=Harakteristika_klienta,Bold.Inter' +
        'faceName=IHarakteristika_klienta"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1063#1077#1088#1085#1099#1081' '#1089#1087#1080#1089#1086#1082'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089E3502AF,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Chernyi_spisok,Bold.ExpressionName=' +
        'Chernyi_spisok,Bold.DelphiName=Chernyi_spisok"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1072#1078#1085#1099#1081' '#1082#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089E48004E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Vagnyi_klient,Bold.ExpressionName=V' +
        'agnyi_klient,Bold.DelphiName=Vagnyi_klient"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1086#1089#1090#1086#1103#1085#1085#1099#1081' '#1082#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089E660157,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Postoyannyi_klient,Bold.ExpressionN' +
        'ame=Postoyannyi_klient,Bold.DelphiName=Postoyannyi_klient"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1059#1074#1072#1078#1072#1077#1084#1099#1081' '#1082#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089E7B03A9,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Uvagaemyi_klient,Bold.ExpressionNam' +
        'e=Uvagaemyi_klient,Bold.DelphiName=Uvagaemyi_klient"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9'"'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAEF3009E,persistence=persistent,Bol' +
        'd.DelphiName=TKlient,Bold.ExpressionName=Klient,Bold.TableName=K' +
        'lient,Bold.InterfaceName=IKlient"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1071#1074#1083' '#1102#1088' '#1083#1080#1094#1086#1084'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3009F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Yavl_yur_licom,Bold.ExpressionName=' +
        'Yavl_yur_licom,Bold.DelphiName=Yavl_yur_licom"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1084#1077#1085#1086#1074#1072#1085#1080#1077'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF300A0,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Imenovanie,Bold.ExpressionName=Imenov' +
        'anie,Bold.DelphiName=Imenovanie,\"Bold.DerivationOCL=if yavl_yur' +
        '_licom then naimenovanie else polnoe_imya endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1040#1076#1088#1077#1089'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF300A1,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Adres,Bold.ExpressionName=Adres,Bold.' +
        'DelphiName=Adres,\"Bold.DerivationOCL=if (ulica='#39#39') or (dom.asSt' +
        'ring='#39#39') then '#39#39' else ulica+'#39', '#39'+ dom.asString endif\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1058#1077#1083#1077#1092#1086#1085#1099'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF300A2,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Telefony,Bold.ExpressionName=Telefony' +
        ',Bold.DelphiName=Telefony,\"Bold.DerivationOCL=mobiljnyi_telefon' +
        '+if domashnii_telefon='#39#39' then '#39#39' else '#39' '#39'+domashnii_telefon endi' +
        'f + if rabochii_telefon='#39#39' then '#39#39' else '#39' '#39'+rabochii_telefon end' +
        'if\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1053#1072' '#1087#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FFB101E4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Na_perspektive,Bold.ExpressionName=' +
        'Na_perspektive,Bold.DelphiName=Na_perspektive"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1076#1077#1085#1090' '#1092#1086#1090#1086' '#1083#1080#1094#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FFCE032C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Ident_foto_lica,Bold.ExpressionName' +
        '=Ident_foto_lica,Bold.DelphiName=Ident_foto_lica"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1088#1080#1089#1091#1085#1082#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44993471007D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Identifikator_risunka,Bold.Expressi' +
        'onName=Identifikator_risunka,Bold.DelphiName=Identifikator_risun' +
        'ka"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1083#1075'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991D1D0261,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dolg,Bold.ExpressionName=Vsego_' +
        'dolg,Bold.DelphiName=Vsego_dolg,Bold.DerivationOCL=vsego_dolg_be' +
        'znal+vsego_dolg_nal"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1086#1087#1083#1072#1090#1080#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991D270399,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_oplatil,Bold.ExpressionName=Vse' +
        'go_oplatil,Bold.DelphiName=Vsego_oplatil,Bold.DerivationOCL=vseg' +
        'o_oplatil_beznal+vsego_oplatil_nal"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1079#1072#1082#1072#1079#1099#1074#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991D7800DA,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_zakazyval,Bold.ExpressionName=V' +
        'sego_zakazyval,Bold.DelphiName=Vsego_zakazyval,Bold.DerivationOC' +
        'L=razmeshaet_reklamu->collect(obshaya_stoim)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1083#1080#1095' '#1079#1072#1082#1072#1079#1086#1074'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1C5300BB,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Kolich_zakazov,Bold.ExpressionName=Ko' +
        'lich_zakazov,Bold.DelphiName=Kolich_zakazov,Bold.DerivationOCL=r' +
        'azmeshaet_reklamu->size"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1072#1090#1072' '#1079#1072#1074#1077#1076#1077#1085#1080#1103'"'
      #9#9#9#9#9'"DateTime"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451054CF0242,persistence=persistent,d' +
        'erived=False,Bold.AllowNULL=True,Bold.ColumnName=Data_zavedeniya' +
        ',Bold.ExpressionName=Data_zavedeniya,Bold.DelphiName=Data_zavede' +
        'niya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451418BF03B9,persistence=persistent,d' +
        'erived=False,Bold.Length=8000,Bold.ColumnName=Dopolniteljno,Bold' +
        '.ExpressionName=Dopolniteljno,Bold.DelphiName=Dopolniteljno"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1062#1077#1083#1077#1074#1086#1081'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45142771004E,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Celevoi,Bold.ExpressionName=Celevoi' +
        ',Bold.DelphiName=Celevoi"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1083#1075' '#1073#1077#1079#1085#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516B154003E,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dolg_beznal,Bold.ExpressionName' +
        '=Vsego_dolg_beznal,Bold.DelphiName=Vsego_dolg_beznal,\"Bold.Deri' +
        'vationOCL=reklama_vhod_v_schyot->select(not (oplachen or onuliro' +
        'van))->collect(summa)->sum\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1076#1086#1083#1075' '#1085#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516B16B031C,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_dolg_nal,Bold.ExpressionName=Vs' +
        'ego_dolg_nal,Bold.DelphiName=Vsego_dolg_nal,Bold.DerivationOCL=r' +
        'azmeshaet_reklamu->collect(nalich_dolg)->sum"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1086#1087#1083#1072#1090#1080#1083' '#1085#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516B1800000,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_oplatil_nal,Bold.ExpressionName' +
        '=Vsego_oplatil_nal,Bold.DelphiName=Vsego_oplatil_nal,\"Bold.Deri' +
        'vationOCL=vnosit_oplaty->select(not bez_nal)->collect(summa)->su' +
        'm\""'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077#1075#1086' '#1086#1087#1083#1072#1090#1080#1083' '#1073#1077#1079#1085#1072#1083'"'
      #9#9#9#9#9'"Double"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516B18D000F,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vsego_oplatil_beznal,Bold.ExpressionN' +
        'ame=Vsego_oplatil_beznal,Bold.DelphiName=Vsego_oplatil_beznal,Bo' +
        'ld.DerivationOCL=vnosit_oplaty->select(bez_nal)->collect(summa)-' +
        '>sum"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9'"'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=447AAEF3005D,persistence=persistent,Bol' +
        'd.DelphiName=TPersonal,Bold.ExpressionName=Personal,Bold.TableNa' +
        'me=Personal,Bold.InterfaceName=IPersonal"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1051#1086#1075#1080#1085'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3005F,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Login,Bold.ExpressionName=Login,Bol' +
        'd.DelphiName=Login"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1072#1088#1086#1083#1100'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30060,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Parolj,Bold.ExpressionName=Parolj,B' +
        'old.DelphiName=Parolj"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1072#1074#1072'"'
      #9#9#9#9#9'"Integer"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30061,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Prava,Bold.ExpressionName=Prava,Bol' +
        'd.DelphiName=Prava"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30062,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Kommentarii,Bold.ExpressionName=Kom' +
        'mentarii,Bold.DelphiName=Kommentarii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1074#1089#1105'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30063,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_vsyo,Bold.ExpressionName' +
        '=Razreshitj_vsyo,Bold.DelphiName=Razreshitj_vsyo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096' '#1072#1076#1084#1080#1085#1080#1089#1090#1088'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30064,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razresh_administr,Bold.ExpressionNa' +
        'me=Razresh_administr,Bold.DelphiName=Razresh_administr"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096' '#1085#1072#1089#1090#1088#1086#1081#1082#1091' '#1088#1072#1073#1086#1090#1099'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30065,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razresh_nastroiku_raboty,Bold.Expre' +
        'ssionName=Razresh_nastroiku_raboty,Bold.DelphiName=Razresh_nastr' +
        'oiku_raboty"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1083#1086#1075#1086#1074'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30066,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_prosmotr_logov,Bold.Expr' +
        'essionName=Razreshitj_prosmotr_logov,Bold.DelphiName=Razreshitj_' +
        'prosmotr_logov"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1091#1076#1072#1083#1077#1085#1080#1077' '#1080#1079#1076#1072#1085#1080#1081'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30067,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_udalenie_izdanii,Bold.Expressi' +
        'onName=Razr_udalenie_izdanii,Bold.DelphiName=Razr_udalenie_izdan' +
        'ii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077' '#1074#1099#1087#1091#1089#1082#1086#1074'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30068,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_udalenie_vypuskov,Bold.E' +
        'xpressionName=Razreshitj_udalenie_vypuskov,Bold.DelphiName=Razre' +
        'shitj_udalenie_vypuskov"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1091#1076#1072#1083#1077#1085#1080#1077' '#1088#1072#1079#1076#1077#1083#1086#1074'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30069,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_udalenie_razdelov,Bold.Express' +
        'ionName=Razr_udalenie_razdelov,Bold.DelphiName=Razr_udalenie_raz' +
        'delov"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3006A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_udalenie_objyavlenii,Bol' +
        'd.ExpressionName=Razreshitj_udalenie_objyavlenii,Bold.DelphiName' +
        '=Razreshitj_udalenie_objyavlenii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077' '#1086#1089#1090#1072#1083#1100#1085#1086#1075#1086'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3006B,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_udalenie_ostaljnogo,Bold' +
        '.ExpressionName=Razreshitj_udalenie_ostaljnogo,Bold.DelphiName=R' +
        'azreshitj_udalenie_ostaljnogo"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1087#1088#1072#1074' '#1088#1077#1076#1082#1086#1084#1077#1085' '#1089#1087#1088#1072#1074'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3006C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_prav_redkomen_sprav,Bold.Expre' +
        'ssionName=Razr_prav_redkomen_sprav,Bold.DelphiName=Razr_prav_red' +
        'komen_sprav"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1087#1088#1072#1074' '#1086#1087#1077#1088' '#1088#1072#1079#1076#1077#1083#1086#1074'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF3006D,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_prav_oper_razdelov,Bold.Expres' +
        'sionName=Razr_prav_oper_razdelov,Bold.DelphiName=Razr_prav_oper_' +
        'razdelov"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1057#1086#1082#1088' '#1080#1084#1103'"'
      #9#9#9#9#9'"String"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1A140399,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Sokr_imya,Bold.ExpressionName=Sokr_' +
        'imya,Bold.DelphiName=Sokr_imya"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1089#1084#1086#1090#1088' '#1094#1077#1085#1099'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451055E0038A,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_smotr_ceny,Bold.Expressi' +
        'onName=Razreshitj_smotr_ceny,Bold.DelphiName=Razreshitj_smotr_ce' +
        'ny"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1092#1086#1088#1084#1080#1088' '#1080#1079#1076#1072#1085#1080#1077'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451056070261,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_formir_izdanie,Bold.Expr' +
        'essionName=Razreshitj_formir_izdanie,Bold.DelphiName=Razreshitj_' +
        'formir_izdanie"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1089' '#1090#1080#1087#1072#1084#1080'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451056370271,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_rabotu_s_tipami,Bold.Exp' +
        'ressionName=Razreshitj_rabotu_s_tipami,Bold.DelphiName=Razreshit' +
        'j_rabotu_s_tipami"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1085#1072#1089#1090#1088' CRM"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4510566C01F4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_nastr_CRM,Bold.ExpressionName=' +
        'Razr_nastr_CRM,Bold.DelphiName=Razr_nastr_CRM"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096' '#1088#1072#1073' '#1089' '#1088#1077#1082#1083' '#1082#1072#1084#1087'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4510569001D4,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razresh_rab_s_rekl_kamp,Bold.Expres' +
        'sionName=Razresh_rab_s_rekl_kamp,Bold.DelphiName=Razresh_rab_s_r' +
        'ekl_kamp"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1087#1088#1086#1089#1084' '#1080#1089#1090#1086#1088#1080#1080'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=451056B902CE,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_prosm_istorii,Bold.ExpressionN' +
        'ame=Razr_prosm_istorii,Bold.DelphiName=Razr_prosm_istorii"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088' '#1091#1076#1072#1083#1103#1090#1100' '#1089#1095#1077#1090#1072'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516AFD20261,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razr_udalyatj_scheta,Bold.Expressio' +
        'nName=Razr_udalyatj_scheta,Bold.DelphiName=Razr_udalyatj_scheta"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1076#1072#1083#1103#1090#1100' '#1082#1086#1085#1090#1072#1082#1090#1099'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516B1E90271,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Razreshitj_udalyatj_kontakty,Bold.E' +
        'xpressionName=Razreshitj_udalyatj_kontakty,Bold.DelphiName=Razre' +
        'shitj_udalyatj_kontakty"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1056#1077#1072#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E9B63F035B,persistence=persistent,Bol' +
        'd.DelphiName=TRealjnaya_prichina,Bold.ExpressionName=Realjnaya_p' +
        'richina,Bold.TableName=Realjnaya_prichina,Bold.InterfaceName=IRe' +
        'aljnaya_prichina"'
      #9#9#9'(Attributes'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1042#1089#1077' '#1091#1089#1083#1086#1074' '#1089#1088#1072#1073'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E9B7390138,persistence=transient,de' +
        'rived=True,Bold.ColumnName=Vse_uslov_srab,Bold.ExpressionName=Vs' +
        'e_uslov_srab,Bold.DelphiName=Vse_uslov_srab"'
      #9#9#9#9')'
      #9#9#9#9'(Attribute'
      #9#9#9#9#9'"'#1055#1088#1080#1095#1080#1085#1072' '#1085#1072#1079#1088#1077#1083#1072'"'
      #9#9#9#9#9'"Boolean"'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'""'
      #9#9#9#9#9'""'
      #9#9#9#9#9'2'
      #9#9#9#9#9'""'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E9B741033C,persistence=persistent,d' +
        'erived=False,Bold.ColumnName=Prichina_nazrela,Bold.ExpressionNam' +
        'e=Prichina_nazrela,Bold.DelphiName=Prichina_nazrela"'
      #9#9#9#9')'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1079#1072#1076#1072#1095#1072'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E9897C01A5,persistence=persistent,Bol' +
        'd.DelphiName=TStandartnaya_zadacha,Bold.ExpressionName=Standartn' +
        'aya_zadacha,Bold.TableName=Standartnaya_zadacha,Bold.InterfaceNa' +
        'me=IStandartnaya_zadacha"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44F1C181030D,persistence=persistent,Bol' +
        'd.DelphiName=TStandartnaya_prichina,Bold.ExpressionName=Standart' +
        'naya_prichina,Bold.TableName=Standartnaya_prichina,Bold.Interfac' +
        'eName=IStandartnaya_prichina"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E9896503D8,persistence=persistent,Bol' +
        'd.DelphiName=TStandartnoe_napominanie,Bold.ExpressionName=Standa' +
        'rtnoe_napominanie,Bold.TableName=Standartnoe_napominanie,Bold.In' +
        'terfaceName=IStandartnoe_napominanie"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1091#1089#1083#1086#1074#1080#1077'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44E989400196,persistence=persistent,Bol' +
        'd.DelphiName=TStandartnoe_uslovie,Bold.ExpressionName=Standartno' +
        'e_uslovie,Bold.TableName=Standartnoe_uslovie,Bold.InterfaceName=' +
        'IStandartnoe_uslovie"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9#9'(Class'
      #9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1101#1092#1092#1077#1082#1090'"'
      #9#9#9'"'#1040#1073#1089#1090#1088#1072#1082#1090#1085#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090'"'
      #9#9#9'TRUE'
      #9#9#9'FALSE'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"_BoldInternal.toolId=44D714F103C8,persistence=persistent,Bol' +
        'd.DelphiName=TStandartnyi_effekt,Bold.ExpressionName=Standartnyi' +
        '_effekt,Bold.TableName=Standartnyi_effekt,Bold.InterfaceName=ISt' +
        'andartnyi_effekt"'
      #9#9#9'(Attributes'
      #9#9#9')'
      #9#9#9'(Methods'
      #9#9#9')'
      #9#9')'
      #9')'
      #9'(Associations'
      #9#9'(Association'
      #9#9#9'"'#1086#1090' '#1076#1077#1081#1089#1090#1074#1080#1081#1076#1077#1081#1089#1090#1074#1080#1103' '#1092#1080#1082#1089#1080#1088#1091#1102#1090#1089#1103' '#1074'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447AAEF3006F,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkot_deistviideistviya_fiksiruyutsya_v"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090' '#1076#1077#1081#1089#1090#1074#1080#1081'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1051#1086#1075' '#1086#1087#1077#1088#1072#1094#1080#1080'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30070,Bold.ColumnName=ot_deist' +
        'vii,Bold.ExpressionName=ot_deistvii,Bold.DelphiName=ot_deistvii"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1076#1077#1081#1089#1090#1074#1080#1103' '#1092#1080#1082#1089#1080#1088#1091#1102#1090#1089#1103' '#1074'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAEF30071,Bold.ColumnName=deistviy' +
        'a_fiksiruyutsya_v,Bold.ExpressionName=deistviya_fiksiruyutsya_v,' +
        'Bold.DelphiName=deistviya_fiksiruyutsya_v,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1088#1072#1073#1086#1090#1072#1077#1090' '#1085#1072' '#1076#1086#1083#1078#1085#1086#1087#1088' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1076#1083#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447AAFB2038A,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkrabotaet_na_dolgnopr_dolgnostj_dlya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1088#1072#1073#1086#1090#1072#1077#1090' '#1085#1072' '#1076#1086#1083#1078#1085'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAFB3037A,Bold.ColumnName=rabotaet' +
        '_na_dolgn,Bold.ExpressionName=rabotaet_na_dolgn,Bold.DelphiName=' +
        'rabotaet_na_dolgn"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1088' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1044#1086#1083#1078#1085#1086#1089#1090#1100'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447AAFB3037C,Bold.ColumnName=opr_dolg' +
        'nostj_dlya,Bold.ExpressionName=opr_dolgnostj_dlya,Bold.DelphiNam' +
        'e=opr_dolgnostj_dlya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1080#1079#1076#1089#1086#1089#1090#1086#1080#1090' '#1080#1079' '#1088#1077#1082#1083#1072#1084#1085#1099#1093'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447D5A6A0186,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_izdsostoit_iz_reklamnyh"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1080#1079#1076'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1076#1077#1083' '#1080#1079#1076#1072#1085#1080#1103'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5A6A035B,Bold.ColumnName=otnosits' +
        'ya_k_izd,Bold.ExpressionName=otnositsya_k_izd,Bold.DelphiName=ot' +
        'nositsya_k_izd"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1089#1086#1089#1090#1086#1080#1090' '#1080#1079' '#1088#1077#1082#1083#1072#1084#1085#1099#1093'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1048#1079#1076#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5A6A035D,Bold.ColumnName=sostoit_' +
        'iz_reklamnyh,Bold.ExpressionName=sostoit_iz_reklamnyh,Bold.Delph' +
        'iName=sostoit_iz_reklamnyh,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1088#1072#1079#1084' '#1088#1077#1082#1083#1072#1084#1091' '#1074#1103#1074#1083' '#1084#1077#1089#1090#1086#1084' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447D5A86006D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkrazm_reklamu_vyavl_mestom_reklamy"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1088#1072#1079#1084' '#1088#1077#1082#1083#1072#1084#1091' '#1074'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5A8700AB,Bold.ColumnName=razm_rek' +
        'lamu_v,Bold.ExpressionName=razm_reklamu_v,Bold.DelphiName=razm_r' +
        'eklamu_v"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1084#1077#1089#1090#1086#1084' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1076#1077#1083' '#1080#1079#1076#1072#1085#1080#1103'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5A8700AD,Bold.ColumnName=yavl_mes' +
        'tom_reklamy,Bold.ExpressionName=yavl_mestom_reklamy,Bold.DelphiN' +
        'ame=yavl_mestom_reklamy,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1088#1099#1103#1074#1083' '#1088#1072#1079#1084#1077#1088#1086#1084' '#1076#1083#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447D5B7A0157,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_razmeryyavl_razmerom_dlya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1088#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5B7A0280,Bold.ColumnName=imeet_ra' +
        'zmery,Bold.ExpressionName=imeet_razmery,Bold.DelphiName=imeet_ra' +
        'zmery"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1088#1072#1079#1084#1077#1088#1086#1084' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1088#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5B7A0282,Bold.ColumnName=yavl_raz' +
        'merom_dlya,Bold.ExpressionName=yavl_razmerom_dlya,Bold.DelphiNam' +
        'e=yavl_razmerom_dlya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1082#1074' '#1089#1084#1086#1087#1088' '#1089#1090#1086#1080#1084' '#1082#1074' '#1089#1084' '#1076#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=447D5BCC003E,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_stoim_kv_smopr_stoim_kv_sm_dya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1082#1074' '#1089#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5BCC0251,Bold.ColumnName=imeet_st' +
        'oim_kv_sm,Bold.ExpressionName=imeet_stoim_kv_sm,Bold.DelphiName=' +
        'imeet_stoim_kv_sm"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1088' '#1089#1090#1086#1080#1084' '#1082#1074' '#1089#1084' '#1076#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1086#1080#1084#1086#1089#1090#1100'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=447D5BCC0261,Bold.ColumnName=opr_stoi' +
        'm_kv_sm_dya,Bold.ExpressionName=opr_stoim_kv_sm_dya,Bold.DelphiN' +
        'ame=opr_stoim_kv_sm_dya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1088#1075' '#1080#1084#1077#1077#1090' '#1089#1087#1077#1094#1080#1092#1086#1087#1080#1089#1099#1074' '#1089#1087#1077#1094#1080#1092' '#1088#1072#1073'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4498FF53006D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkorg_imeet_specifopisyv_specif_rab"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1088#1075' '#1080#1084#1077#1077#1090' '#1089#1087#1077#1094#1080#1092'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF530280,Bold.ColumnName=org_imee' +
        't_specif,Bold.ExpressionName=org_imeet_specif,Bold.DelphiName=or' +
        'g_imeet_specif"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089#1099#1074' '#1089#1087#1077#1094#1080#1092' '#1088#1072#1073'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1087#1077#1094#1080#1092' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4498FF530290,Bold.ColumnName=opisyv_s' +
        'pecif_rab,Bold.ExpressionName=opisyv_specif_rab,Bold.DelphiName=' +
        'opisyv_specif_rab,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1103#1074#1083' '#1082#1086#1085#1090#1072#1082#1090#1086#1084' '#1089#1080#1084#1077#1077#1090' '#1082#1086#1085#1090#1072#1082#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4499087C0280,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkyavl_kontaktom_simeet_kontakty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1082#1086#1085#1090#1072#1082#1090#1086#1084' '#1089'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499087D00FA,Bold.ColumnName=yavl_kon' +
        'taktom_s,Bold.ExpressionName=yavl_kontaktom_s,Bold.DelphiName=ya' +
        'vl_kontaktom_s"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1082#1086#1085#1090#1072#1082#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499087D010A,Bold.ColumnName=imeet_ko' +
        'ntakty,Bold.ExpressionName=imeet_kontakty,Bold.DelphiName=imeet_' +
        'kontakty,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1088#1072#1079#1084#1077#1097' '#1082#1072#1082' '#1089#1083#1077#1076#1089#1090#1074#1103#1074#1083' '#1087#1088#1080#1095' '#1088#1072#1079#1084' '#1088#1077#1082#1083'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=449916CC00CB,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkrazmesh_kak_sledstvyavl_prich_razm_rekl"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1088#1072#1079#1084#1077#1097' '#1082#1072#1082' '#1089#1083#1077#1076#1089#1090#1074'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449916CD005D,Bold.ColumnName=razmesh_' +
        'kak_sledstv,Bold.ExpressionName=razmesh_kak_sledstv,Bold.DelphiN' +
        'ame=razmesh_kak_sledstv"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1087#1088#1080#1095' '#1088#1072#1079#1084' '#1088#1077#1082#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=449916CD005F,Bold.ColumnName=yavl_pri' +
        'ch_razm_rekl,Bold.ExpressionName=yavl_prich_razm_rekl,Bold.Delph' +
        'iName=yavl_prich_razm_rekl,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1074#1099#1093#1086#1076#1080#1090' '#1074' '#1074#1099#1087#1091#1089#1082#1072#1093#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103'"'
      #9#9#9'"'#1042#1099#1093#1086#1076'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4499349B0186,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkvyhodit_v_vypuskahimeet_razmesheniya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1099#1093#1086#1076#1080#1090' '#1074' '#1074#1099#1087#1091#1089#1082#1072#1093'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499349C0000,Bold.ColumnName=vyhodit_' +
        'v_vypuskah,Bold.ExpressionName=vyhodit_v_vypuskah,Bold.DelphiNam' +
        'e=vyhodit_v_vypuskah,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1042#1099#1087#1091#1089#1082' '#1075#1072#1079#1077#1090#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499349C0002,Bold.ColumnName=imeet_ra' +
        'zmesheniya,Bold.ExpressionName=imeet_razmesheniya,Bold.DelphiNam' +
        'e=imeet_razmesheniya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1103#1074#1083' '#1086#1087#1083#1072#1090#1086#1081' '#1079#1072#1080#1084#1077#1077#1090' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=449935730157,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkyavl_oplatoi_zaimeet_oplaty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1086#1087#1083#1072#1090#1086#1081' '#1079#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499357302FD,Bold.ColumnName=yavl_opl' +
        'atoi_za,Bold.ExpressionName=yavl_oplatoi_za,Bold.DelphiName=yavl' +
        '_oplatoi_za"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4499357302FF,Bold.ColumnName=imeet_op' +
        'laty,Bold.ExpressionName=imeet_oplaty,Bold.DelphiName=imeet_opla' +
        'ty,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1080#1087' '#1088#1077#1082#1083#1072#1084#1099#1090#1080#1087' '#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44991CCC0186,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_tip_reklamytip_imeet_razmesheniya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991CCC034B,Bold.ColumnName=imeet_ti' +
        'p_reklamy,Bold.ExpressionName=imeet_tip_reklamy,Bold.DelphiName=' +
        'imeet_tip_reklamy"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1090#1080#1087' '#1080#1084#1077#1077#1090' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1058#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991CCC034D,Bold.ColumnName=tip_imee' +
        't_razmesheniya,Bold.ExpressionName=tip_imeet_razmesheniya,Bold.D' +
        'elphiName=tip_imeet_razmesheniya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1089#1091#1097' '#1079#1072' '#1089#1095#1105#1090#1074#1085#1086#1089#1080#1090' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44991DDB002E,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkosush_za_schyotvnosit_oplaty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1089#1091#1097' '#1079#1072' '#1089#1095#1105#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991DDB032C,Bold.ColumnName=osush_za' +
        '_schyot,Bold.ExpressionName=osush_za_schyot,Bold.DelphiName=osus' +
        'h_za_schyot"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1085#1086#1089#1080#1090' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44991DDB032E,Bold.ColumnName=vnosit_o' +
        'platy,Bold.ExpressionName=vnosit_oplaty,Bold.DelphiName=vnosit_o' +
        'platy,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1080#1087' '#1082#1086#1085#1090#1072#1082#1090#1072#1103#1074#1083' '#1090#1080#1087#1086#1084' '#1082#1086#1085#1090' '#1076#1083#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D23E940196,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_tip_kontaktayavl_tipom_kont_dlya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1080#1087' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D23E94032C,Bold.ColumnName=imeet_ti' +
        'p_kontakta,Bold.ExpressionName=imeet_tip_kontakta,Bold.DelphiNam' +
        'e=imeet_tip_kontakta"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1090#1080#1087#1086#1084' '#1082#1086#1085#1090' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1058#1080#1087' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D23E94032E,Bold.ColumnName=yavl_tip' +
        'om_kont_dlya,Bold.ExpressionName=yavl_tipom_kont_dlya,Bold.Delph' +
        'iName=yavl_tipom_kont_dlya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1089#1086#1089#1090#1086#1087#1080#1089' '#1089#1086#1089#1090' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D1C10B007D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linknahoditsya_v_sostopis_sost_kontakta"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1089#1086#1089#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C10B0271,Bold.ColumnName=nahodits' +
        'ya_v_sost,Bold.ExpressionName=nahoditsya_v_sost,Bold.DelphiName=' +
        'nahoditsya_v_sost"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089' '#1089#1086#1089#1090' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C10B0280,Bold.ColumnName=opis_sos' +
        't_kontakta,Bold.ExpressionName=opis_sost_kontakta,Bold.DelphiNam' +
        'e=opis_sost_kontakta,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1084#1086#1078' '#1087#1088#1086#1089#1084#1072#1090#1088#1080#1074#1072#1090#1100#1087#1088#1086#1084#1072#1090#1088#1080#1074' '#1087#1077#1088#1089'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1087#1088#1086#1089#1084#1072#1090#1088#1080#1074#1072#1090#1100'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D1C17301F4,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkmog_prosmatrivatjpromatriv_pers"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1084#1086#1078' '#1087#1088#1086#1089#1084#1072#1090#1088#1080#1074#1072#1090#1100'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C1740251,Bold.ColumnName=mog_pros' +
        'matrivatj,Bold.ExpressionName=mog_prosmatrivatj,Bold.DelphiName=' +
        'mog_prosmatrivatj,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1087#1088#1086#1084#1072#1090#1088#1080#1074' '#1087#1077#1088#1089'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C1740261,Bold.ColumnName=promatri' +
        'v_pers,Bold.ExpressionName=promatriv_pers,Bold.DelphiName=promat' +
        'riv_pers,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1088#1072#1074#1086' '#1091#1089#1090#1072#1085#1072#1074#1083#1091#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1077#1090#1089#1103'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1091#1089#1090#1072#1085#1072#1074#1083'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D1C1770167,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_pravo_ustanavlustanavlivaetsya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1088#1072#1074#1086' '#1091#1089#1090#1072#1085#1072#1074#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C17703D8,Bold.ColumnName=imeet_pr' +
        'avo_ustanavl,Bold.ExpressionName=imeet_pravo_ustanavl,Bold.Delph' +
        'iName=imeet_pravo_ustanavl,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1091#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1077#1090#1089#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C17703DA,Bold.ColumnName=ustanavl' +
        'ivaetsya,Bold.ExpressionName=ustanavlivaetsya,Bold.DelphiName=us' +
        'tanavlivaetsya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1088#1072#1074#1086' '#1080#1079#1084#1077#1085#1103#1090#1100#1080#1079#1084#1077#1085#1103#1077#1090#1089#1103'"'
      #9#9#9'"'#1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1074#1099#1093#1086#1076#1080#1090#1100'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D1C1800232,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_pravo_izmenyatjizmenyaetsya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1088#1072#1074#1086' '#1080#1079#1084#1077#1085#1103#1090#1100'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C18200AB,Bold.ColumnName=imeet_pr' +
        'avo_izmenyatj,Bold.ExpressionName=imeet_pravo_izmenyatj,Bold.Del' +
        'phiName=imeet_pravo_izmenyatj,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1079#1084#1077#1085#1103#1077#1090#1089#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C18200BB,Bold.ColumnName=izmenyae' +
        'tsya,Bold.ExpressionName=izmenyaetsya,Bold.DelphiName=izmenyaets' +
        'ya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1077#1088#1077#1093#1086#1076#1085#1099#1077#1103#1074#1083' '#1082#1086#1085#1094' '#1087#1077#1088#1077#1093#1086#1076#1072' '#1080#1079'"'
      #9#9#9'"'#1055#1088#1080#1095#1080#1085#1072'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D1C212008C,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_perehodnyeyavl_konc_perehoda_iz"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1077#1088#1077#1093#1086#1076#1085#1099#1077'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C217009C,Bold.ColumnName=imeet_pe' +
        'rehodnye,Bold.ExpressionName=imeet_perehodnye,Bold.DelphiName=im' +
        'eet_perehodnye,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1082#1086#1085#1094' '#1087#1077#1088#1077#1093#1086#1076#1072' '#1080#1079'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D1C21700AC,Bold.ColumnName=yavl_kon' +
        'c_perehoda_iz,Bold.ExpressionName=yavl_konc_perehoda_iz,Bold.Del' +
        'phiName=yavl_konc_perehoda_iz,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1101#1092#1092#1077#1082#1090#1089#1083#1077#1076#1089#1090#1074#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D7142F0128,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_effektsledstvie_kontakta"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1101#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D7142F029F,Bold.ColumnName=imeet_ef' +
        'fekt,Bold.ExpressionName=imeet_effekt,Bold.DelphiName=imeet_effe' +
        'kt"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1089#1083#1077#1076#1089#1090#1074#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1069#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D7142F02AF,Bold.ColumnName=sledstvi' +
        'e_kontakta,Bold.ExpressionName=sledstvie_kontakta,Bold.DelphiNam' +
        'e=sledstvie_kontakta,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1087#1086' '#1090#1080#1087#1091#1080#1084#1077#1077#1090' '#1095#1072#1089#1090#1085#1086#1089#1090#1100'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44D7153D03C8,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_po_tipuimeet_chastnostj"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1087#1086' '#1090#1080#1087#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1069#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D7153E0138,Bold.ColumnName=otnosits' +
        'ya_po_tipu,Bold.ExpressionName=otnositsya_po_tipu,Bold.DelphiNam' +
        'e=otnositsya_po_tipu"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1095#1072#1089#1090#1085#1086#1089#1090#1100'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1101#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44D7153E0148,Bold.ColumnName=imeet_ch' +
        'astnostj,Bold.ExpressionName=imeet_chastnostj,Bold.DelphiName=im' +
        'eet_chastnostj,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1090#1080#1087#1091' '#1082#1086#1085#1090#1072#1082#1090#1087#1088#1077#1076#1087#1086#1083#1072#1075' '#1089#1086#1089#1090#1086#1103#1085#1080#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E0503302DE,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_tipu_kontaktpredpolag_sostoyaniya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1090#1080#1087#1091' '#1082#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E050350213,Bold.ColumnName=otnosits' +
        'ya_k_tipu_kontakt,Bold.ExpressionName=otnositsya_k_tipu_kontakt,' +
        'Bold.DelphiName=otnositsya_k_tipu_kontakt,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1087#1088#1077#1076#1087#1086#1083#1072#1075' '#1089#1086#1089#1090#1086#1103#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1058#1080#1087' '#1082#1086#1085#1090#1072#1082#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E050350215,Bold.ColumnName=predpola' +
        'g_sostoyaniya,Bold.ExpressionName=predpolag_sostoyaniya,Bold.Del' +
        'phiName=predpolag_sostoyaniya"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1087#1088#1080#1095#1080#1085#1077#1080#1084#1077#1077#1090' '#1091#1089#1083#1086#1074#1080#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E42C33007E,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkootnositsya_k_prichineimeet_usloviya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1087#1088#1080#1095#1080#1085#1077'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1059#1089#1083#1086#1074#1080#1103'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E42C3302D0,Bold.ColumnName=ootnosit' +
        'sya_k_prichine,Bold.ExpressionName=ootnositsya_k_prichine,Bold.D' +
        'elphiName=ootnositsya_k_prichine"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1091#1089#1083#1086#1074#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1077#1072#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E42C3302D2,Bold.ColumnName=imeet_us' +
        'loviya,Bold.ExpressionName=imeet_usloviya,Bold.DelphiName=imeet_' +
        'usloviya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1088#1080#1077#1085#1090#1080#1088' '#1085#1072#1080#1084#1077#1077#1090' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E430C002A1,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkorientir_naimeet_zadachi"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1088#1080#1077#1085#1090#1080#1088' '#1085#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E430C702B1,Bold.ColumnName=orientir' +
        '_na,Bold.ExpressionName=orientir_na,Bold.DelphiName=orientir_na"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E430C702C0,Bold.ColumnName=imeet_za' +
        'dachi,Bold.ExpressionName=imeet_zadachi,Bold.DelphiName=imeet_za' +
        'dachi,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1079#1072#1076#1072#1095#1077#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E430F502D0,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnos_k_zadacheimeet_napominaniya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1079#1072#1076#1072#1095#1077'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E430F60040,Bold.ColumnName=otnos_k_' +
        'zadache,Bold.ExpressionName=otnos_k_zadache,Bold.DelphiName=otno' +
        's_k_zadache"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E430F6004F,Bold.ColumnName=imeet_na' +
        'pominaniya,Bold.ExpressionName=imeet_napominaniya,Bold.DelphiNam' +
        'e=imeet_napominaniya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1085#1072#1087#1086#1084#1080#1085#1092#1086#1088#1084#1080#1088' '#1091#1089#1083#1086#1074#1080#1077'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E431B603AB,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_napominformir_uslovie"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1085#1072#1087#1086#1084#1080#1085'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1059#1089#1083#1086#1074#1080#1103'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E431B802A1,Bold.ColumnName=otnosits' +
        'ya_k_napomin,Bold.ExpressionName=otnositsya_k_napomin,Bold.Delph' +
        'iName=otnositsya_k_napomin"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1091#1089#1083#1086#1074#1080#1077'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E431B802B1,Bold.ColumnName=formir_u' +
        'slovie,Bold.ExpressionName=formir_uslovie,Bold.DelphiName=formir' +
        '_uslovie,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1082#1086#1085#1090#1072#1082#1090#1091#1082#1086#1085#1090#1072#1082#1090' '#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E431ED02C0,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnos_k_kontaktukontakt_imeet_napom"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1082#1086#1085#1090#1072#1082#1090#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E431EE01E6,Bold.ColumnName=otnos_k_' +
        'kontaktu,Bold.ExpressionName=otnos_k_kontaktu,Bold.DelphiName=ot' +
        'nos_k_kontaktu"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1082#1086#1085#1090#1072#1082#1090' '#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1086#1085#1090#1072#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E431EE01F5,Bold.ColumnName=kontakt_' +
        'imeet_napom,Bold.ExpressionName=kontakt_imeet_napom,Bold.DelphiN' +
        'ame=kontakt_imeet_napom,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1074#1099#1093#1086#1076' '#1080#1079#1076#1072#1085#1080#1103#1080#1084#1077#1077#1090' '#1074#1099#1093#1086#1076#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E8573503C8,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkvyhod_izdaniyaimeet_vyhody"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1099#1093#1086#1076' '#1080#1079#1076#1072#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1042#1099#1087#1091#1089#1082' '#1075#1072#1079#1077#1090#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E857380186,Bold.ColumnName=vyhod_iz' +
        'daniya,Bold.ExpressionName=vyhod_izdaniya,Bold.DelphiName=vyhod_' +
        'izdaniya"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1074#1099#1093#1086#1076#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1048#1079#1076#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E857380188,Bold.ColumnName=imeet_vy' +
        'hody,Bold.ExpressionName=imeet_vyhody,Bold.DelphiName=imeet_vyho' +
        'dy,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1089#1090#1072#1085#1076' '#1091#1089#1083#1080#1084#1077#1077#1090' '#1089#1090#1072#1085#1076' '#1091#1089#1083'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E98A1600EA,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_stand_uslimeet_stand_usl"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1089#1090#1072#1085#1076' '#1091#1089#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1059#1089#1083#1086#1074#1080#1103'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A16030D,Bold.ColumnName=otnosits' +
        'ya_k_stand_usl,Bold.ExpressionName=otnositsya_k_stand_usl,Bold.D' +
        'elphiName=otnositsya_k_stand_usl"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1072#1085#1076' '#1091#1089#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1091#1089#1083#1086#1074#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A16030F,Bold.ColumnName=imeet_st' +
        'and_usl,Bold.ExpressionName=imeet_stand_usl,Bold.DelphiName=imee' +
        't_stand_usl,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1089#1090#1072#1085#1076' '#1085#1072#1087#1086#1084#1080#1084#1077#1077#1090' '#1089#1090#1072#1085#1076' '#1085#1072#1087#1086#1084'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E98A1A00BB,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnos_k_stand_napomimeet_stand_napom"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089' '#1082' '#1089#1090#1072#1085#1076' '#1085#1072#1087#1086#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A1A02CE,Bold.ColumnName=otnos_k_' +
        'stand_napom,Bold.ExpressionName=otnos_k_stand_napom,Bold.DelphiN' +
        'ame=otnos_k_stand_napom"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1072#1085#1076' '#1085#1072#1087#1086#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A1A02D0,Bold.ColumnName=imeet_st' +
        'and_napom,Bold.ExpressionName=imeet_stand_napom,Bold.DelphiName=' +
        'imeet_stand_napom,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089'  '#1082' '#1089#1090#1072#1085#1076' '#1079#1072#1076#1072#1095#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079#1091#1077#1090' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E98A1C0203,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnos__k_stand_zadachharakterizuet_zadachi"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089'  '#1082' '#1089#1090#1072#1085#1076' '#1079#1072#1076#1072#1095'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A1D01D4,Bold.ColumnName=otnos__k' +
        '_stand_zadach,Bold.ExpressionName=otnos__k_stand_zadach,Bold.Del' +
        'phiName=otnos__k_stand_zadach"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079#1091#1077#1090' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1079#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98A1D01D6,Bold.ColumnName=harakter' +
        'izuet_zadachi,Bold.ExpressionName=harakterizuet_zadachi,Bold.Del' +
        'phiName=harakterizuet_zadachi,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085' '#1082' '#1090#1080#1087#1091' '#1087#1088#1080#1095#1080#1085#1093#1072#1088#1072#1082#1090' '#1074' '#1095#1072#1089#1090#1085' '#1087#1088#1080#1095'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E9B659038A,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotn_k_tipu_prichinharakt_v_chastn_prich"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085' '#1082' '#1090#1080#1087#1091' '#1087#1088#1080#1095#1080#1085'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1077#1072#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E9B65A0138,Bold.ColumnName=otn_k_ti' +
        'pu_prichin,Bold.ExpressionName=otn_k_tipu_prichin,Bold.DelphiNam' +
        'e=otn_k_tipu_prichin"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1093#1072#1088#1072#1082#1090' '#1074' '#1095#1072#1089#1090#1085' '#1087#1088#1080#1095'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E9B65A013A,Bold.ColumnName=harakt_v' +
        '_chastn_prich,Bold.ExpressionName=harakt_v_chastn_prich,Bold.Del' +
        'phiName=harakt_v_chastn_prich,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089' '#1082#1072#1082' '#1079#1072#1076#1072#1095' '#1082' '#1087#1088#1080#1095#1080#1084#1077#1077#1090' '#1074' '#1086#1089#1085#1086#1074#1077' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9'"Linkotnos_kak_zadach_k_prichimeet_v_osnove_zadachi"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E97FE70167,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnos_kak_zadach_k_prichimeet_v_osnove_zadachi"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089' '#1082#1072#1082' '#1079#1072#1076#1072#1095' '#1082' '#1087#1088#1080#1095'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E97FE80000,Bold.ColumnName=otnos_ka' +
        'k_zadach_k_prich,Bold.ExpressionName=otnos_kak_zadach_k_prich,Bo' +
        'ld.DelphiName=otnos_kak_zadach_k_prich,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1074' '#1086#1089#1085#1086#1074#1077' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1077#1072#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E97FE80002,Bold.ColumnName=imeet_v_' +
        'osnove_zadachi,Bold.ExpressionName=imeet_v_osnove_zadachi,Bold.D' +
        'elphiName=imeet_v_osnove_zadachi,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1074#1093#1086#1076#1080#1090' '#1074' '#1089#1086#1089#1090' '#1087#1088#1086#1077#1082#1090#1072#1080#1084#1077#1077#1090' '#1074' '#1089#1086#1089#1090#1072#1074#1077' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E980320399,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkvhodit_v_sost_proektaimeet_v_sostave_zadachi"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1093#1086#1076#1080#1090' '#1074' '#1089#1086#1089#1090' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980330213,Bold.ColumnName=vhodit_v' +
        '_sost_proekta,Bold.ExpressionName=vhodit_v_sost_proekta,Bold.Del' +
        'phiName=vhodit_v_sost_proekta"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1074' '#1089#1086#1089#1090#1072#1074#1077' '#1079#1072#1076#1072#1095#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1088#1086#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980330222,Bold.ColumnName=imeet_v_' +
        'sostave_zadachi,Bold.ExpressionName=imeet_v_sostave_zadachi,Bold' +
        '.DelphiName=imeet_v_sostave_zadachi,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1076#1086#1082' '#1074#1093#1086#1076' '#1074' '#1089#1086#1089#1090' '#1087#1088#1086#1077#1082#1090#1072#1087#1088#1086#1077#1082#1090' '#1089#1086#1089#1090' '#1080#1079' '#1076#1086#1082'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E98066030D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkdok_vhod_v_sost_proektaproekt_sost_iz_dok"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1076#1086#1082' '#1074#1093#1086#1076' '#1074' '#1089#1086#1089#1090' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1044#1086#1082#1091#1084#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98067005D,Bold.ColumnName=dok_vhod' +
        '_v_sost_proekta,Bold.ExpressionName=dok_vhod_v_sost_proekta,Bold' +
        '.DelphiName=dok_vhod_v_sost_proekta"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1087#1088#1086#1077#1082#1090' '#1089#1086#1089#1090' '#1080#1079' '#1076#1086#1082'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1088#1086#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E98067006D,Bold.ColumnName=proekt_s' +
        'ost_iz_dok,Bold.ExpressionName=proekt_sost_iz_dok,Bold.DelphiNam' +
        'e=proekt_sost_iz_dok,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1087#1080#1089' '#1101#1092#1092#1077#1082#1090' '#1086#1090' '#1087#1088#1086#1077#1082#1090#1072#1087#1088#1086#1077#1082#1090' '#1080#1084#1077#1077#1090' '#1088#1077#1079#1091#1083#1100#1090'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E980EA0109,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkopis_effekt_ot_proektaproekt_imeet_rezuljt"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089' '#1101#1092#1092#1077#1082#1090' '#1086#1090' '#1087#1088#1086#1077#1082#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1069#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980EA02EE,Bold.ColumnName=opis_eff' +
        'ekt_ot_proekta,Bold.ExpressionName=opis_effekt_ot_proekta,Bold.D' +
        'elphiName=opis_effekt_ot_proekta"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1087#1088#1086#1077#1082#1090' '#1080#1084#1077#1077#1090' '#1088#1077#1079#1091#1083#1100#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1088#1086#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980EA02F0,Bold.ColumnName=proekt_i' +
        'meet_rezuljt,Bold.ExpressionName=proekt_imeet_rezuljt,Bold.Delph' +
        'iName=proekt_imeet_rezuljt,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1087#1080#1089' '#1101#1092#1092#1077#1082#1090' '#1086#1090' '#1079#1072#1076#1072#1095#1079#1072#1076#1072#1095#1072' '#1080#1084#1077#1077#1090' '#1101#1092#1092#1077#1082#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44E980EC031C,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkopis_effekt_ot_zadachzadacha_imeet_effekty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089' '#1101#1092#1092#1077#1082#1090' '#1086#1090' '#1079#1072#1076#1072#1095'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1069#1092#1092#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980ED0261,Bold.ColumnName=opis_eff' +
        'ekt_ot_zadach,Bold.ExpressionName=opis_effekt_ot_zadach,Bold.Del' +
        'phiName=opis_effekt_ot_zadach"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1079#1072#1076#1072#1095#1072' '#1080#1084#1077#1077#1090' '#1101#1092#1092#1077#1082#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1047#1072#1076#1072#1095#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44E980ED0263,Bold.ColumnName=zadacha_' +
        'imeet_effekty,Bold.ExpressionName=zadacha_imeet_effekty,Bold.Del' +
        'phiName=zadacha_imeet_effekty,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1103#1074#1083' '#1088#1077#1082#1083#1072#1084#1086#1081' '#1076#1083#1103#1088#1072#1079#1084#1077#1097#1072#1077#1090' '#1088#1077#1082#1083#1072#1084#1091'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44EC2FEF0222,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkyavl_reklamoi_dlyarazmeshaet_reklamu"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1088#1077#1082#1083#1072#1084#1086#1081' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44EC2FEF031C,Bold.ColumnName=yavl_rek' +
        'lamoi_dlya,Bold.ExpressionName=yavl_reklamoi_dlya,Bold.DelphiNam' +
        'e=yavl_reklamoi_dlya"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1088#1072#1079#1084#1077#1097#1072#1077#1090' '#1088#1077#1082#1083#1072#1084#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44EC2FEF032C,Bold.ColumnName=razmesha' +
        'et_reklamu,Bold.ExpressionName=razmeshaet_reklamu,Bold.DelphiNam' +
        'e=razmeshaet_reklamu,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082#1089#1090#1072#1085#1076#1072#1088#1090#1091#1080#1084#1077#1077#1090' '#1072#1073#1089#1090#1088' '#1095#1072#1089#1090#1085#1086#1089#1090#1100'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F1C1B90242,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_kstandartuimeet_abstr_chastnostj"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082#1089#1090#1072#1085#1076#1072#1088#1090#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F1C1BA001F,Bold.ColumnName=otnosits' +
        'ya_kstandartu,Bold.ExpressionName=otnositsya_kstandartu,Bold.Del' +
        'phiName=otnositsya_kstandartu"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1072#1073#1089#1090#1088' '#1095#1072#1089#1090#1085#1086#1089#1090#1100'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F1C1BA002E,Bold.ColumnName=imeet_ab' +
        'str_chastnostj,Bold.ExpressionName=imeet_abstr_chastnostj,Bold.D' +
        'elphiName=imeet_abstr_chastnostj,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1089#1090#1072#1085#1076' '#1087#1088#1080#1095#1092#1086#1088#1084#1080#1088' '#1080#1079' '#1089#1090#1072#1085#1076' '#1091#1089#1083'"'
      #9#9#9'"'#1055#1088#1080#1095#1080#1085#1072' '#1091#1089#1083#1086#1074'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F1C67A036B,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkformir_stand_prichformir_iz_stand_usl"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1089#1090#1072#1085#1076' '#1087#1088#1080#1095'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1091#1089#1083#1086#1074#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F1C67E02DE,Bold.ColumnName=formir_s' +
        'tand_prich,Bold.ExpressionName=formir_stand_prich,Bold.DelphiNam' +
        'e=formir_stand_prich,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1080#1079' '#1089#1090#1072#1085#1076' '#1091#1089#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F1C67E02EE,Bold.ColumnName=formir_i' +
        'z_stand_usl,Bold.ExpressionName=formir_iz_stand_usl,Bold.DelphiN' +
        'ame=formir_iz_stand_usl,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1077#1082#1091#1097#1080#1081' '#1074#1099#1087#1091#1089#1082#1103#1074#1083' '#1090#1077#1082' '#1074#1099#1087#1091#1089#1082#1086#1084' '#1076#1083#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F2BC630109,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_tekushii_vypuskyavl_tek_vypuskom_dlya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1090#1077#1082#1091#1097#1080#1081' '#1074#1099#1087#1091#1089#1082'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1048#1079#1076#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F2BC6403D8,Bold.ColumnName=imeet_te' +
        'kushii_vypusk,Bold.ExpressionName=imeet_tekushii_vypusk,Bold.Del' +
        'phiName=imeet_tekushii_vypusk"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1090#1077#1082' '#1074#1099#1087#1091#1089#1082#1086#1084' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1042#1099#1087#1091#1089#1082' '#1075#1072#1079#1077#1090#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F2BC6403DA,Bold.ColumnName=yavl_tek' +
        '_vypuskom_dlya,Bold.ExpressionName=yavl_tek_vypuskom_dlya,Bold.D' +
        'elphiName=yavl_tek_vypuskom_dlya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1103#1074#1083' '#1085#1072#1087#1086#1084#1080#1085' '#1076#1083#1103#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F41A280148,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkyavl_napomin_dlyaimeet_napominaniya"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1085#1072#1087#1086#1084#1080#1085' '#1076#1083#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41A2D0232,Bold.ColumnName=yavl_nap' +
        'omin_dlya,Bold.ExpressionName=yavl_napomin_dlya,Bold.DelphiName=' +
        'yavl_napomin_dlya"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41A2D0242,Bold.ColumnName=imeet_na' +
        'pominaniya,Bold.ExpressionName=imeet_napominaniya,Bold.DelphiNam' +
        'e=imeet_napominaniya,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1082#1086#1085#1082#1088' '#1088#1072#1079#1084#1080#1084#1077#1077#1090' '#1076#1086#1073#1072#1074' '#1089#1090#1086#1080#1084'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F41AD701E4,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_konkr_razmimeet_dobav_stoim"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1082#1086#1085#1082#1088' '#1088#1072#1079#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41AD703D8,Bold.ColumnName=otnosits' +
        'ya_k_konkr_razm,Bold.ExpressionName=otnositsya_k_konkr_razm,Bold' +
        '.DelphiName=otnositsya_k_konkr_razm"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1076#1086#1073#1072#1074' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1042#1099#1093#1086#1076'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41AD80000,Bold.ColumnName=imeet_do' +
        'bav_stoim,Bold.ExpressionName=imeet_dobav_stoim,Bold.DelphiName=' +
        'imeet_dobav_stoim,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1094#1077#1085#1091' '#1085#1072#1080#1084#1077#1077#1090' '#1089#1082#1080#1076#1082#1080'"'
      #9#9#9'"'#1057#1086#1086#1090#1085' '#1089#1086' '#1089#1082#1080#1076#1082'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=44F41D1F0177,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkformir_cenu_naimeet_skidki"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1092#1086#1088#1084#1080#1088' '#1094#1077#1085#1091' '#1085#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1082#1080#1076#1082#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41D20001F,Bold.ColumnName=formir_c' +
        'enu_na,Bold.ExpressionName=formir_cenu_na,Bold.DelphiName=formir' +
        '_cenu_na,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1082#1080#1076#1082#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=44F41D20002E,Bold.ColumnName=imeet_sk' +
        'idki,Bold.ExpressionName=imeet_skidki,Bold.DelphiName=imeet_skid' +
        'ki,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1093#1072#1088#1072#1082#1090' '#1089#1082#1080#1076#1082' '#1090#1080#1087' '#1088#1077#1082#1083#1090#1080#1087' '#1088#1077#1082#1083' '#1080#1084#1077#1077#1090' '#1089#1082#1080#1076#1082#1080'"'
      #9#9#9'"'#1057#1086#1086#1090#1085' '#1090#1080#1087#1072' '#1089#1086' '#1089#1082#1080#1076#1082'"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=450410B10399,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkharakt_skidk_tip_rekltip_rekl_imeet_skidki"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1093#1072#1088#1072#1082#1090' '#1089#1082#1080#1076#1082' '#1090#1080#1087' '#1088#1077#1082#1083'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1082#1080#1076#1082#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450410B20196,Bold.ColumnName=harakt_s' +
        'kidk_tip_rekl,Bold.ExpressionName=harakt_skidk_tip_rekl,Bold.Del' +
        'phiName=harakt_skidk_tip_rekl,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1090#1080#1087' '#1088#1077#1082#1083' '#1080#1084#1077#1077#1090' '#1089#1082#1080#1076#1082#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1058#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450410B201A5,Bold.ColumnName=tip_rekl' +
        '_imeet_skidki,Bold.ExpressionName=tip_rekl_imeet_skidki,Bold.Del' +
        'phiName=tip_rekl_imeet_skidki,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1087#1080#1089' '#1088#1072#1073#1086#1090#1099' '#1087#1086' '#1088#1077#1082#1083#1072#1084#1077#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1076#1086#1087' '#1088#1072#1073'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=45048A560290,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkopis_raboty_po_reklameimeet_stoim_dop_rab"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089' '#1088#1072#1073#1086#1090#1099' '#1087#1086' '#1088#1077#1082#1083#1072#1084#1077'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45048A5701C5,Bold.ColumnName=opis_rab' +
        'oty_po_reklame,Bold.ExpressionName=opis_raboty_po_reklame,Bold.D' +
        'elphiName=opis_raboty_po_reklame"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1076#1086#1087' '#1088#1072#1073'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45048A5701E4,Bold.ColumnName=imeet_st' +
        'oim_dop_rab,Bold.ExpressionName=imeet_stoim_dop_rab,Bold.DelphiN' +
        'ame=imeet_stoim_dop_rab,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1074#1093#1086#1076' '#1074#1086#1087#1080#1089#1099#1074#1072#1077#1090' '#1089#1090#1086#1080#1084' '#1088#1072#1079#1088#1072#1073'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4504972C037A,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_stoim_vhod_vopisyvaet_stoim_razrab"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1090#1086#1080#1084' '#1074#1093#1086#1076' '#1074'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1088#1086#1077#1082#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504973000AB,Bold.ColumnName=imeet_st' +
        'oim_vhod_v,Bold.ExpressionName=imeet_stoim_vhod_v,Bold.DelphiNam' +
        'e=imeet_stoim_vhod_v,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1080#1089#1099#1074#1072#1077#1090' '#1089#1090#1086#1080#1084' '#1088#1072#1079#1088#1072#1073'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1044#1086#1073#1072#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4504973000BB,Bold.ColumnName=opisyvae' +
        't_stoim_razrab,Bold.ExpressionName=opisyvaet_stoim_razrab,Bold.D' +
        'elphiName=opisyvaet_stoim_razrab"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1103#1074#1083' '#1089#1095#1077#1090#1086#1084' '#1085#1072' '#1086#1087#1083' '#1088#1077#1082#1083#1072#1084#1099#1080#1084#1077#1077#1090' '#1089#1095#1077#1090#1072' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=45089D430186,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkyavl_schetom_na_opl_reklamyimeet_scheta_oplaty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1103#1074#1083' '#1089#1095#1077#1090#1086#1084' '#1085#1072' '#1086#1087#1083' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1086#1079#1080#1094' '#1089#1095#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089D4400CB,Bold.ColumnName=yavl_sch' +
        'etom_na_opl_reklamy,Bold.ExpressionName=yavl_schetom_na_opl_rekl' +
        'amy,Bold.DelphiName=yavl_schetom_na_opl_reklamy"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1089#1095#1077#1090#1072' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089D4400DA,Bold.ColumnName=imeet_sc' +
        'heta_oplaty,Bold.ExpressionName=imeet_scheta_oplaty,Bold.DelphiN' +
        'ame=imeet_scheta_oplaty,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1087#1083#1072#1090#1072' '#1087#1086' '#1089#1095#1105#1090#1091#1074#1082#1083#1102#1095#1072#1077#1090' '#1086#1087#1083#1072#1090#1091'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=45089D4D005D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkoplata_po_schyotuvklyuchaet_oplatu"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1087#1083#1072#1090#1072' '#1087#1086' '#1089#1095#1105#1090#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089D4E00FA,Bold.ColumnName=oplata_p' +
        'o_schyotu,Bold.ExpressionName=oplata_po_schyotu,Bold.DelphiName=' +
        'oplata_po_schyotu"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1082#1083#1102#1095#1072#1077#1090' '#1086#1087#1083#1072#1090#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1095#1105#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089D4E0109,Bold.ColumnName=vklyucha' +
        'et_oplatu,Bold.ExpressionName=vklyuchaet_oplatu,Bold.DelphiName=' +
        'vklyuchaet_oplatu,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1093#1072#1088#1072#1082#1090' '#1082#1083#1080#1077#1085#1090#1072#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079#1091#1077#1090' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9'"Linkimeet_harakt_klientaharakterizuet_klienta"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=45089ED7029F,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_harakt_klientaharakterizuet_klienta"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1093#1072#1088#1072#1082#1090' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089ED80128,Bold.ColumnName=imeet_ha' +
        'rakt_klienta,Bold.ExpressionName=imeet_harakt_klienta,Bold.Delph' +
        'iName=imeet_harakt_klienta,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079#1091#1077#1090' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=45089ED80138,Bold.ColumnName=harakter' +
        'izuet_klienta,Bold.ExpressionName=harakterizuet_klienta,Bold.Del' +
        'phiName=harakterizuet_klienta,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1080#1084#1077#1077#1090' '#1088#1077#1081#1090#1080#1085#1075#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=450D1D7501E4,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkimeet_reitingharakteriz_klienta"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1088#1077#1081#1090#1080#1085#1075'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D770222,Bold.ColumnName=imeet_re' +
        'iting,Bold.ExpressionName=imeet_reiting,Bold.DelphiName=imeet_re' +
        'iting"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1079' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1077#1081#1090#1080#1085#1075' '#1082#1083#1080#1077#1085#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=450D1D770232,Bold.ColumnName=harakter' +
        'iz_klienta,Bold.ExpressionName=harakteriz_klienta,Bold.DelphiNam' +
        'e=harakteriz_klienta,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1074#1077#1076#1105#1090#1089#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1084#1074#1077#1076#1105#1090' '#1088#1077#1082#1083#1072#1084#1091'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=451003290242,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkvedyotsya_sotrudnikomvedyot_reklamu"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1077#1076#1105#1090#1089#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1084'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4510032A030D,Bold.ColumnName=vedyotsy' +
        'a_sotrudnikom,Bold.ExpressionName=vedyotsya_sotrudnikom,Bold.Del' +
        'phiName=vedyotsya_sotrudnikom"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1077#1076#1105#1090' '#1088#1077#1082#1083#1072#1084#1091'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1077#1088#1089#1086#1085#1072#1083'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4510032A031C,Bold.ColumnName=vedyot_r' +
        'eklamu,Bold.ExpressionName=vedyot_reklamu,Bold.DelphiName=vedyot' +
        '_reklamu,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1088#1077#1082#1083#1072#1084#1072' '#1074#1093#1086#1076' '#1074' '#1089#1095#1105#1090#1080#1084#1077#1077#1090' '#1087#1086#1079#1080#1094' '#1086#1087#1083' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4513CF3A006D,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkreklama_vhod_v_schyotimeet_pozic_opl_reklamy"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1088#1077#1082#1083#1072#1084#1072' '#1074#1093#1086#1076' '#1074' '#1089#1095#1105#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1050#1083#1080#1077#1085#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CF3B0213,Bold.ColumnName=reklama_' +
        'vhod_v_schyot,Bold.ExpressionName=reklama_vhod_v_schyot,Bold.Del' +
        'phiName=reklama_vhod_v_schyot,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1087#1086#1079#1080#1094' '#1086#1087#1083' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1095#1105#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4513CF3B0222,Bold.ColumnName=imeet_po' +
        'zic_opl_reklamy,Bold.ExpressionName=imeet_pozic_opl_reklamy,Bold' +
        '.DelphiName=imeet_pozic_opl_reklamy"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1074#1093#1086#1076#1080#1090' '#1074' '#1089#1095#1105#1090#1089#1086#1089#1090#1086#1080#1090' '#1080#1079' '#1087#1086#1079#1080#1094#1080#1081'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4515483B0232,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkvhodit_v_schyotsostoit_iz_pozicii"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1074#1093#1086#1076#1080#1090' '#1074' '#1089#1095#1105#1090'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1055#1086#1079#1080#1094' '#1089#1095#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515483C00EA,Bold.ColumnName=vhodit_v' +
        '_schyot,Bold.ExpressionName=vhodit_v_schyot,Bold.DelphiName=vhod' +
        'it_v_schyot"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1089#1086#1089#1090#1086#1080#1090' '#1080#1079' '#1087#1086#1079#1080#1094#1080#1081'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1057#1095#1105#1090'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4515483C00FA,Bold.ColumnName=sostoit_' +
        'iz_pozicii,Bold.ExpressionName=sostoit_iz_pozicii,Bold.DelphiNam' +
        'e=sostoit_iz_pozicii,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9#9'(Association'
      #9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080#1080#1084#1077#1077#1090' '#1086#1090#1085#1086#1089' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9'"<NONE>"'
      #9#9#9'""'
      #9#9#9'""'
      
        #9#9#9'"persistence=persistent,_BoldInternal.toolId=4516F2CA0399,der' +
        'ived=False,_Boldify.noName=True,Bold.DelphiName=<Name>,Bold.Link' +
        'ClassName=Linkotnositsya_k_kampaniiimeet_otnos_oplaty"'
      #9#9#9'FALSE'
      #9#9#9'(Roles'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1054#1087#1083#1072#1090#1072'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..1"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516F2CC029F,Bold.ColumnName=otnosits' +
        'ya_k_kampanii,Bold.ExpressionName=otnositsya_k_kampanii,Bold.Del' +
        'phiName=otnositsya_k_kampanii"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9#9'(Role'
      #9#9#9#9#9'"'#1080#1084#1077#1077#1090' '#1086#1090#1085#1086#1089' '#1086#1087#1083#1072#1090#1099'"'
      #9#9#9#9#9'TRUE'
      #9#9#9#9#9'FALSE'
      #9#9#9#9#9'"'#1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1088#1077#1082#1083#1072#1084#1099'"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'"0..n"'
      #9#9#9#9#9'""'
      #9#9#9#9#9'0'
      #9#9#9#9#9'2'
      #9#9#9#9#9'0'
      
        #9#9#9#9#9'"_BoldInternal.toolId=4516F2CC02AF,Bold.ColumnName=imeet_ot' +
        'nos_oplaty,Bold.ExpressionName=imeet_otnos_oplaty,Bold.DelphiNam' +
        'e=imeet_otnos_oplaty,Bold.Embed=False"'
      #9#9#9#9#9'(Qualifiers'
      #9#9#9#9#9')'
      #9#9#9#9')'
      #9#9#9')'
      #9#9')'
      #9')'
      ')')
  end
  object XMLDocument1: TXMLDocument
    FileName = 'C:\prog\Reklam\'#1040#1076#1088#1077#1089#1072' '#1058#1044'2.xml'
    Left = 112
    Top = 352
    DOMVendorDesc = 'MSXML'
  end
  object bvhCatName: TBoldVariableHandle
    StaticSystemHandle = bsh
    ValueTypeName = 'String'
    Left = 112
    Top = 400
  end
  object bovCatByName: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhCatName
        VariableName = 'bv_CN'
        UseListElement = False
      end>
    Left = 200
    Top = 344
  end
  object BoldListHandle1: TBoldListHandle
    RootHandle = bsh
    Expression = 'Specif_organizacii.allInstances->select(naimenovanie=bv_CN)'
    Variables = bovCatByName
    Left = 280
    Top = 400
  end
  object blhClByParam: TBoldListHandle
    RootHandle = bsh
    Expression = 'Klient.allInstances->select(imenovanie=bv_ClName)'
    Variables = bovClByParam
    Left = 376
    Top = 288
  end
  object bovClByParam: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhClName
        VariableName = 'bv_ClName'
        UseListElement = False
      end>
    Left = 376
    Top = 240
  end
  object ClByIDADOQuery: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end>
    SQL.Strings = (
      
        'select p.Imya, p.Familiya, p.Otchestvo, org.Naimenovanie, cl.Yav' +
        'l_yur_licom '
      'from Klient cl, Organizaciya org, Persona p where'
      '(cl.BOLD_ID=:id) and (org.BOLD_ID=cl.BOLD_ID) and '
      '(p.BOLD_ID=cl.BOLD_ID)')
    Left = 376
    Top = 352
  end
  object bvhClName: TBoldVariableHandle
    StaticSystemHandle = bsh
    ValueTypeName = 'String'
    Left = 376
    Top = 176
  end
end
