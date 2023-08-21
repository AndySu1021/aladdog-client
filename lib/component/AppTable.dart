import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AppColumn {
  final String prop;
  final String label;
  final Function? formatter;
  final bool visible;
  const AppColumn(
      {required this.prop,
      required this.label,
      this.formatter,
      this.visible = true});
}

class AppDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];
  Map formatterMap = {};

  AppDataSource({required List<AppColumn> columns, required List<Map> rows}) {
    for (var i = 0; i < columns.length; i++) {
      formatterMap[columns[i].prop] = columns[i].formatter;
    }

    List<DataGridCell> tmp = [];
    for (var i = 0; i < rows.length; i++) {
      rows[i].forEach((key, value) {
        tmp.add(DataGridCell(columnName: key, value: value));
      });
      dataGridRows.add(DataGridRow(cells: tmp));
      tmp = [];
    }
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: formatterMap[dataGridCell.columnName] == null
              ? Text(
                  dataGridCell.value.toString(),
                  overflow: TextOverflow.ellipsis,
                )
              : formatterMap[dataGridCell.columnName](dataGridCell.value));
    }).toList());
  }

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    // 呼叫 api
    notifyListeners();

    return true;
  }
}

class AppTable extends StatefulWidget {
  final List<AppColumn> columns;
  final List<Map> rows;
  final int total;
  final Function? onCellTap;
  const AppTable(
      {super.key,
      required this.columns,
      this.rows = const [],
      this.total = 0,
      this.onCellTap});

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  late AppDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = AppDataSource(columns: widget.columns, rows: widget.rows);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 8,
            child: SfDataGridTheme(
                data: SfDataGridThemeData(
                    headerColor: const Color.fromRGBO(245, 245, 245, 1)),
                child: SfDataGrid(
                  onCellTap: (details) {
                    if (widget.onCellTap != null) {
                      widget.onCellTap!(details.rowColumnIndex.rowIndex - 1,
                          details.rowColumnIndex.columnIndex);
                    }
                  },
                  rowsPerPage: 10,
                  columnWidthMode: ColumnWidthMode.fill,
                  source: _dataSource,
                  columns: widget.columns
                      .map(
                        (item) => GridColumn(
                            visible: item.visible,
                            columnName: item.prop,
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  item.label,
                                  overflow: TextOverflow.ellipsis,
                                ))),
                      )
                      .toList(),
                ))),
        const SizedBox(
          height: 16,
        ),
        Expanded(
            flex: 1,
            child: SfDataPager(
              pageCount: widget.total / 10,
              delegate: _dataSource,
              direction: Axis.horizontal,
              visibleItemsCount: 10,
            )),
      ],
    );
  }
}
