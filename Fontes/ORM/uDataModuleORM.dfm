object dmORM: TdmORM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object conORM: TFDConnection
    Left = 21
    Top = 28
  end
  object tranORM: TFDTransaction
    Connection = conORM
    Left = 76
    Top = 35
  end
end
