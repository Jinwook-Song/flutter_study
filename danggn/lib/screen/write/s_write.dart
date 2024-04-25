import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> with KeyboardDetector {
  final List<String> _imageList = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '내 물건 팔기'.text.bold.make(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 150),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ImageSelectWidget(_imageList, onTap: () {}),
              _TitleEditor(_titleController),
              const Gap(30),
              _PriceEditor(_priceController),
              const Gap(30),
              _DescEditor(_descriptionController),
            ],
          ),
        ),
      ),
      bottomSheet: isKeyboardOn
          ? null
          : RoundButton(
              text: '작성 완료',
              onTap: () {},
              isFullWidth: true,
              borderRadius: 8,
            ),
    );
  }
}

class _ImageSelectWidget extends StatelessWidget {
  const _ImageSelectWidget(this.imageList, {required this.onTap});

  final List<String> imageList;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.camera),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: imageList.length.toString(),
                            style: const TextStyle(color: Colors.orange),
                          ),
                          const TextSpan(text: '/10'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleEditor extends StatelessWidget {
  const _TitleEditor(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: '제목',
            labelText: '제목',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}

class _PriceEditor extends StatefulWidget {
  const _PriceEditor(this.controller);

  final TextEditingController controller;

  @override
  State<_PriceEditor> createState() => _PriceEditorState();
}

class _PriceEditorState extends State<_PriceEditor> {
  final priceNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '거래 방식'.text.bold.make(),
        const Gap(5),
        Row(
          children: [
            TextButton(
              child: '판매하기'.text.make(),
              onPressed: () {
                widget.controller.clear();
                AppKeyboardUtil.show(context, priceNode);
              },
            ),
            const Gap(5),
            TextButton(
              child: '무료나눔'.text.make(),
              onPressed: () {},
            ),
          ],
        ),
        TextField(
          controller: widget.controller,
          focusNode: primaryFocus,
          decoration: const InputDecoration(
            hintText: '가격',
            labelText: '가격',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}

class _DescEditor extends StatelessWidget {
  const _DescEditor(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '자세한 설명'.text.bold.make(),
        const Gap(5),
        TextField(
          controller: controller,
          maxLines: 7,
          decoration: const InputDecoration(
            hintText: '제목',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}
