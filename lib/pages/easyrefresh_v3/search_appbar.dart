import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({Key? key, required this.hintLabel}) : super(key: key);

  final String hintLabel;

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late FocusNode _focusNode;

  ///默认不展示控件

  bool _offstage = true;

  ///监听TextField内容变化
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _textEditingController.addListener(() {
      var isVisible = _textEditingController.text.isNotEmpty;
      _updateDelIconVisible(isVisible);
    });
  }

  _updateDelIconVisible(bool isVisible) {
    setState(() {
      _offstage = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                  color: Colors.white24,
                  border: Border.all(
                      color: const Color.fromARGB(255, 193, 43, 36),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: double.infinity,
                      child: TextField(
                        controller: _textEditingController,
                        autofocus: true,
                        focusNode: _focusNode,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                        decoration: InputDecoration(
                          hintText: widget.hintLabel,
                          contentPadding: const EdgeInsets.only(bottom: 12),
                          focusedBorder: InputBorder.none,
                        ),
                        maxLines: 1,
                        minLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Offstage(
                    offstage: _offstage,
                    child: GestureDetector(
                      onTap: () => {_textEditingController.clear()},
                      child: const Icon(
                        Icons.close,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }
}
