import 'package:flutter/material.dart';
import 'number_mixin.dart';

class ShowNumberExample extends StatefulWidget with NumberMixin {
  ShowNumberExample({Key? key}) : super(key: key);

  @override
  State<ShowNumberExample> createState() => _ShowNumberExampleState();
}

class _ShowNumberExampleState extends State<ShowNumberExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers app')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Counts: ${widget.getCounts() ?? 0}')),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => setState(
                      () => widget.addToTextList('${widget.getCounts() ?? 0}')),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                  ),
                  child: const Text('Add to list'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() {
                    widget.clearTextList();
                    widget.setCount(0);
                  }),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                  ),
                  child: const Text('Clear list'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() {
                    widget.incrementCounts();
                    assert(widget.getCounts() != null);
                  }),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                  ),
                  child: const Text('Increment counts'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.getTextList().length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(widget.getTextList()[index])),
            ),
          ),
        ],
      ),
    );
  }
}
