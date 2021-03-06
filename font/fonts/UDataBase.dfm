object Modulo: TModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 549
  Width = 846
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 32
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=petshop'
      'Server=localhost'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evAutoClose]
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 32
  end
  object FMDriver: TFDPhysMySQLDriverLink
    Left = 184
    Top = 32
  end
  object tbCliente: TFDTable
    Active = True
    IndexFieldNames = 'Clie_Codigo'
    AggregatesActive = True
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'PetShop.cliente'
    TableName = 'PetShop.cliente'
    Left = 40
    Top = 120
    object tbClienteClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClienteClie_Nome: TStringField
      FieldName = 'Clie_Nome'
      Origin = 'Clie_Nome'
      Required = True
      Size = 40
    end
    object tbClienteClie_Admissao: TDateField
      FieldName = 'Clie_Admissao'
      Origin = 'Clie_Admissao'
      Required = True
    end
    object tbClienteClie_Nascm: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nascm'
      Origin = 'Clie_Nascm'
      EditMask = '00/00/0000;1;_'
    end
    object tbClienteClie_Sexo: TStringField
      FieldName = 'Clie_Sexo'
      Origin = 'Clie_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tbClienteClie_Endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Endereco'
      Origin = 'Clie_Endereco'
      Size = 40
    end
    object tbClienteClie_NumEnd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_NumEnd'
      Origin = 'Clie_NumEnd'
      Size = 5
    end
    object tbClienteClie_Bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Bairro'
      Origin = 'Clie_Bairro'
      Size = 30
    end
    object tbClienteClie_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Cidade'
      Origin = 'Clie_Cidade'
      Size = 30
    end
    object tbClienteClie_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_UF'
      Origin = 'Clie_UF'
      FixedChar = True
      Size = 2
    end
    object tbClienteClie_Pais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Pais'
      Origin = 'Clie_Pais'
      Size = 25
    end
    object tbClienteClie_Email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Email'
      Origin = 'Clie_Email'
      Size = 40
    end
    object tbClienteClie_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_CPF'
      Origin = 'Clie_CPF'
      EditMask = '000.000.000-00;0;_'
      FixedChar = True
      Size = 11
    end
    object tbClienteClie_Celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Celular'
      Origin = 'Clie_Celular'
      EditMask = '(99)\ 99999-9999;0;_'
      FixedChar = True
      Size = 11
    end
  end
  object DSCliente: TDataSource
    DataSet = tbCliente
    Left = 40
    Top = 192
  end
  object DSUsuario: TDataSource
    AutoEdit = False
    DataSet = Usuario
    Left = 104
    Top = 192
  end
  object Pet: TFDTable
    Active = True
    IndexFieldNames = 'Pet_Codigo'
    DetailFields = 'Pet_Codigo'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'PetShop.pet'
    TableName = 'PetShop.pet'
    Left = 168
    Top = 120
    object PetPet_Codigo: TIntegerField
      FieldName = 'Pet_Codigo'
      Origin = 'Pet_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PetPet_Nome: TStringField
      FieldName = 'Pet_Nome'
      Origin = 'Pet_Nome'
      Required = True
    end
    object PetPet_Apelido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Apelido'
      Origin = 'Pet_Apelido'
      Size = 10
    end
    object PetPet_Especie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Especie'
      Origin = 'Pet_Especie'
      Size = 15
    end
    object PetPet_Raca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Raca'
      Origin = 'Pet_Raca'
    end
    object PetPet_Admissao: TDateField
      FieldName = 'Pet_Admissao'
      Origin = 'Pet_Admissao'
      Required = True
    end
    object PetPet_Cor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Cor'
      Origin = 'Pet_Cor'
    end
    object PetPet_Sexo: TStringField
      FieldName = 'Pet_Sexo'
      Origin = 'Pet_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object PetPet_Porte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Porte'
      Origin = 'Pet_Porte'
      Size = 15
    end
    object PetPet_Pelagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pelagem'
      Origin = 'Pet_Pelagem'
    end
    object PetPet_Detalhes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Detalhes'
      Origin = 'Pet_Detalhes'
      BlobType = ftMemo
    end
    object PetPet_Alergia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Alergia'
      Origin = 'Pet_Alergia'
      FixedChar = True
      Size = 1
    end
    object PetPet_Deficiencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Deficiencia'
      Origin = 'Pet_Deficiencia'
      FixedChar = True
      Size = 1
    end
    object PetPet_Pedigree: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pedigree'
      Origin = 'Pet_Pedigree'
      FixedChar = True
      Size = 1
    end
    object PetPet_Foto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Foto'
      Origin = 'Pet_Foto'
      Size = 200
    end
    object PetPet_Peso: TSingleField
      FieldName = 'Pet_Peso'
      Origin = 'Pet_Peso'
      Required = True
    end
    object PetClie_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Clie_Nome'
      LookupDataSet = tbCliente
      LookupKeyFields = 'Clie_Codigo'
      LookupResultField = 'Clie_Nome'
      KeyFields = 'Clie_Codigo'
      Size = 30
      Lookup = True
    end
    object PetClie_CPF: TStringField
      FieldKind = fkLookup
      FieldName = 'Clie_CPF'
      LookupDataSet = tbCliente
      LookupKeyFields = 'Clie_Codigo'
      LookupResultField = 'Clie_CPF'
      KeyFields = 'Clie_Codigo'
      EditMask = '000.000.000-00;0;_'
      Lookup = True
    end
    object PetClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      Required = True
    end
    object PetPet_Vacina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Vacina'
      Origin = 'Pet_Vacina'
      Size = 50
    end
  end
  object DSPet: TDataSource
    DataSet = Pet
    Left = 168
    Top = 192
  end
  object QueryCliente: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select * from Cliente')
    Left = 40
    Top = 312
    object QueryClienteClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryClienteClie_Nome: TStringField
      FieldName = 'Clie_Nome'
      Origin = 'Clie_Nome'
      Required = True
      Size = 40
    end
    object QueryClienteClie_Admissao: TDateField
      FieldName = 'Clie_Admissao'
      Origin = 'Clie_Admissao'
      Required = True
    end
    object QueryClienteClie_Nascm: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nascm'
      Origin = 'Clie_Nascm'
    end
    object QueryClienteClie_Sexo: TStringField
      FieldName = 'Clie_Sexo'
      Origin = 'Clie_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryClienteClie_Endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Endereco'
      Origin = 'Clie_Endereco'
      Size = 40
    end
    object QueryClienteClie_NumEnd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_NumEnd'
      Origin = 'Clie_NumEnd'
      Size = 5
    end
    object QueryClienteClie_Bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Bairro'
      Origin = 'Clie_Bairro'
      Size = 30
    end
    object QueryClienteClie_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Cidade'
      Origin = 'Clie_Cidade'
      Size = 30
    end
    object QueryClienteClie_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_UF'
      Origin = 'Clie_UF'
      FixedChar = True
      Size = 2
    end
    object QueryClienteClie_Pais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Pais'
      Origin = 'Clie_Pais'
      Size = 25
    end
    object QueryClienteClie_Email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Email'
      Origin = 'Clie_Email'
      Size = 40
    end
    object QueryClienteClie_Celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Celular'
      Origin = 'Clie_Celular'
      FixedChar = True
      Size = 11
    end
    object QueryClienteClie_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_CPF'
      Origin = 'Clie_CPF'
      EditMask = '000.000.000-00;0;_'
      FixedChar = True
      Size = 11
    end
  end
  object QueryPet: TFDQuery
    IndexFieldNames = 'MAX(Pet_Codigo + 1)'
    DetailFields = 'MAX(Pet_Codigo + 1)'
    Connection = Conexao
    SQL.Strings = (
      'Select MAX(Pet_Codigo + 1) from Pet')
    Left = 168
    Top = 248
    object QueryPetMAXPet_Codigo1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'MAX(Pet_Codigo + 1)'
      Origin = '`MAX(Pet_Codigo + 1)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QueryCodigo: TFDQuery
    IndexFieldNames = 'MAX(Clie_Codigo + 1)'
    DetailFields = 'MAX(Clie_Codigo + 1)'
    Connection = Conexao
    SQL.Strings = (
      'Select MAX(Clie_codigo + 1) from Cliente')
    Left = 40
    Top = 248
  end
  object QueryGrid: TFDQuery
    MasterSource = DSCliente
    Connection = Conexao
    SQL.Strings = (
      'Select *, Cliente.Clie_Nome, Cliente.Clie_CPF'
      'FROM pet'
      'INNER Join Cliente '
      'ON Pet.Clie_Codigo = Cliente.Clie_Codigo ')
    Left = 240
    Top = 248
    object QueryGridPet_Codigo: TIntegerField
      FieldName = 'Pet_Codigo'
      Origin = 'Pet_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryGridPet_Nome: TStringField
      FieldName = 'Pet_Nome'
      Origin = 'Pet_Nome'
      Required = True
    end
    object QueryGridPet_Apelido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Apelido'
      Origin = 'Pet_Apelido'
      Size = 10
    end
    object QueryGridPet_Especie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Especie'
      Origin = 'Pet_Especie'
      Size = 15
    end
    object QueryGridPet_Raca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Raca'
      Origin = 'Pet_Raca'
    end
    object QueryGridPet_Admissao: TDateField
      FieldName = 'Pet_Admissao'
      Origin = 'Pet_Admissao'
      Required = True
    end
    object QueryGridPet_Cor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Cor'
      Origin = 'Pet_Cor'
    end
    object QueryGridPet_Sexo: TStringField
      FieldName = 'Pet_Sexo'
      Origin = 'Pet_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryGridPet_Porte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Porte'
      Origin = 'Pet_Porte'
      Size = 15
    end
    object QueryGridPet_Peso: TSingleField
      FieldName = 'Pet_Peso'
      Origin = 'Pet_Peso'
      Required = True
    end
    object QueryGridPet_Vacina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Vacina'
      Origin = 'Pet_Vacina'
      Size = 30
    end
    object QueryGridPet_Pelagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pelagem'
      Origin = 'Pet_Pelagem'
    end
    object QueryGridPet_Detalhes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Detalhes'
      Origin = 'Pet_Detalhes'
      BlobType = ftMemo
    end
    object QueryGridPet_Alergia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Alergia'
      Origin = 'Pet_Alergia'
      FixedChar = True
      Size = 1
    end
    object QueryGridPet_Deficiencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Deficiencia'
      Origin = 'Pet_Deficiencia'
      FixedChar = True
      Size = 1
    end
    object QueryGridPet_Pedigree: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pedigree'
      Origin = 'Pet_Pedigree'
      FixedChar = True
      Size = 1
    end
    object QueryGridPet_Foto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Foto'
      Origin = 'Pet_Foto'
      Size = 200
    end
    object QueryGridClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      Required = True
    end
    object QueryGridClie_Nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nome'
      KeyFields = 'Clie_Nome'
      Origin = 'Clie_Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryGridClie_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_CPF'
      Origin = 'Clie_CPF'
      ProviderFlags = []
      ReadOnly = True
      EditMask = '000.000.000-00;0;_'
      FixedChar = True
      Size = 11
    end
    object QueryGridClie_Admissao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Admissao'
      Origin = 'Clie_Admissao'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryGridClie_Celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Celular'
      Origin = 'Clie_Celular'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object QueryGridClie_Nascm: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nascm'
      Origin = 'Clie_Nascm'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryGridClie_Sexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Sexo'
      Origin = 'Clie_Sexo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QueryGridClie_Endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Endereco'
      Origin = 'Clie_Endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryGridClie_NumEnd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_NumEnd'
      Origin = 'Clie_NumEnd'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QueryGridClie_Bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Bairro'
      Origin = 'Clie_Bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryGridClie_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Cidade'
      Origin = 'Clie_Cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryGridClie_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_UF'
      Origin = 'Clie_UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QueryGridClie_Pais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Pais'
      Origin = 'Clie_Pais'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QueryGridClie_Email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Email'
      Origin = 'Clie_Email'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object dsGrid: TDataSource
    DataSet = QueryGrid
    Left = 240
    Top = 192
  end
  object QueryUser: TFDQuery
    Connection = Conexao
    Left = 104
    Top = 248
  end
  object Usuario: TFDTable
    IndexFieldNames = 'User_Cod'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'petshop.usuario'
    TableName = 'petshop.usuario'
    Left = 96
    Top = 120
    object UsuarioUser_Cod: TIntegerField
      FieldName = 'User_Cod'
      Origin = 'User_Cod'
      Required = True
    end
    object UsuarioUser_Name: TStringField
      FieldName = 'User_Name'
      Origin = 'User_Name'
      Required = True
      Size = 15
    end
    object UsuarioUser_Pass: TStringField
      FieldName = 'User_Pass'
      Origin = 'User_Pass'
      Required = True
      Size = 15
    end
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44065.241160509300000000
    ReportOptions.LastChange = 44065.750973113400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 184
    Datasets = <
      item
        DataSet = frxRelatorioPet
        DataSetName = 'frxRelatorioPet'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 9.239660000000000000
          Top = 34.015770000000000000
          Width = 699.213050000000000000
          Height = 34.015770000000000000
          Fill.BackColor = 10027007
          Fill.ForeColor = clRed
          Fill.Style = bsClear
          Frame.Color = 10218495
          Frame.Typ = []
          Frame.Width = 1.500000000000000000
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 9.239660000000000000
          Top = 34.015770000000000000
          Width = 699.213050000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 41.574830000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio PetShop')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Karev, PetShop.INC')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 1061.629600000000000000
          Top = 702.992580000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = frxRelatorioPet
        DataSetName = 'frxRelatorioPet'
        RowCount = 0
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 5.460130000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 35.696370000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 209.554750000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 236.011460000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 326.720180000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 424.987960000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxRelatorioPetPet_Codigo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Codigo'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Codigo"]')
        end
        object frxRelatorioPetPet_Nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Nome'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Nome"]')
        end
        object frxRelatorioPetPet_Sexo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Sexo'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Sexo"]')
          ParentFont = False
        end
        object frxRelatorioPetPet_Especie: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          DataField = 'Pet_Especie'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Especie"]')
          ParentFont = False
        end
        object frxRelatorioPetPet_Admissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Admissao'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Admissao"]')
        end
        object frxRelatorioPetPet_Raca: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Raca'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Raca"]')
          ParentFont = False
        end
        object frxRelatorioPetPet_Porte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'Pet_Porte'
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRelatorioPet."Pet_Porte"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Esp'#233'cie')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ra'#231'a')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxRelatorioPet
          DataSetName = 'frxRelatorioPet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Porte')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioCliente: TfrxDBDataset
    UserName = 'frxRelatorioCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Clie_Codigo=Clie_Codigo'
      'Clie_Nome=Clie_Nome'
      'Clie_Admissao=Clie_Admissao'
      'Clie_Nascm=Clie_Nascm'
      'Clie_Sexo=Clie_Sexo'
      'Clie_Endereco=Clie_Endereco'
      'Clie_NumEnd=Clie_NumEnd'
      'Clie_Bairro=Clie_Bairro'
      'Clie_Cidade=Clie_Cidade'
      'Clie_UF=Clie_UF'
      'Clie_Pais=Clie_Pais'
      'Clie_Email=Clie_Email'
      'Clie_Foto=Clie_Foto'
      'Clie_Celular=Clie_Celular'
      'Clie_CPF=Clie_CPF')
    DataSet = QueryCliente
    BCDToCurrency = False
    Left = 336
    Top = 320
  end
  object QueryRelatorio: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select *, Cliente.Clie_Nome, Cliente.Clie_CPF'
      'FROM pet'
      'INNER Join Cliente '
      'ON Pet.Clie_Codigo = Cliente.Clie_Codigo '
      'WHERE pet.Clie_Codigo')
    Left = 336
    Top = 424
    object QueryRelatorioPet_Codigo: TIntegerField
      FieldName = 'Pet_Codigo'
      Origin = 'Pet_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryRelatorioPet_Nome: TStringField
      FieldName = 'Pet_Nome'
      Origin = 'Pet_Nome'
      Required = True
    end
    object QueryRelatorioPet_Apelido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Apelido'
      Origin = 'Pet_Apelido'
      Size = 10
    end
    object QueryRelatorioPet_Especie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Especie'
      Origin = 'Pet_Especie'
      Size = 15
    end
    object QueryRelatorioPet_Raca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Raca'
      Origin = 'Pet_Raca'
    end
    object QueryRelatorioPet_Admissao: TDateField
      FieldName = 'Pet_Admissao'
      Origin = 'Pet_Admissao'
      Required = True
    end
    object QueryRelatorioPet_Cor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Cor'
      Origin = 'Pet_Cor'
    end
    object QueryRelatorioPet_Sexo: TStringField
      FieldName = 'Pet_Sexo'
      Origin = 'Pet_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryRelatorioPet_Porte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Porte'
      Origin = 'Pet_Porte'
      Size = 15
    end
    object QueryRelatorioPet_Peso: TSingleField
      FieldName = 'Pet_Peso'
      Origin = 'Pet_Peso'
      Required = True
    end
    object QueryRelatorioPet_Vacina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Vacina'
      Origin = 'Pet_Vacina'
      Size = 30
    end
    object QueryRelatorioPet_Pelagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pelagem'
      Origin = 'Pet_Pelagem'
    end
    object QueryRelatorioPet_Detalhes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Detalhes'
      Origin = 'Pet_Detalhes'
      BlobType = ftMemo
    end
    object QueryRelatorioPet_Alergia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Alergia'
      Origin = 'Pet_Alergia'
      FixedChar = True
      Size = 1
    end
    object QueryRelatorioPet_Deficiencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Deficiencia'
      Origin = 'Pet_Deficiencia'
      FixedChar = True
      Size = 1
    end
    object QueryRelatorioPet_Pedigree: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pedigree'
      Origin = 'Pet_Pedigree'
      FixedChar = True
      Size = 1
    end
    object QueryRelatorioPet_Foto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Foto'
      Origin = 'Pet_Foto'
      Size = 200
    end
    object QueryRelatorioClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      Required = True
    end
    object QueryRelatorioClie_Nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nome'
      Origin = 'Clie_Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryRelatorioClie_Admissao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Admissao'
      Origin = 'Clie_Admissao'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryRelatorioClie_Celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Celular'
      Origin = 'Clie_Celular'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object QueryRelatorioClie_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_CPF'
      Origin = 'Clie_CPF'
      ProviderFlags = []
      ReadOnly = True
      EditMask = '000.000.000-00;0;_'
      FixedChar = True
      Size = 11
    end
    object QueryRelatorioClie_Nascm: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Nascm'
      Origin = 'Clie_Nascm'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryRelatorioClie_Sexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Sexo'
      Origin = 'Clie_Sexo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QueryRelatorioClie_Endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Endereco'
      Origin = 'Clie_Endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryRelatorioClie_NumEnd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_NumEnd'
      Origin = 'Clie_NumEnd'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QueryRelatorioClie_Bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Bairro'
      Origin = 'Clie_Bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryRelatorioClie_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Cidade'
      Origin = 'Clie_Cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QueryRelatorioClie_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_UF'
      Origin = 'Clie_UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QueryRelatorioClie_Pais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Pais'
      Origin = 'Clie_Pais'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QueryRelatorioClie_Email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Email'
      Origin = 'Clie_Email'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QueryRelatorioClie_Foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Clie_Foto'
      Origin = 'Clie_Foto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxRelatorioPet: TfrxDBDataset
    UserName = 'frxRelatorioPet'
    CloseDataSource = False
    DataSet = QueryPetFields
    BCDToCurrency = False
    Left = 336
    Top = 376
  end
  object frxRelatorioAmbos: TfrxDBDataset
    UserName = 'frxRelatorioAmbos'
    CloseDataSource = False
    DataSet = QueryGrid
    BCDToCurrency = False
    Left = 336
    Top = 264
  end
  object QueryPetFields: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select *, Cliente.Clie_Nome, Cliente.Clie_CPF'
      'FROM pet'
      'INNER Join Cliente '
      'ON Pet.Clie_Codigo = Cliente.Clie_Codigo ')
    Left = 168
    Top = 312
    object QueryPetFieldsPet_Codigo: TIntegerField
      FieldName = 'Pet_Codigo'
      Origin = 'Pet_Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPetFieldsPet_Nome: TStringField
      FieldName = 'Pet_Nome'
      Origin = 'Pet_Nome'
      Required = True
    end
    object QueryPetFieldsPet_Apelido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Apelido'
      Origin = 'Pet_Apelido'
      Size = 10
    end
    object QueryPetFieldsPet_Especie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Especie'
      Origin = 'Pet_Especie'
      Size = 15
    end
    object QueryPetFieldsPet_Raca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Raca'
      Origin = 'Pet_Raca'
    end
    object QueryPetFieldsPet_Admissao: TDateField
      FieldName = 'Pet_Admissao'
      Origin = 'Pet_Admissao'
      Required = True
    end
    object QueryPetFieldsPet_Cor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Cor'
      Origin = 'Pet_Cor'
    end
    object QueryPetFieldsPet_Sexo: TStringField
      FieldName = 'Pet_Sexo'
      Origin = 'Pet_Sexo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryPetFieldsPet_Porte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Porte'
      Origin = 'Pet_Porte'
      Size = 15
    end
    object QueryPetFieldsPet_Peso: TSingleField
      FieldName = 'Pet_Peso'
      Origin = 'Pet_Peso'
      Required = True
    end
    object QueryPetFieldsPet_Pelagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pelagem'
      Origin = 'Pet_Pelagem'
    end
    object QueryPetFieldsPet_Detalhes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Detalhes'
      Origin = 'Pet_Detalhes'
      BlobType = ftMemo
    end
    object QueryPetFieldsPet_Alergia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Alergia'
      Origin = 'Pet_Alergia'
      FixedChar = True
      Size = 1
    end
    object QueryPetFieldsPet_Deficiencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Deficiencia'
      Origin = 'Pet_Deficiencia'
      FixedChar = True
      Size = 1
    end
    object QueryPetFieldsPet_Pedigree: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Pedigree'
      Origin = 'Pet_Pedigree'
      FixedChar = True
      Size = 1
    end
    object QueryPetFieldsPet_Foto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Foto'
      Origin = 'Pet_Foto'
      Size = 200
    end
    object QueryPetFieldsClie_Codigo: TIntegerField
      FieldName = 'Clie_Codigo'
      Origin = 'Clie_Codigo'
      Required = True
    end
    object QueryPetFieldsPet_Vacina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pet_Vacina'
      Origin = 'Pet_Vacina'
      Size = 50
    end
  end
  object frxPDFExport: TfrxPDFExport
    FileName = 'RelatorioCliente.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44065.750994849540000000
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 408
    Top = 376
  end
end
