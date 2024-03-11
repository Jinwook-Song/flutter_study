import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/widget/scaffold/bottom_dialog_scaffold.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/write/vo_write_todo_result.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nav/dialog/dialog.dart';

class WriteTodoDialog extends DialogWidget<WriteTodoResults> {
  WriteTodoDialog({super.key});

  @override
  DialogState<WriteTodoDialog> createState() => _WriteTodoDialogState();
}

class _WriteTodoDialogState extends DialogState<WriteTodoDialog> {
  DateTime _selectedDate = DateTime.now();
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();

  Future<void> _selectDate() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime.now().subtract(365.days),
      lastDate: DateTime.now().add(365.days),
    );
    if (date != null) {
      _selectedDate = date;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomDialogScaffold(
      body: RoundedContainer(
        Column(
          children: [
            Row(
              children: [
                '할일을 작성해주세요.'.text.size(18).bold.make(),
                const Spacer(),
                _selectedDate.formattedDate.text.make(),
                IconButton(
                  onPressed: _selectDate,
                  icon: const Icon(Icons.calendar_month),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    autofocus: true,
                  ),
                ),
                RoundButton(
                  text: '추가',
                  onTap: () {
                    widget.hide(
                      WriteTodoResults(
                        dateTime: _selectedDate,
                        text: _controller.text,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        color: context.backgroundColor,
      ),
    );
  }
}
