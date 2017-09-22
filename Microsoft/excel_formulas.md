## Excel Formulas

## Pull in Asset Tags

`=IF(ISERROR(MATCH(#REF!,[Asset Tag],0)),"ERROR",
INDEX(ASMDump[Owner],MATCH(#REF!,ASMDump[Asset Tag],0)))`

## Get Owner

`=IF(ISERROR(MATCH(#REF!,ASMDump[Asset Tag],0)),"ERROR",INDEX(ASMDump[Owner],MATCH(#REF!,ASMDump[Asset Tag],0)))`

## Finding Unique Values

1. Select the range of cells, or make sure the active cell is in a table. Make sure the range of cells has a column heading.
2. On the Data tab, in the Sort & Filter group, click Advanced. The Advanced Filter dialog box appears.
3. Click Copy to another location.
4. In the Copy to box, enter a cell reference.

    Alternatively, click Collapse **Dialog** to temporarily hide the dialog box, select a cell on the worksheet, and then press **Expand Dialog**.

5. Select the Unique records only check box, and click OK.

    The unique values from the selected range are copied to the new location beginning with the cell you specified in the Copy to box.

6. In the blank cell below the last cell in the range, enter the

    ROWS function. Use the range of unique values that you just copied as the argument, excluding the column heading. For example, if the range of unique values is B2:B45, you enter =ROWS(B2:B45).
