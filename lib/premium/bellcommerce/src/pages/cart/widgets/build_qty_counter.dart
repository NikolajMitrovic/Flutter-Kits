part of '../cart_page.dart';

class _BuildQtyCounter extends StatefulWidget {
  const _BuildQtyCounter({Key? key}) : super(key: key);

  @override
  State<_BuildQtyCounter> createState() => _BuildQtyCounterState();
}

class _BuildQtyCounterState extends State<_BuildQtyCounter> {
  int _currentQty = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 3),
          GestureDetector(
            onTap: () {
              if (_currentQty != 1) {
                setState(() {
                  _currentQty--;
                });
              }
            },
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 3),
          CircleAvatar(
            radius: 15,
            backgroundColor : Theme.of(context).backgroundColor ,
            child: Text(
              _currentQty.toString(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(width: 3),
          GestureDetector(
            onTap: () {
              setState(() {
                _currentQty++;
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}
