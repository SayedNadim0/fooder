import '../home.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String _selectedValue = "Jl . Jayakatwang no 301";

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _data = Provider.of<Data>(context, listen: false);
    var _appBarTitle = Provider.of<Data>(context, listen: false).appBarTitle;
    List<String> _dropDownItems =
        Provider.of<Data>(context, listen: false).dropDownItems;

    List<DropdownMenuItem<String>> _dropDownMenuItems =
        _dropDownItems.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: CustomColors.paragraphTextColor),
          ),
        ),
      );
    }).toList();
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0).r,
          color: Color(0xFFF8E8E5),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                _selectedValue = newValue!;
              });
            },
            icon: Icon(
              Icons.arrow_drop_down,
              color: CustomColors.orangeColor,
            ),
            items: _dropDownMenuItems,
          ),
        ),
      ),
    );
  }
}
