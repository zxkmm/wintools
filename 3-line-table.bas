Attribute VB_Name = "ThreeLineTable"
Sub ThreeLineTable()
Rem word_three_line_table
    Dim aTable As Table
    Application.ScreenUpdating = False
    'framework
    With ActiveDocument.Styles("简明型 1").Table.Borders
        .OutsideLineStyle = False
        .InsideLineStyle = False
    End With
    With ActiveDocument.Styles("简明型 1").Table.Borders(wdBorderBottom)
        .LineStyle = wdLineStyleSingle
        .LineWidth = wdLineWidth150pt
    End With
    'title
    With ActiveDocument.Styles("简明型 1").Table.Condition(wdFirstRow)
        With .Borders(wdBorderTop)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth150pt
        End With
        With .Borders(wdBorderBottom)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth050pt
            .Color = wdColorAutomatic
        End With
    End With
    'summary line
    With ActiveDocument.Styles("简明型 1").Table.Condition(wdLastRow).Borders(wdBorderBottom)
        .LineStyle = wdLineStyleSingle
        .LineWidth = wdLineWidth050pt
    End With
    For Each aTable In ActiveDocument.Tables
        aTable.Style = "简明型 1"
    Next
   Application.ScreenUpdating = True
End Sub
